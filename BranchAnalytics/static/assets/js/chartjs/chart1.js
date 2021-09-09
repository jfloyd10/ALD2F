  function drawChart1(vLabels,vData){

  Array.prototype.max = function() {
    return Math.max.apply(null, this);
  };

  Array.prototype.min = function() {
    return Math.min.apply(null, this);
  };

  var maxValue = Math.round((vData.max()*1.1));
  var minValue = Math.round((vData.min()*.9));
  var lenLabel = vLabels.length;
  var vStepSize = Math.round((maxValue - minValue) / lenLabel)


  var data = {
    labels: vLabels,
    datasets: [
    {
        label: 'Sales by Division',
        backgroundColor: 'rgba(232, 0, 0,.4)',
        borderColor: 'rgb(232, 0, 0)',
        data: vData,
        fill:true,
        tension: 0.1
    },
    {
      label: 'Forecasted',
      backgroundColor: 'rgba(87, 85, 85,.2)',
      borderColor: 'rgba(87, 85, 85, .2)',
      data: [32, 24, 36, 13, 25, 24, 13],
      fill: false,
      borderDash: [15,10],
      pointRadius: 0,
      tension: 0.1
    }
   ]

  };

    var config = {
        type: 'line',
        data: data,
        options : {
          fill: true,

            scales : {
                y : {
                    min: minValue,
                    max: maxValue,
                    stepSize: vStepSize,
                    grid: {
                      display: false
                    }
                },

                x: {
                  grid:{
                    display:false
                  }
                }
            },

        }

  };

  var mChart1 = new Chart(
    document.getElementById('chart2'),
    config
  );

}

function drawChart2(clabels,cData){


  Array.prototype.max = function() {
    return Math.max.apply(null, this);
  };

  Array.prototype.min = function() {
    return Math.min.apply(null, this);
  };

  var maxValue = Math.round((cData.max()*1.1));
  var minValue = Math.round((cData.min()*.9));
  var lenLabel = clabels.length;
  var vStepSize = Math.round((maxValue - minValue) / lenLabel)
  var sel_index = 0

  var data = {
    labels: clabels,
    datasets: [
    {
        label: 'Sales by Division',
        backgroundColor: ["#d10808", "#5e5e5e", "#bababa"],
        data: cData,
        fill:true,
    },
   ]

  };

    var config = {
        type: 'bar',
        data: data,
        options : {
          onClick: graphClickEvent,
          legend: {
             display: false
          },

          scales : {

              yAxes: [{
                  ticks: {
                      beginAtZero: true
                  }
              }],

              x: {
                grid:{
                  display:false
                }
              }
          },
        }

  };


  function graphClickEvent(event, array){

      if(array[0]){
         sel_index = array[0]._index
         var new_array = [];

         new_array.push(clabels[sel_index]);
         industry_select = new_array;

         updateDataAll();

      }

  }

  var mChart2 = new Chart(
    document.getElementById('chart1'),
    config
  );

};
