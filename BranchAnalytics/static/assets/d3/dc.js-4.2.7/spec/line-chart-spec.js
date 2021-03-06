/* global appendChartID, loadDateFixture, makeDate */
describe('dc.lineChart', () => {
    let id, chart, data;
    let dimension, group;

    beforeEach(() => {
        data = crossfilter(loadDateFixture());
        dimension = data.dimension(d => d3.utcDay(d.dd));
        group = dimension.group();

        id = 'line-chart';
        appendChartID(id);

        chart = new dc.LineChart(`#${id}`);
        chart.dimension(dimension).group(group)
            .width(1100).height(200)
            .x(d3.scaleUtc().domain([makeDate(2012, 1, 1), makeDate(2012, 11, 31)]))
            .transitionDuration(0);
    });

    describe('rendering', () => {
        beforeEach(() => {
            chart.render();
        });

        describe('with a specified dash style', () => {
            beforeEach(() => {
                chart.dashStyle([3, 1, 1, 1]).render();
            });

            it('should be dash-dot-dot-dot to match the specified style', () => {
                expect(chart.selectAll('path.line').attr('stroke-dasharray')).toEqualIntOrPixelList('3,1,1,1');
            });
        });

        describe('render data markers', () => {
            beforeEach(() => {
                chart.dotRadius(5)
                    .brushOn(false)
                    .renderDataPoints({}).render();

            });

            it('should use default options', () => {
                chart.selectAll('circle.dot').each(function () {
                    const dot = d3.select(this);
                    expect(dot.style('fill-opacity')).toBeWithinDelta(0.8);
                    expect(dot.style('stroke-opacity')).toBeWithinDelta(0.0);
                    expect(dot.attr('r')).toBe('2');
                });
            });

            it('should use supplied options', () => {
                chart.renderDataPoints({radius: 3, fillOpacity: 1, strokeOpacity: 1})
                    .render();
                chart.selectAll('circle.dot').each(function () {
                    const dot = d3.select(this);
                    expect(dot.style('fill-opacity')).toBe('1');
                    expect(dot.style('stroke-opacity')).toBe('1');
                    expect(dot.attr('r')).toBe('3');
                });
            });

            it('should change the radius on mousemove', () => {
                chart.selectAll('circle.dot').each(function () {
                    const dot = d3.select(this);
                    dc.d3compat.callHandler(dot.on('mousemove'), this, {});
                    expect(dot.attr('r')).toBe('5');
                });
            });

            it('should revert to original radius on mouseout', () => {
                chart.selectAll('circle.dot').each(function () {
                    const dot = d3.select(this);
                    dc.d3compat.callHandler(dot.on('mousemove'), this, {});
                    dc.d3compat.callHandler(dot.on('mouseout'), this, {});
                    expect(dot.attr('r')).toBe('2');
                });
            });

            describe('hiding all data markers', () => {
                beforeEach(() => {
                    chart.renderDataPoints(false).render();
                });

                it('should not change the default opacity and radius', () => {
                    chart.selectAll('circle.dot').each(function () {
                        expect(d3.select(this).style('fill-opacity')).toBeWithinDelta(1e-6);
                        expect(d3.select(this).style('stroke-opacity')).toBeWithinDelta(1e-6);
                    });
                });

                it('should not change showing the data point on mousemove', () => {
                    chart.selectAll('circle.dot').each(function () {
                        const dot = d3.select(this);
                        dc.d3compat.callHandler(dot.on('mousemove'), this, {});
                        expect(dot.style('fill-opacity')).toBeWithinDelta(0.8);
                        expect(dot.style('stroke-opacity')).toBeWithinDelta(0.8);
                    });
                });

                it('should not change returning to extremely low opacity on hover out', () => {
                    chart.selectAll('circle.dot').each(function () {
                        const dot = d3.select(this);
                        dc.d3compat.callHandler(dot.on('mousemove'), this, {});
                        dc.d3compat.callHandler(dot.on('mouseout'), this, {});
                        expect(dot.style('fill-opacity')).toBeWithinDelta(1e-6);
                        expect(dot.style('stroke-opacity')).toBeWithinDelta(1e-6);
                    });
                });
            });
        });

        describe('title rendering', () => {
            beforeEach(() => {
                chart.renderTitle(false);
                chart.render();
            });

            it('should not render dots and tips when boolean flag is false', () => {
                expect(chart.select('.dc-tooltip._0 .dot').empty()).toBeTruthy();
                expect(chart.select('.dc-tooltip._0 .dot title').empty()).toBeTruthy();
            });

        });

        describe('title rendering with brushOn', () => {
            beforeEach(() => {
                chart.brushOn(true)
                    .xyTipsOn(true); // default, for exposition
                chart.render();
            });

            it('should not render tips', () => {
                expect(chart.select('.dc-tooltip._0 .dot').empty()).toBeTruthy();
                expect(chart.select('.dc-tooltip._0 .dot title').empty()).toBeTruthy();
            });

            describe('with xyTipsOn always', () => {
                beforeEach(() => {
                    chart.brushOn(true)
                        .xyTipsOn('always');
                    chart.render();
                });

                it('should render dots', () => {
                    expect(chart.select('.dc-tooltip._0 .dot').empty()).toBeFalsy();
                    expect(chart.select('.dc-tooltip._0 .dot title').empty()).toBeFalsy();
                });
            });
        });

        describe('label rendering off', () => {
            beforeEach(() => {
                chart.renderLabel(false);
                chart.render();
            });

            it('should produce no labels', () => {
                expect(chart.selectAll('.lineLabel').empty()).toBeTruthy();
            });
        });

        describe('label rendering', () => {
            beforeEach(() => {
                chart.renderLabel(true);
                chart.render();
            });

            it('should generate a label for each datum', lineLabelCount);
            it('should generate labels with positions corresponding to their data', lineLabelPositions);
        });

        describe('data point highlights and refs off', () => {
            beforeEach(() => {
                chart.title(d => d.value);
                chart.brushOn(false).xyTipsOn(false).render();
            });
            it('should not generate per data points', () => {
                expect(chart.selectAll('circle.dot').size()).toBe(0);
            });
            it('should not generate x and y refs', () => {
                expect(chart.selectAll('path.xRef').size()).toBe(0);
                expect(chart.selectAll('path.yRef').size()).toBe(0);
            });
        });

        describe('data point highlights', () => {
            beforeEach(() => {
                chart.title(d => d.value);
                chart.brushOn(false).dotRadius(10).render();
            });
            it('should not generate a chart brush', () => {
                expect(chart.selectAll('g.brush').empty()).toBeTruthy();
            });

            it('should be generated per data point', () => {
                expect(chart.selectAll('circle.dot').size()).toBe(6);
            });

            it('should have configurable radius', () => {
                chart.selectAll('circle.dot').each(function () {
                    expect(d3.select(this).attr('r')).toBe('10');
                });
            });

            it('should be have extremely low opacity by default', () => {
                chart.selectAll('circle.dot').each(function () {
                    expect(d3.select(this).style('fill-opacity')).toBeWithinDelta(1e-6);
                    expect(d3.select(this).style('stroke-opacity')).toBeWithinDelta(1e-6);
                });
            });

            it('should become visible when hovered over', () => {
                chart.selectAll('circle.dot').each(function () {
                    const dot = d3.select(this);
                    dc.d3compat.callHandler(dot.on('mousemove'), this, {});
                    expect(dot.style('fill-opacity')).toBeWithinDelta(0.8);
                    expect(dot.style('stroke-opacity')).toBeWithinDelta(0.8);
                });
            });

            it('should return to extremely low opacity on hover out', () => {
                chart.selectAll('circle.dot').each(function () {
                    const dot = d3.select(this);
                    dc.d3compat.callHandler(dot.on('mousemove'), this, {});
                    dc.d3compat.callHandler(dot.on('mouseout'), this, {});
                    expect(dot.style('fill-opacity')).toBeWithinDelta(1e-6);
                    expect(dot.style('stroke-opacity')).toBeWithinDelta(1e-6);
                });
            });

            it('should render titles on to each circle', () => {
                chart.selectAll('g._0 circle.dot').each(function (d) {
                    expect(+d3.select(this).select('title').text()).toBe(d.data.value);
                });
            });

            describe('ref lines', () => {
                it('should generate lines that are hidden by default', () => {
                    expect(chart.select('path.xRef').style('display')).toBe('none');
                    expect(chart.select('path.yRef').style('display')).toBe('none');
                });

                it('should have a stroke dash', () => {
                    expect(chart.selectAll('path.xRef').attr('stroke-dasharray')).toEqualIntOrPixelList('5,5');
                    expect(chart.selectAll('path.yRef').attr('stroke-dasharray')).toEqualIntOrPixelList('5,5');
                });

                describe('when dot is hovered over', () => {
                    describe('for vertical ref lines', () => {
                        let x;
                        beforeEach(() => {
                            const dot = chart.select('circle.dot');
                            dc.d3compat.callHandler(dot.on('mousemove'), dot.nodes()[0], {});
                            x = dot.attr('cx');
                        });

                        it('shows the ref line from the bottom of the graph', () => {
                            const path = `M${x} 160 L ${x} 107`;
                            expect(chart.select('path.xRef').attr('d')).toMatchPath(path);
                            expect(chart.select('path.xRef').attr('display')).not.toBe('none');
                        });
                    });

                    describe('for horizontal ref lines', () => {
                        describe('for a left y-axis chart', () => {
                            let x;
                            beforeEach(() => {
                                const dot = chart.select('circle.dot');
                                dc.d3compat.callHandler(dot.on('mousemove'), dot.nodes()[0], {});
                                x = dot.attr('cx');
                            });

                            it('shows the ref line on the left', () => {
                                const path = `M0 107 L ${x} 107`;
                                expect(chart.select('path.yRef').attr('d')).toMatchPath(path);
                                expect(chart.select('path.yRef').attr('display')).not.toBe('none');
                            });
                        });

                        describe('for a right y-axis chart', () => {
                            let x;
                            beforeEach(() => {
                                chart.useRightYAxis(true).render();
                                const dot = chart.select('circle.dot');
                                dc.d3compat.callHandler(dot.on('mousemove'), dot.nodes()[0], {});
                                x = dot.attr('cx');
                            });

                            it('shows the ref line on the right', () => {
                                const path = `M1020 107L${x} 107`;
                                expect(chart.select('path.yRef').attr('d')).toMatchPath(path); //"M1020 107L405 107");
                                expect(chart.select('path.yRef').attr('display')).not.toBe('none');
                            });
                        });
                    });
                });
            });
        });

        describe('undefined points', () => {
            beforeEach(() => {
                chart.defined(d => d.x.valueOf() !== makeDate(2012, 5, 10).getTime());
                chart.brushOn(false).render();
            });

            it('should not show line where not defined', () => {
                expect(chart.select('path.line').attr('d').indexOf('M', 1)).not.toBe(-1);
            });

            it('should not draw dots on undefined points', () => {
                expect(chart.selectAll('.dot').size()).toBe(5);
            });
        });

        describe('with chart area enabled', () => {
            beforeEach(() => {
                chart.renderArea(true).render();
            });

            it('should draw the chart line', () => {
                expect(chart.select('path.line').attr('d')).toMatchPath('M348,107 L390,107 L397,0 L461,107 L488,53 L583,53');
            });

            it('should draw the chart area', () => {
                expect(chart.select('path.area').attr('d')).toMatchPath('M348,107 L390,107 L397,0 L461,107 L488,53 L583,' +
                    '53 L583,160 L488,160 L461,160 L397,160 L390,160 L348,160Z');
            });
        });

        describe('with an ordinal x domain', () => {
            beforeEach(() => {
                const stateDimension = data.dimension(d => d.state);
                const stateGroup = stateDimension.group();

                chart.dimension(stateDimension)
                    .group(stateGroup)
                    .xUnits(dc.units.ordinal)
                    .x(d3.scaleBand().domain(['California', 'Colorado', 'Delaware', 'Mississippi', 'Oklahoma', 'Ontario']))
                    .render();
            });

            it('should automatically disable the brush', () => {
                expect(chart.brushOn()).toBeFalsy();
            });

            it('should generate an ordinal path', () => {
                expect(chart.select('path.line').attr('d')).toMatchPath('M85,0L255,107L425,107L595,53L765,107L935,53');
            });
        });

        describe('with stacked data', () => {
            describe('with positive data', () => {
                beforeEach(() => {
                    const idGroup = dimension.group().reduceSum(d => d.id);
                    const valueGroup = dimension.group().reduceSum(d => d.value);

                    chart.dimension(dimension)
                        .brushOn(false)
                        .x(d3.scaleUtc().domain([makeDate(2012, 4, 20), makeDate(2012, 7, 15)]))
                        .group(idGroup, 'stack 0')
                        .title('stack 0', d => `stack 0: ${d.value}`)
                        .stack(valueGroup, 'stack 1')
                        .title('stack 1', d => `stack 1: ${d.value}`)
                        .stack(valueGroup, 'stack 2')
                        .elasticY(true)
                        .render();
                });

                it('should render the correct number of lines', () => {
                    expect(chart.selectAll('path.line').size()).toBe(3);
                });

                it('should set the path for stack 0 line', () => {
                    expect(chart.select('g._0 path.line').attr('d')).toMatchPath('M58 159L222 157L246 150L492 158L597 151L961 153');
                });

                it('should set the path for stack 1 line', () => {
                    expect(chart.select('g._1 path.line').attr('d')).toMatchPath('M58 134L222 119L246 75L492 133L597 120L961 109');
                });

                it('should set the path for stack 2 line', () => {
                    expect(chart.select('g._2 path.line').attr('d')).toMatchPath('M58 109L222 81L246 0L492 108L597 89L961 65');
                });

                it('should have its own title accessor', () => {
                    expect(chart.title()({value: 1})).toBe('stack 0: 1');
                    expect(chart.title('stack 0')({value: 2})).toBe('stack 0: 2');
                    expect(chart.title('stack 1')({value: 3})).toBe('stack 1: 3');
                });

                it('should have titles rendered for extra stacks', () => {
                    chart.selectAll('g._1 circle.dot').each(function (d) {
                        expect(d3.select(this).select('title').text()).toBe(`stack 1: ${d.data.value}`);
                    });
                });

                it('should default to first stack title for untitled stacks', () => {
                    chart.selectAll('g._2 circle.dot').each(function (d) {
                        expect(d3.select(this).select('title').text()).toBe(`stack 0: ${d.data.value}`);
                    });
                });

                describe('with chart area enabled', () => {
                    beforeEach(() => {
                        chart.renderArea(true).render();
                    });

                    it('should render the correct number of areas', () => {
                        expect(chart.selectAll('path.area').size()).toBe(3);
                    });

                    it('should set the area for stack 0', () => {
                        expect(chart.select('g._0 path.area').attr('d')).toMatchPath('M58 159L222 157L246 150L492 158L597 ' +
                            '151L961 153L961 160L597 160L492 160L246 160L222 160L58 160Z');
                    });

                    it('should set the area for stack 1', () => {
                        expect(chart.select('g._1 path.area').attr('d')).toMatchPath('M58 134L222 119L246 75L492 133L597 ' +
                            '120L961 109L961 153L597 151L492 158L246 150L222 157L58 159Z');
                    });

                    it('should set the area for stack 2', () => {
                        expect(chart.select('g._2 path.area').attr('d')).toMatchPath('M58 109L222 81L246 0L492 108L597 89L961 ' +
                            '65L961 109L597 120L492 133L246 75L222 119L58 134Z');
                    });

                    it('should draw tooltip dots on top of paths and areas', () => {
                        const list = chart.selectAll('circle.dot, path.line, path.area');

                        const indexOfLastLine = list.nodes().indexOf(list.filter('path.line').nodes()[2]);
                        const indexOfLastArea = list.nodes().indexOf(list.filter('path.area').nodes()[2]);
                        const indexOfDot = list.nodes().indexOf(list.filter('circle.dot').nodes()[0]);

                        expect(indexOfDot).toBeGreaterThan(indexOfLastArea);
                        expect(indexOfDot).toBeGreaterThan(indexOfLastLine);
                    });

                    it('should draw tooltip ref lines on top of paths', () => {
                        const list = chart.selectAll('path.yRef, path.xRef, path.line, path.area');

                        const indexOfLastLine = list.nodes().indexOf(list.filter('path.line').nodes()[2]);
                        const indexOfLastArea = list.nodes().indexOf(list.filter('path.area').nodes()[2]);

                        const indexOfFirstYRef = list.nodes().indexOf(list.filter('path.yRef').nodes()[0]);
                        const indexOfFirstXRef = list.nodes().indexOf(list.filter('path.xRef').nodes()[0]);

                        expect(indexOfLastLine).toBeLessThan(indexOfFirstXRef);
                        expect(indexOfLastLine).toBeLessThan(indexOfFirstYRef);

                        expect(indexOfLastArea).toBeLessThan(indexOfFirstXRef);
                        expect(indexOfLastArea).toBeLessThan(indexOfFirstYRef);
                    });

                });

                describe('stack hiding', () => {
                    describe('first stack', () => {
                        beforeEach(() => {
                            chart.hideStack('stack 0').render();
                        });

                        it('should hide the stack', () => {
                            expect(chart.select('g._0 path.line').attr('d')).toMatchPath('M58 133L222 120L246 80L492 133L597 127L961 113');
                        });

                        it('should show the stack', () => {
                            chart.showStack('stack 0').render();
                            expect(chart.select('g._0 path.line').attr('d')).toMatchPath('M58 159L222 157L246 150L492 158L597 151L961 153');
                        });
                    });

                    describe('any other stack', () => {
                        beforeEach(() => {
                            chart.title('stack 2', d => `stack 2: ${d.value}`);
                            chart.hideStack('stack 1').render();
                        });

                        it('should hide the stack', () => {
                            expect(chart.select('g._1 path.line').attr('d')).toMatchPath('M58 112L222 83L246 0L492 108L597 85L961 64');
                        });

                        it('should show the stack', () => {
                            chart.showStack('stack 1').render();
                            expect(chart.select('g._1 path.line').attr('d')).toMatchPath('M58 134L222 119L246 75L492 133L597 120L961 109');
                        });

                        it('should color chart dots the same as line paths', () => {
                            const lineColor = chart.select('g._1 path.line').attr('stroke');
                            const circleColor = chart.select('g._1 circle.dot').attr('fill');
                            expect(lineColor).toEqual(circleColor);
                        });

                        it('should still show the title for a visible stack', () => {
                            chart.selectAll('g._1 circle.dot').each(function (d) {
                                expect(d3.select(this).select('title').text()).toBe(`stack 2: ${d.data.value}`);
                            });
                        });
                    });

                    describe('hiding all the stacks', () => {
                        beforeEach(() => {
                            chart.hideStack('stack 0')
                                .hideStack('stack 1')
                                .hideStack('stack 2')
                                .render();
                        });

                        it('should show a blank graph', () => {
                            expect(chart.selectAll('path.line').size()).toBe(0);
                        });
                    });
                });

                describe('label rendering', () => {
                    beforeEach(() => {
                        chart.renderLabel(true);
                        chart.render();
                    });

                    it('should generate a label for each datum', lineLabelCount);
                    it('should generate labels with positions corresponding to their data', lineLabelPositions);
                });
            });

            describe('with mixed positive and negative data', () => {
                beforeEach(() => {
                    const mixedGroup = dimension.group().reduceSum(d => d.nvalue);

                    chart.group(mixedGroup).stack(mixedGroup).stack(mixedGroup);
                    chart.x(d3.scaleUtc().domain([makeDate(2012, 4, 20), makeDate(2012, 7, 15)]));

                    chart.margins({top: 30, right: 50, bottom: 30, left: 30})
                        .renderArea(true)
                        .yAxisPadding(5)
                        .elasticY(true)
                        .yAxis().ticks(5);

                    chart.render();
                });

                it('should generate a line and area for each stack', () => {
                    expect(chart.selectAll('path.line').size()).toBe(3);
                    expect(chart.selectAll('path.area').size()).toBe(3);
                });

                it('should generate negative lines and area for stack 0', () => {
                    expect(chart.select('g._0 path.line').attr('d')).toMatchPath('M58 81L222 81L246 92L492 79L597 52L961 67');
                    expect(chart.select('g._0 path.area').attr('d')).toMatchPath('M58 81L222 81L246 92L492 79L597 52L961 ' +
                        '67L961 73L597 73L492 73L246 73L222 73L58 73Z');
                });

                it('should generate negative lines and area for stack 1', () => {
                    expect(chart.select('g._1 path.line').attr('d')).toMatchPath('M58 88L222 88L246 111L492 84L597 31L961 61');
                    expect(chart.select('g._1 path.area').attr('d')).toMatchPath('M58 88L222 88L246 111L492 84L597 31L961 ' +
                        '61L961 67L597 52L492 79L246 92L222 81L58 81Z');
                });

                it('should generate y axis domain dynamically', () => {
                    const nthText = function (n) {
                        return d3.select(chart.selectAll('g.axis.y .tick text').nodes()[n]);
                    };

                    expect(nthText(0).text()).toMatch(/[\-???]20/);
                    expect(nthText(1).text()).toBe('0');
                    expect(nthText(2).text()).toBe('20');
                });

                describe('label rendering', () => {
                    beforeEach(() => {
                        chart.renderLabel(true);
                        chart.render();
                    });

                    it('should generate a label for each datum', lineLabelCount);
                    it('should generate labels with positions corresponding to their data', lineLabelPositions);
                });
            });

            describe('with negative data', () => {
                beforeEach(() => {
                    const negativeGroup = dimension.group().reduceSum(d => -Math.abs(d.nvalue));

                    chart.group(negativeGroup).stack(negativeGroup).stack(negativeGroup);
                    chart.x(d3.scaleUtc().domain([makeDate(2012, 4, 20), makeDate(2012, 7, 15)]));

                    chart.margins({top: 30, right: 50, bottom: 30, left: 30})
                        .elasticY(true)
                        .xUnits(d3.utcDays)
                        .yAxis().ticks(3);

                    chart.render();
                });

                it('should generate y axis domain dynamically', () => {
                    const nthText = function (n) {
                        return d3.select(chart.selectAll('g.axis.y .tick text').nodes()[n]);
                    };

                    // d3@5 and d3@6 uses different characters to format negative numbers
                    expect(nthText(0).text()).toMatch(/[\-???]30/);
                    expect(nthText(1).text()).toMatch(/[\-???]20/);
                    expect(nthText(2).text()).toMatch(/[\-???]10/);
                    expect(nthText(3).text()).toBe('0');
                });
            });
        });

        describe('legend hovering', () => {
            let firstItem;

            beforeEach(() => {
                chart.stack(group)
                    .legend(new dc.Legend().x(400).y(10).itemHeight(13).gap(5))
                    .renderArea(true)
                    .render();

                firstItem = chart.select('g.dc-legend g.dc-legend-item');
                dc.d3compat.callHandler(firstItem.on('mouseover'), {}, null, firstItem.datum());
            });

            describe('when a legend item is hovered over', () => {
                it('should highlight corresponding lines and areas', () => {
                    expect(nthLine(0).classed('highlight')).toBeTruthy();
                    expect(nthArea(0).classed('highlight')).toBeTruthy();
                });

                it('should fade out non-corresponding lines and areas', () => {
                    expect(nthLine(1).classed('fadeout')).toBeTruthy();
                    expect(nthArea(1).classed('fadeout')).toBeTruthy();
                });
            });

            describe('when a legend item is hovered out', () => {
                it('should remove highlighting from corresponding lines and areas', () => {
                    dc.d3compat.callHandler(firstItem.on('mouseout'), null, {}, firstItem.datum());
                    expect(nthLine(0).classed('highlight')).toBeFalsy();
                    expect(nthArea(0).classed('highlight')).toBeFalsy();
                });

                it('should fade in non-corresponding lines and areas', () => {
                    dc.d3compat.callHandler(firstItem.on('mouseout'), null, {}, firstItem.datum());
                    expect(nthLine(1).classed('fadeout')).toBeFalsy();
                    expect(nthArea(1).classed('fadeout')).toBeFalsy();
                });
            });

            function nthLine (n) {
                return d3.select(chart.selectAll('path.line').nodes()[n]);
            }

            function nthArea (n) {
                return d3.select(chart.selectAll('path.area').nodes()[n]);
            }
        });

        describe('filtering', () => {
            beforeEach(() => {
                chart.filter([makeDate(2012, 5, 1), makeDate(2012, 5, 30)]).redraw();
            });

            it('should set the chart filter', () => {
                expect(chart.filter()).toEqual([makeDate(2012, 5, 1), makeDate(2012, 5, 30)]);
            });

            it('should set the filter printer', () => {
                expect(chart.filterPrinter()).not.toBeNull();
            });

            it('should not generate tooltip circles with the default brush', () => {
                expect(chart.selectAll('circle.dot').empty()).toBeTruthy();
            });

            describe('when a brush is defined', () => {
                it('should position the brush with an offset', () => {
                    expect(chart.select('g.brush').attr('transform')).toMatchTranslate(chart.margins().left, 10);
                });

                it('should create a fancy brush resize handle', () => {
                    const selectAll = chart.select('g.brush').selectAll('path.custom-brush-handle');
                    expect(selectAll.size()).toBe(2);
                    selectAll.each(function (d, i) {
                        if (i === 0) {
                            expect(d3.select(this).attr('d'))
                                .toMatchPath('M-0.5,53 A6,6 0 0 0 -6.5,59 V100 A6,6 0 0 0 -0.5,106 ZM-2.5,61 V98 M-4.5,61 V98');
                        } else {
                            expect(d3.select(this).attr('d'))
                                .toMatchPath('M0.5,53 A6,6 0 0 1 6.5,59 V100 A6,6 0 0 1 0.5,106 ZM2.5,61 V98 M4.5,61 V98');
                        }
                    });
                });

                it('should stretch the background', () => {
                    expect(chart.select('g.brush rect.overlay').attr('width')).toBe('1020');
                });

                it('should set the background height to the chart height', () => {
                    expect(chart.select('g.brush rect.overlay').attr('height')).toBe('160');
                });

                it('should set extent height to the chart height', () => {
                    expect(chart.select('g.brush rect.selection').attr('height')).toBe('160');
                });

                it('should set extent width based on filter set', () => {
                    expect(chart.select('g.brush rect.selection').attr('width')).toBeWithinDelta(88, 1);
                });

                it('should not have an area path', () => {
                    expect(chart.selectAll('path.area').empty()).toBeTruthy();
                });

                it('should set the dash style to solid', () => {
                    expect(chart.selectAll('path.line').attr('stroke-dasharray')).toBeNull();
                });
            });
        });
        describe('changing data', () => {
            let stateDimension;
            beforeEach(() => {
                chart.brushOn(false)
                    .title(d => d.value)
                    .render();
                stateDimension = data.dimension(d => d.state);
                stateDimension.filter('CA');
                chart.redraw();
            });

            it('should update dot titles', () => {
                chart.selectAll('g._0 circle.dot').each(function (d) {
                    expect(d3.select(this).select('title').size()).toBe(1);
                    expect(+d3.select(this).select('title').text()).toBe(d.data.value);
                });
            });

            afterEach(() => {
                stateDimension.filter(null);
            });
        });
    });
    describe('change color', () => {
        beforeEach(() => {
            chart.brushOn(false)
                .ordinalColors(['#ff0000'])
                .colorAccessor(() => 0)
                .render();
        });
        it('updates dot colors', () => {
            expect(chart.select('circle.dot').nodes()[0].attributes.fill.value).toMatch(/#ff0000/i);
        });
    });

    describe('accessibility bar chart', () => {

        beforeEach(() => {
            chart.keyboardAccessible(true);
            chart.brushOn(false);
        })

        it('internal elements are focusable by keyboard', () => {
            chart.render();
            chart.selectAll('circle.dot').each(function () {
                const dot = d3.select(this);
                expect(dot.attr('tabindex')).toEqual('0');
            });
        });
    });

    function lineLabelCount () {
        expect(chart.selectAll('text.lineLabel').size()).toBe(chart.stack().length * chart.group().all().length);
    }

    function lineLabelPositions () {
        const LABEL_PADDING = 3;
        chart.selectAll('.stack').nodes().forEach((stack, i) => {
            d3.select(stack).selectAll('text.lineLabel').nodes().forEach((lineLabel, j) => {
                expect(+d3.select(lineLabel).attr('x')).toBeCloseTo(chart.x()(chart.data()[i].values[j].x));
                expect(+d3.select(lineLabel).attr('y') + LABEL_PADDING).toBeCloseTo(chart.y()(chart.data()[i].values[j].y +
                        chart.data()[i].values[j].y0));
            });
        });
    }
});
