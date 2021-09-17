from django.shortcuts import render
from django.views.generic import TemplateView
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import redirect,  get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Sum, Count
from django.utils import timezone
from django.http import HttpResponse, JsonResponse
from db.models import MainData, UserBookmarks
from django.db import connection
from django.views.decorators.cache import cache_page
from django.core.cache import cache
import random

# Take A list of paramaters and convert to a SQL statemenet
def process_sql(param, sql_col):
    selection = param
    sql_col = sql_col
    params = []

    if type(param) is list:
        no_selections = len(param)

        if no_selections is None or no_selections < 1:
            selection = "AND 1=1"
            return selection

        if no_selections == 1:
            selection = selection[0]

            if selection == 'starter':
                selection = None

            if selection:
                quotes = '''"'''
                selection = "AND " + sql_col + " = " + quotes + selection + quotes

            else:
                selection = "AND 1=1"

            return selection

        else:

            for s in selection:
                if s == 'starter':
                    pass
                else:
                    params.append(s)

            no_selections = len(params)
            print(params)

            if no_selections == 1:
                selection = params[0]

                if selection:
                    quotes = '''"'''
                    selection = "AND " + sql_col + " = " + quotes + selection + quotes

                else:
                    selection = "AND 1=1"

                return selection

            else:
                i = 0
                sql_in = '('

                for p in params:
                    sql_in += "'{}',".format(p)

                sql_in = sql_in[: len(sql_in)-1]

                sql_in += ')'

                selection = "AND " + sql_col + " IN " + sql_in
                return selection


    else:

        if selection == 'starter':
            selection = None

        if selection:
            quotes = '''"'''
            selection = "AND " + sql_col + " = " + quotes + selection + quotes

        else:
            selection = "AND 1=1"

        return selection


def process_dt_sql(param, from_to):
    selection = param

    if selection == 'starter':
        selection = "AND 1=1"
        return selection
    else:
        if from_to == 1:
            quotes = '''"'''
            selection = "AND date >= " + quotes + selection + quotes
            selection = "AND 1=1"
            return selection

        else:
            quotes = '''"'''
            selection = "AND date <= " + quotes + selection + quotes
            selection = "AND 1=1"
            return selection


class LandingView(TemplateView):
    template_name = 'landing.html'

    def get(self,request):
        return render(request, self.template_name, context={})

class IndexView(TemplateView):
    template_name = 'index.html'

    def get(self,request):
        context = {}
        pl_table = []
        #Get Industry Options for Select Menu
        cursor = connection.cursor()
        
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        ''')

        row = cursor.fetchall()

        for r in row:
            pl_table.append([r[0], r[1], r[2]])

        context['pl_table'] = pl_table

        pl_table_l1 = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE s.account_level = 1

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        ''')

        row = cursor.fetchall()

        data_id = 1

        ytd_21_gp = 0
        ytd_20_gp = 0
        mtd_21_gp = 0
        mtd_20_gp = 0
        ytd_var_gp = 0
        ytd_pvar_gp = 0
        mtd_var_gp = 0
        mtd_pvar_gp = 0

        for r in row:
            ytd_21 = r[2]
            ytd_20 = int(r[2] * (random.randint(7,9)/10))

            mtd_21 = int(ytd_21/8)
            mtd_20 = int(ytd_20/8)

            ytd_var = int(ytd_21-ytd_20)
            mtd_var = int(mtd_21-mtd_20)

            ytd_pvar = int((ytd_var/ytd_20)*100)
            mtd_pvar = int((mtd_var/mtd_20)*100)

            pl_table_l1.append([r[0], r[1], r[2], str(data_id) +'pl', ytd_21, ytd_20, mtd_21, mtd_20, ytd_var, mtd_var, ytd_pvar, mtd_pvar])
            data_id += 1

        for item in pl_table_l1:
            if item[0] == 'COGS':
                ytd_21_gp += item[4]*-1
                mtd_21_gp += item[6]*-1

                ytd_20_gp += item[5]*-1
                mtd_20_gp += item[7]*-1

            else:
                ytd_21_gp += item[4]
                mtd_21_gp += item[6]

                ytd_20_gp += item[5]
                mtd_20_gp += item[7]

        ytd_var_gp = int(ytd_21_gp - ytd_20_gp)
        mtd_var_gp = int(mtd_21_gp - mtd_20_gp)

        ytd_pvar_gp = int((ytd_var_gp/abs(ytd_20_gp))*10)
        mtd_pvar_gp = int((mtd_var_gp/abs(mtd_20_gp))*10)

        gross_profit = [ytd_21_gp, ytd_20_gp, mtd_21_gp, mtd_20_gp, ytd_var_gp, mtd_var_gp, ytd_pvar_gp, mtd_pvar_gp]

        context['pl_gross_profit'] = gross_profit

        context['pl_line1'] = pl_table_l1

        data_id = 4

        pl_table_l2 = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE s.account_level = 2

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        ''')

        row = cursor.fetchall()

        for r in row:
            ytd_21 = r[2]
            ytd_20 = int(r[2] * (random.randint(7,9)/10))

            mtd_21 = int(ytd_21/8)
            mtd_20 = int(ytd_20/8)

            ytd_var = int(ytd_21-ytd_20)
            mtd_var = int(mtd_21-mtd_20)

            ytd_pvar = int((ytd_var/ytd_20)*100)
            mtd_pvar = int((mtd_var/mtd_20)*100)
            pl_table_l2.append([r[0], r[1], r[2], str(data_id) +'pl', ytd_21, ytd_20, mtd_21, mtd_20, ytd_var, mtd_var, ytd_pvar, mtd_pvar])
            data_id += 1

        context['pl_line2'] = pl_table_l2


        #Net Income
        cursor.execute('''SELECT
        SUM(
        CASE
            WHEN L.account = "Sales" Then L.amount
            ELSE L.amount*-1
        END) as amount,

        S.ACCOUNT_BALANCE

        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        GROUP BY S.ACCOUNT_BALANCE

        ''')

        row = cursor.fetchall()

        ytd_21_ox = 0
        ytd_20_ox = 0
        mtd_21_ox = 0
        mtd_20_ox = 0

        ytd_21_np = 0
        ytd_20_np= 0
        mtd_21_np = 0
        mtd_20_np = 0

        ytd_var_np = 0
        ytd_pvar_np = 0
        mtd_var_np = 0
        mtd_pvar_np = 0

        for item in pl_table_l2:
            if item[1] == 'C':
                ytd_21_ox += item[4]*-1
                mtd_21_ox += item[6]*-1

                ytd_20_ox += item[5]*-1
                mtd_20_ox += item[7]*-1

            else:
                ytd_21_ox += item[4]
                mtd_21_ox += item[6]

                ytd_20_ox += item[5]
                mtd_20_ox += item[7]



        ytd_21_np = ytd_21_gp - ytd_21_ox
        ytd_20_np = ytd_20_gp - ytd_20_ox
        mtd_21_np = mtd_21_gp - mtd_21_ox
        mtd_20_np = mtd_20_gp - mtd_20_ox

        ytd_var_np = int(ytd_21_np - ytd_20_np)
        mtd_var_np = int(mtd_21_np - mtd_20_np)

        ytd_pvar_np = int((ytd_var_np/abs(ytd_20_np))*10)
        mtd_pvar_np = int((mtd_var_np/abs(mtd_20_np))*10)

        net_profit = [ytd_21_np, ytd_20_np, mtd_21_np, mtd_20_np, ytd_var_np, mtd_var_np, ytd_pvar_np, mtd_pvar_np]

        context['pl_net_profit'] = net_profit

        return render(request, self.template_name, context)


class GatherDataView(TemplateView):

    def get(self,request):
        cursor = connection.cursor()
        data = {}
        group_name = request.GET.get('group_select', None)
        branch_select = request.GET.get('branch_select', None)
        salesrep_select = request.GET.get('salesrep_select', None)
        product_select = request.GET.get('product_select', None)
        month_select = request.GET.get('month_select', None)

        industry_select = request.GET.getlist('industry_select[]', None)

        group_name = process_sql(group_name, 'group_name')
        branch_select = process_sql(branch_select, 'branch')
        salesrep_select = process_sql(salesrep_select, 'salesrep')
        product_select = process_sql(product_select, 'products')
        month_select = process_sql(month_select, 'month')
        industry_select = process_sql(industry_select, 'industry')

        print(group_name)
        print(branch_select)
        print(salesrep_select)
        print(product_select)
        print(month_select)
        print(industry_select)

        lookup_id = group_name + branch_select + salesrep_select + product_select + month_select + industry_select + 'bi'
        cache_get = cache.get(lookup_id)

        if cache_get:
            print('Cache Found, loading')
            data = cache_get
            return JsonResponse(data)
        else:
            print('Cache not found, quering context')

        cursor.execute("""
        SELECT
            DATE,
            SUM(PRICE)

        FROM MAIN_DATA
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY DATE
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        date_label = []
        date_values = []
        amChartData = []

        for r in row:
            amChartData.append({'date': r[0].strftime('%m/%d/%Y'), 'visits': r[1]})
            date_label.append(r[0].strftime('%m/%d/%Y'))
            date_values.append(r[1])

        data['is_taken'] = [1,1]
        data['date_labels'] = date_label
        data['date_values'] = date_values
        data['amChartData'] = amChartData


        cursor.execute("""
        SELECT
            Industry,
            SUM(PRICE)

        FROM MAIN_DATA
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY Industry
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        clabels = []
        cdata = []
        amBarChartData = []

        for r in row:
            if r[0]:
                amBarChartData.append({'industry': r[0], 'visits': r[1]})
                clabels.append(r[0])
                cdata.append(int(r[1]))

        data['clabels'] = clabels
        data['cdata'] = cdata
        data['amBarChartData'] = amBarChartData

        cursor.execute("""
        SELECT
            industry,
            SUM(PRICE)

        FROM MAIN_DATA
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY industry
        HAVING SUM(PRICE) > 0
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        city_labels = []

        for r in row:
            city_labels.append(r[0])

        data['city_labels'] = city_labels

        cursor.execute("""
        SELECT
            branch,
            SUM(PRICE)

        FROM MAIN_DATA
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY branch
        HAVING SUM(PRICE) > 0
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        branch_labels = []

        for r in row:
            branch_labels.append(r[0])

        data['branch_labels'] = branch_labels

        main_data = []
        cursor.execute("""
        SELECT
        group_name,
        branch,
        industry,
        products,
        salesrep,
        customer,
        SUM(PRICE) as PRICE
        FROM MAIN_DATA

        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY
            group_name,
            branch,
            industry,
            products,
            salesrep,
            customer

        HAVING SUM(PRICE) > 10
        LIMIT 100
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2], r[3], r[4], r[5], r[6]])

        data['main_data'] = main_data

        cache.set(lookup_id, data, 60*60*24)

        return JsonResponse(data)


class BIDash(TemplateView):
    template_name = 'bi_dash.html'

    def get(self,request):
        context = {}
        lookup_id = 'base_main_data_bi'
        cache_get = cache.get(lookup_id)

        context['pre_filter'] = [{'has_prefilters': 0}]

        if cache_get:
            print('Cache Found, loading')
            context = cache_get
            return render(request, self.template_name, context)
        else:
            print('Cache not found, quering context')

        #Get Industry Options for Select Menu
        cursor = connection.cursor()
        cursor.execute('''SELECT industry, SUM(PRICE) FROM MAIN_DATA GROUP BY industry HAVING SUM(PRICE) > 0''')
        row = cursor.fetchall()
        industry_labels = []
        for r in row:
            industry_labels.append(r[0])
        context['industry_labels'] = industry_labels

        #Get Group Options for Select Menu
        cursor.execute('''SELECT group_name, SUM(1) FROM MAIN_DATA GROUP BY group_name''')
        row = cursor.fetchall()
        group_labels = []
        for r in row:
            group_labels.append(r[0])
        context['group_labels'] = group_labels

        #Get Sales Rep Labels
        cursor.execute('''SELECT salesrep, SUM(1) FROM MAIN_DATA GROUP BY salesrep''')
        row = cursor.fetchall()
        salesrep_labels = []
        for r in row:
            salesrep_labels.append(r[0])
        context['salesrep_labels'] = salesrep_labels

        #Get Branch Options for Select Menu
        cursor.execute('''SELECT branch, SUM(PRICE) FROM MAIN_DATA GROUP BY branch ''')
        row = cursor.fetchall()
        branch_labels = []
        for r in row:
            branch_labels.append(r[0])
        context['branch_labels'] = branch_labels

        #Get Product Options for Select Menu
        cursor.execute('''SELECT products, SUM(PRICE) FROM MAIN_DATA GROUP BY products ''')
        row = cursor.fetchall()
        product_labels = []
        for r in row:
            product_labels.append(r[0])
        context['product_labels'] = product_labels

        #Get Month Options for Select Menu
        cursor.execute('''SELECT DISTINCT month FROM MAIN_DATA ORDER BY CAST(month as INTEGER)''')
        row = cursor.fetchall()
        month_labels = []
        for r in row:
            month_labels.append(r[0])
        context['month_labels'] = month_labels


        #Get Date/Amt Aggregation
        cursor.execute('''SELECT date, SUM(PRICE) as PRICE FROM MAIN_DATA GROUP BY date''')
        row = cursor.fetchall()
        date_label = []
        date_values = []
        amChartData = []
        for r in row:
            amChartData.append({'date': r[0].strftime('%m/%d/%Y'), 'visits': r[1]})
            date_label.append(r[0].strftime('%m/%d/%Y'))
            date_values.append(r[1])
        context['date_labels'] = date_label
        context['date_values'] = date_values


        #Get Industry Bar Chart Data
        cursor.execute('''SELECT industry, SUM(PRICE) as PRICE FROM MAIN_DATA GROUP BY industry HAVING SUM(PRICE) > 0''')
        row = cursor.fetchall()

        clabels = []
        cdata = []
        amBarChartData = []

        for r in row:
            if r[0]:
                amBarChartData.append({'industry': r[0], 'visits': r[1]})
                clabels.append(r[0])
                cdata.append(int(r[1]))

        context['clabels'] = clabels
        context['cdata'] = cdata
        context['amchartData'] = amChartData
        context['amBarChartData'] = amBarChartData

        main_data = []
        cursor.execute('''SELECT group_name, branch, industry, products, salesrep, customer, SUM(PRICE) as PRICE FROM MAIN_DATA GROUP BY group_name, branch, industry, products, salesrep, customer LIMIT 100''')
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2], r[3], r[4], r[5], r[6]])

        context['main_data'] = main_data

        cache.set(lookup_id, context, 60*60*24)

        return render(request, self.template_name, context)


class ARDash(TemplateView):
    template_name = 'ardash.html'

    def get(self,request):
        context = {}
        lookup_id = 'base_main_data_ar'
        cache_get = cache.get(lookup_id)


        if cache_get:
            print('Cache Found, loading')
            context = cache_get
            return render(request, self.template_name, context)
        else:
            print('Cache not found, quering context')

        context['pre_filter'] = [{'has_prefilters': 0}]

        #Get Industry Options for Select Menu
        cursor = connection.cursor()
        cursor.execute('''SELECT aging, SUM(Amount) FROM MAIN_DATA_AR GROUP BY aging ''')
        row = cursor.fetchall()
        industry_labels = []
        for r in row:
            industry_labels.append(r[0])
        context['industry_labels'] = industry_labels

        #Get Group Options for Select Menu
        cursor.execute('''SELECT group_name, SUM(1) FROM MAIN_DATA GROUP BY group_name''')
        row = cursor.fetchall()
        group_labels = []
        for r in row:
            group_labels.append(r[0])
        context['group_labels'] = group_labels

        #Get Sales Rep Labels
        cursor.execute('''SELECT salesrep, SUM(1) FROM MAIN_DATA GROUP BY salesrep''')
        row = cursor.fetchall()
        salesrep_labels = []
        for r in row:
            salesrep_labels.append(r[0])
        context['salesrep_labels'] = salesrep_labels

        #Get Branch Options for Select Menu
        cursor.execute('''SELECT branch, SUM(PRICE) FROM MAIN_DATA GROUP BY branch ''')
        row = cursor.fetchall()
        branch_labels = []
        for r in row:
            branch_labels.append(r[0])
        context['branch_labels'] = branch_labels

        #Get Product Options for Select Menu
        cursor.execute('''SELECT products, SUM(PRICE) FROM MAIN_DATA GROUP BY products ''')
        row = cursor.fetchall()
        product_labels = []
        for r in row:
            product_labels.append(r[0])
        context['product_labels'] = product_labels

        #Get Month Options for Select Menu
        cursor.execute('''SELECT DISTINCT month FROM MAIN_DATA ORDER BY CAST(month as INTEGER)''')
        row = cursor.fetchall()
        month_labels = []
        for r in row:
            month_labels.append(r[0])
        context['month_labels'] = month_labels


        #Get Date/Amt Aggregation
        cursor.execute('''SELECT date, SUM(PRICE) as PRICE FROM MAIN_DATA GROUP BY date''')
        row = cursor.fetchall()
        date_label = []
        date_values = []
        amChartData = []
        for r in row:
            amChartData.append({'date': r[0].strftime('%m/%d/%Y'), 'visits': r[1]})
            date_label.append(r[0].strftime('%m/%d/%Y'))
            date_values.append(r[1])
        context['date_labels'] = date_label
        context['date_values'] = date_values


        #Get Industry Bar Chart Data
        cursor.execute('''SELECT aging, SUM(Amount) as PRICE FROM MAIN_DATA_AR GROUP BY aging ''')
        row = cursor.fetchall()

        clabels = []
        cdata = []
        amBarChartData = []

        for r in row:
            if r[0]:
                amBarChartData.append({'industry': r[0], 'visits': r[1]})
                clabels.append(r[0])
                cdata.append(int(r[1]))

        context['clabels'] = clabels
        context['cdata'] = cdata
        context['amchartData'] = amChartData
        context['amBarChartData'] = amBarChartData

        main_data = []
        cursor.execute('''SELECT branch, customer, date, item, type, aging, SUM(amount) as PRICE FROM MAIN_DATA_AR GROUP BY branch, customer, date, item, type, aging''')
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2].strftime('%m/%d/%Y'), r[3], r[4], r[5], r[6]])

        context['main_data'] = main_data

        cache.set(lookup_id, context, 60*60*24)


        return render(request, self.template_name, context)


class SaveBookmark(TemplateView):

    def get(self,request):
        data = {}

        try:
            user = request.user
            group_name = request.GET.get('group_select', 'starter')
            branch_select = request.GET.get('branch_select', 'starter')
            salesrep_select = request.GET.get('salesrep_select', 'starter')
            product_select = request.GET.get('product_select', 'starter')
            month_select = request.GET.get('month_select', 'starter')
            page = request.GET.get('page', 'bi')
            new_obj = UserBookmarks.objects.create(user=user, page=page, group_select=group_name, branch_select=branch_select, salesrep_select=salesrep_select,product_select=product_select,month_select=month_select)
            new_obj.save()
            data['success'] = 1
            return JsonResponse(data)

        except:
            data['success'] = 0
            return JsonResponse(data)


class GatherDataViewAR(TemplateView):

    def get(self,request):
        cursor = connection.cursor()
        data = {}
        group_name = request.GET.get('group_select', None)
        branch_select = request.GET.get('branch_select', None)
        salesrep_select = request.GET.get('salesrep_select', None)
        product_select = request.GET.get('product_select', None)
        month_select = request.GET.get('month_select', None)

        industry_select = request.GET.getlist('industry_select[]', None)

        group_name = process_sql(group_name, 'group_name')
        branch_select = process_sql(branch_select, 'branch')
        salesrep_select = process_sql(salesrep_select, 'salesrep')
        product_select = process_sql(product_select, 'products')
        month_select = process_sql(month_select, 'month')
        industry_select = process_sql(industry_select, 'industry')

        print(group_name)
        print(branch_select)
        print(salesrep_select)
        print(product_select)
        print(month_select)
        print(industry_select)

        lookup_id = group_name + branch_select + salesrep_select + product_select + month_select + industry_select + 'ar'
        cache_get = cache.get(lookup_id)

        if cache_get:
            print('Cache Found, loading')
            data = cache_get
            return JsonResponse(data)
        else:
            print('Cache not found, quering context')

        cursor.execute("""
        SELECT
            DATE,
            SUM(PRICE)

        FROM MAIN_DATA
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY DATE
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        date_label = []
        date_values = []
        amChartData = []

        for r in row:
            amChartData.append({'date': r[0].strftime('%m/%d/%Y'), 'visits': r[1]})
            date_label.append(r[0].strftime('%m/%d/%Y'))
            date_values.append(r[1])

        data['is_taken'] = [1,1]
        data['date_labels'] = date_label
        data['date_values'] = date_values
        data['amChartData'] = amChartData


        cursor.execute("""
        SELECT
            aging,
            SUM(amount)

        FROM MAIN_DATA_AR
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY aging
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        clabels = []
        cdata = []
        amBarChartData = []

        for r in row:
            if r[0]:
                amBarChartData.append({'industry': r[0], 'visits': r[1]})
                clabels.append(r[0])
                cdata.append(int(r[1]))

        data['clabels'] = clabels
        data['cdata'] = cdata
        data['amBarChartData'] = amBarChartData

        cursor.execute("""
        SELECT
            aging,
            SUM(amount)

        FROM MAIN_DATA_AR
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY aging
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        city_labels = []

        for r in row:
            city_labels.append(r[0])

        data['city_labels'] = city_labels

        cursor.execute("""
        SELECT
            branch,
            SUM(PRICE)

        FROM MAIN_DATA
        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY branch
        HAVING SUM(PRICE) > 0
        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))

        row = cursor.fetchall()

        branch_labels = []

        for r in row:
            branch_labels.append(r[0])

        data['branch_labels'] = branch_labels

        main_data = []
        cursor.execute("""
        SELECT
        branch,
        customer,
        date,
        item,
        type,
        aging,
        SUM(amount) as amount
        FROM MAIN_DATA_AR

        WHERE 1=1
        {}
        {}
        {}
        {}
        {}
        {}

        GROUP BY
            branch,
            customer,
            date,
            item,
            type,
            aging

        """.format(group_name, branch_select, salesrep_select, product_select, month_select, industry_select))
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2].strftime('%m/%d/%Y'), r[3], r[4], r[5], r[6]])

        data['main_data'] = main_data

        cache.set(lookup_id, data, 60*60*24)

        return JsonResponse(data)


class ReportView(TemplateView):
    template_name = 'reportview.html'

    def get(self,request):
        context = {}
        lookup_id = 'base_main_data_ar_table'
        cache_get = cache.get(lookup_id)


        if cache_get:
            print('Cache Found, loading')
            context = cache_get
            return render(request, self.template_name, context)
        else:
            print('Cache not found, quering context')

        context['pre_filter'] = [{'has_prefilters': 0}]

        #Get Industry Options for Select Menu
        cursor = connection.cursor()
        cursor.execute('''SELECT aging, SUM(Amount) FROM MAIN_DATA_AR GROUP BY aging ''')
        row = cursor.fetchall()
        industry_labels = []
        for r in row:
            industry_labels.append(r[0])
        context['industry_labels'] = industry_labels

        #Get Group Options for Select Menu
        cursor.execute('''SELECT group_name, SUM(1) FROM MAIN_DATA GROUP BY group_name''')
        row = cursor.fetchall()
        group_labels = []
        for r in row:
            group_labels.append(r[0])
        context['group_labels'] = group_labels

        #Get Sales Rep Labels
        cursor.execute('''SELECT salesrep, SUM(1) FROM MAIN_DATA GROUP BY salesrep''')
        row = cursor.fetchall()
        salesrep_labels = []
        for r in row:
            salesrep_labels.append(r[0])
        context['salesrep_labels'] = salesrep_labels

        #Get Branch Options for Select Menu
        cursor.execute('''SELECT branch, SUM(PRICE) FROM MAIN_DATA GROUP BY branch ''')
        row = cursor.fetchall()
        branch_labels = []
        for r in row:
            branch_labels.append(r[0])
        context['branch_labels'] = branch_labels

        #Get Product Options for Select Menu
        cursor.execute('''SELECT products, SUM(PRICE) FROM MAIN_DATA GROUP BY products ''')
        row = cursor.fetchall()
        product_labels = []
        for r in row:
            product_labels.append(r[0])
        context['product_labels'] = product_labels

        #Get Month Options for Select Menu
        cursor.execute('''SELECT DISTINCT month FROM MAIN_DATA ORDER BY CAST(month as INTEGER)''')
        row = cursor.fetchall()
        month_labels = []
        for r in row:
            month_labels.append(r[0])
        context['month_labels'] = month_labels



        main_data = []
        cursor.execute('''SELECT branch, customer, date, item, type, aging, SUM(amount) as PRICE FROM MAIN_DATA_AR GROUP BY branch, customer, date, item, type, aging''')
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2].strftime('%m/%d/%Y'), r[3], r[4], r[5], r[6]])

        context['main_data'] = main_data

        cache.set(lookup_id, context, 60*60*24)


        return render(request, self.template_name, context)


class ScatterView(TemplateView):
    template_name = 'scatter.html'

    def get(self,request):
        context = {}
        lookup_id = 'base_main_data_ar_scatter'
        cache_get = cache.get(lookup_id)


        if cache_get:
            print('Cache Found, loading')
            context = cache_get
            return render(request, self.template_name, context)
        else:
            print('Cache not found, quering context')

        context['pre_filter'] = [{'has_prefilters': 0}]

        #Get Industry Options for Select Menu
        cursor = connection.cursor()
        cursor.execute('''SELECT aging, SUM(Amount) FROM MAIN_DATA_AR GROUP BY aging ''')
        row = cursor.fetchall()
        industry_labels = []
        for r in row:
            industry_labels.append(r[0])
        context['industry_labels'] = industry_labels

        #Get Group Options for Select Menu
        cursor.execute('''SELECT group_name, SUM(1) FROM MAIN_DATA GROUP BY group_name''')
        row = cursor.fetchall()
        group_labels = []
        for r in row:
            group_labels.append(r[0])
        context['group_labels'] = group_labels

        #Get Sales Rep Labels
        cursor.execute('''SELECT salesrep, SUM(1) FROM MAIN_DATA GROUP BY salesrep''')
        row = cursor.fetchall()
        salesrep_labels = []
        for r in row:
            salesrep_labels.append(r[0])
        context['salesrep_labels'] = salesrep_labels

        #Get Branch Options for Select Menu
        cursor.execute('''SELECT branch, SUM(PRICE) FROM MAIN_DATA GROUP BY branch ''')
        row = cursor.fetchall()
        branch_labels = []
        for r in row:
            branch_labels.append(r[0])
        context['branch_labels'] = branch_labels

        #Get Product Options for Select Menu
        cursor.execute('''SELECT products, SUM(PRICE) FROM MAIN_DATA GROUP BY products ''')
        row = cursor.fetchall()
        product_labels = []
        for r in row:
            product_labels.append(r[0])
        context['product_labels'] = product_labels

        #Get Month Options for Select Menu
        cursor.execute('''SELECT DISTINCT month FROM MAIN_DATA ORDER BY CAST(month as INTEGER)''')
        row = cursor.fetchall()
        month_labels = []
        for r in row:
            month_labels.append(r[0])
        context['month_labels'] = month_labels



        main_data = []
        cursor.execute('''SELECT branch, customer, date, item, type, aging, SUM(amount) as PRICE FROM MAIN_DATA_AR GROUP BY branch, customer, date, item, type, aging''')
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2].strftime('%m/%d/%Y'), r[3], r[4], r[5], r[6]])

        context['main_data'] = main_data

        cache.set(lookup_id, context, 60*60*24)


        return render(request, self.template_name, context)


class FinancialReports(TemplateView):
    template_name = 'financialreports.html'

    def get(self,request):
        context = {}
        lookup_id = 'base_main_data_financials'
        cache_get = cache.get(lookup_id)


        if cache_get:
            print('Cache Found, loading')
            context = cache_get
            return render(request, self.template_name, context)
        else:
            print('Cache not found, quering context')

        context['pre_filter'] = [{'has_prefilters': 0}]

        #Get Industry Options for Select Menu
        cursor = connection.cursor()
        cursor.execute('''SELECT aging, SUM(Amount) FROM MAIN_DATA_AR GROUP BY aging ''')
        row = cursor.fetchall()
        industry_labels = []
        for r in row:
            industry_labels.append(r[0])
        context['industry_labels'] = industry_labels

        #Get Group Options for Select Menu
        cursor.execute('''SELECT group_name, SUM(1) FROM MAIN_DATA GROUP BY group_name''')
        row = cursor.fetchall()
        group_labels = []
        for r in row:
            group_labels.append(r[0])
        context['group_labels'] = group_labels

        #Get Sales Rep Labels
        cursor.execute('''SELECT salesrep, SUM(1) FROM MAIN_DATA GROUP BY salesrep''')
        row = cursor.fetchall()
        salesrep_labels = []
        for r in row:
            salesrep_labels.append(r[0])
        context['salesrep_labels'] = salesrep_labels

        #Get Branch Options for Select Menu
        cursor.execute('''SELECT branch, SUM(PRICE) FROM MAIN_DATA GROUP BY branch ''')
        row = cursor.fetchall()
        branch_labels = []
        for r in row:
            branch_labels.append(r[0])
        context['branch_labels'] = branch_labels

        #Get Product Options for Select Menu
        cursor.execute('''SELECT products, SUM(PRICE) FROM MAIN_DATA GROUP BY products ''')
        row = cursor.fetchall()
        product_labels = []
        for r in row:
            product_labels.append(r[0])
        context['product_labels'] = product_labels

        #Get Month Options for Select Menu
        cursor.execute('''SELECT DISTINCT month FROM MAIN_DATA ORDER BY CAST(month as INTEGER)''')
        row = cursor.fetchall()
        month_labels = []
        for r in row:
            month_labels.append(r[0])
        context['month_labels'] = month_labels



        main_data = []
        cursor.execute('''SELECT branch, customer, date, item, type, aging, SUM(amount) as PRICE FROM MAIN_DATA_AR GROUP BY branch, customer, date, item, type, aging''')
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2].strftime('%m/%d/%Y'), r[3], r[4], r[5], r[6]])

        context['main_data'] = main_data

        cache.set(lookup_id, context, 60*60*24)


        return render(request, self.template_name, context)


class PLView(TemplateView):
    template_name = 'profit_loss.html'

    def get(self,request):
        context = {}
        lookup_id = 'base_main_data_gl'
        cache_get = cache.get(lookup_id)


        if cache_get:
            print('Cache Found, loading')
            context = cache_get
            return render(request, self.template_name, context)
        else:
            print('Cache not found, quering context')

        context['pre_filter'] = [{'has_prefilters': 0}]

        #Get Industry Options for Select Menu
        cursor = connection.cursor()

        #Get Group Options for Select Menu
        cursor.execute('''SELECT group_name, SUM(1) FROM LEDGER GROUP BY group_name''')
        row = cursor.fetchall()
        group_labels = []
        for r in row:
            group_labels.append(r[0])
        context['group_labels'] = group_labels

        #Get Branch Options for Select Menu
        cursor.execute('''SELECT branch, SUM(Amount) FROM LEDGER GROUP BY branch ''')
        row = cursor.fetchall()
        branch_labels = []
        for r in row:
            branch_labels.append(r[0])
        context['branch_labels'] = branch_labels

        #Get Month Options for Select Menu
        cursor.execute('''SELECT DISTINCT period FROM LEDGER ORDER BY CAST(period as INTEGER)''')
        row = cursor.fetchall()
        month_labels = []
        for r in row:
            month_labels.append(r[0])
        context['month_labels'] = month_labels


        main_data = []
        cursor.execute('''SELECT
        L.branch,
        L.group_name,
        L.year,
        L.period,
        L.account,
        S.sort_order,
        SUM(L.amount) as Amount

        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        GROUP BY
        L.branch,
        L.group_name,
        L.year,
        L.period,
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order


        ''')
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2], r[3], r[4], r[5]])

        context['main_data'] = main_data

        pl_table = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        ''')

        row = cursor.fetchall()

        for r in row:
            pl_table.append([r[0], r[1], r[2]])

        context['pl_table'] = pl_table

        pl_table_l1 = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE s.account_level = 1

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        ''')

        row = cursor.fetchall()

        data_id = 1

        ytd_21_gp = 0
        ytd_20_gp = 0
        mtd_21_gp = 0
        mtd_20_gp = 0
        ytd_var_gp = 0
        ytd_pvar_gp = 0
        mtd_var_gp = 0
        mtd_pvar_gp = 0

        for r in row:
            ytd_21 = r[2]
            ytd_20 = int(r[2] * (random.randint(7,9)/10))

            mtd_21 = int(ytd_21/8)
            mtd_20 = int(ytd_20/8)

            ytd_var = int(ytd_21-ytd_20)
            mtd_var = int(mtd_21-mtd_20)

            ytd_pvar = int((ytd_var/ytd_20)*100)
            mtd_pvar = int((mtd_var/mtd_20)*100)

            pl_table_l1.append([r[0], r[1], r[2], str(data_id) +'pl', ytd_21, ytd_20, mtd_21, mtd_20, ytd_var, mtd_var, ytd_pvar, mtd_pvar])
            data_id += 1

        for item in pl_table_l1:
            if item[0] == 'COGS':
                ytd_21_gp += item[4]*-1
                mtd_21_gp += item[6]*-1

                ytd_20_gp += item[5]*-1
                mtd_20_gp += item[7]*-1

            else:
                ytd_21_gp += item[4]
                mtd_21_gp += item[6]

                ytd_20_gp += item[5]
                mtd_20_gp += item[7]

        ytd_var_gp = int(ytd_21_gp - ytd_20_gp)
        mtd_var_gp = int(mtd_21_gp - mtd_20_gp)

        ytd_pvar_gp = int((ytd_var_gp/abs(ytd_20_gp))*10)
        mtd_pvar_gp = int((mtd_var_gp/abs(mtd_20_gp))*10)

        gross_profit = [ytd_21_gp, ytd_20_gp, mtd_21_gp, mtd_20_gp, ytd_var_gp, mtd_var_gp, ytd_pvar_gp, mtd_pvar_gp]

        context['pl_gross_profit'] = gross_profit

        context['pl_line1'] = pl_table_l1

        data_id = 4

        pl_table_l2 = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE s.account_level = 2

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        ''')

        row = cursor.fetchall()

        for r in row:
            ytd_21 = r[2]
            ytd_20 = int(r[2] * (random.randint(7,9)/10))

            mtd_21 = int(ytd_21/8)
            mtd_20 = int(ytd_20/8)

            ytd_var = int(ytd_21-ytd_20)
            mtd_var = int(mtd_21-mtd_20)

            ytd_pvar = int((ytd_var/ytd_20)*100)
            mtd_pvar = int((mtd_var/mtd_20)*100)
            pl_table_l2.append([r[0], r[1], r[2], str(data_id) +'pl', ytd_21, ytd_20, mtd_21, mtd_20, ytd_var, mtd_var, ytd_pvar, mtd_pvar])
            data_id += 1

        context['pl_line2'] = pl_table_l2


        #Net Income
        cursor.execute('''SELECT
        SUM(
        CASE
            WHEN L.account = "Sales" Then L.amount
            ELSE L.amount*-1
        END) as amount,

        S.ACCOUNT_BALANCE

        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        GROUP BY S.ACCOUNT_BALANCE

        ''')

        row = cursor.fetchall()

        ytd_21_ox = 0
        ytd_20_ox = 0
        mtd_21_ox = 0
        mtd_20_ox = 0

        ytd_21_np = 0
        ytd_20_np= 0
        mtd_21_np = 0
        mtd_20_np = 0

        ytd_var_np = 0
        ytd_pvar_np = 0
        mtd_var_np = 0
        mtd_pvar_np = 0

        for item in pl_table_l2:
            if item[1] == 'C':
                ytd_21_ox += item[4]*-1
                mtd_21_ox += item[6]*-1

                ytd_20_ox += item[5]*-1
                mtd_20_ox += item[7]*-1

            else:
                ytd_21_ox += item[4]
                mtd_21_ox += item[6]

                ytd_20_ox += item[5]
                mtd_20_ox += item[7]



        ytd_21_np = ytd_21_gp - ytd_21_ox
        ytd_20_np = ytd_20_gp - ytd_20_ox
        mtd_21_np = mtd_21_gp - mtd_21_ox
        mtd_20_np = mtd_20_gp - mtd_20_ox

        ytd_var_np = int(ytd_21_np - ytd_20_np)
        mtd_var_np = int(mtd_21_np - mtd_20_np)

        ytd_pvar_np = int((ytd_var_np/abs(ytd_20_np))*10)
        mtd_pvar_np = int((mtd_var_np/abs(mtd_20_np))*10)

        net_profit = [ytd_21_np, ytd_20_np, mtd_21_np, mtd_20_np, ytd_var_np, mtd_var_np, ytd_pvar_np, mtd_pvar_np]

        context['pl_net_profit'] = net_profit


        cache.set(lookup_id, context, 60*60*24)


        return render(request, self.template_name, context)


class GatherDataViewGL(TemplateView):

    def get(self,request):
        cursor = connection.cursor()
        data = {}
        group_name = request.GET.get('group_select', None)
        branch_select = request.GET.get('branch_select', None)
        month_select = request.GET.get('month_select', None)


        group_name = process_sql(group_name, 'group_name')
        branch_select = process_sql(branch_select, 'branch')
        month_select = process_sql(month_select, 'month')

        print(group_name)
        print(branch_select)
        print(month_select)

        lookup_id = group_name + branch_select + month_select + 'gl'
        cache_get = cache.get(lookup_id)

        if cache_get:
            print('Cache Found, loading')
            data = cache_get
            return JsonResponse(data)
        else:
            print('Cache not found, quering context')


        main_data = []
        cursor.execute("""
        SELECT
        L.group_name,
        L.year,
        L.period,
        L.account,
        L.branch,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE 1=1
        {}
        {}
        {}

        GROUP BY
        L.group_name,
        L.year,
        L.period,
        L.account,
        L.branch

        """.format(group_name, branch_select, month_select))
        row = cursor.fetchall()

        for r in row:
            main_data.append([r[0], r[1], r[2], r[3], r[4], r[5]])

        data['main_data'] = main_data

        pl_table = []
        cursor.execute('''SELECT account, SUM(amount) as amount FROM LEDGER GROUP BY account''')
        row = cursor.fetchall()

        for r in row:
            pl_table.append([r[0], r[1]])

        data['pl_table'] = pl_table


        pl_table_l1 = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE s.account_level = 1
        {}
        {}
        {}

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        '''.format(group_name, branch_select, month_select))

        row = cursor.fetchall()

        data_id = 1

        ytd_21_gp = 0
        ytd_20_gp = 0
        mtd_21_gp = 0
        mtd_20_gp = 0
        ytd_var_gp = 0
        ytd_pvar_gp = 0
        mtd_var_gp = 0
        mtd_pvar_gp = 0

        for r in row:
            ytd_21 = r[2]
            ytd_20 = int(r[2] * (random.randint(7,9)/10))

            mtd_21 = int(ytd_21/8)
            mtd_20 = int(ytd_20/8)

            ytd_var = int(ytd_21-ytd_20)
            mtd_var = int(mtd_21-mtd_20)

            ytd_pvar = int((ytd_var/ytd_20)*100)
            mtd_pvar = int((mtd_var/mtd_20)*100)

            pl_table_l1.append([r[0], r[1], r[2], str(data_id) +'pl', ytd_21, ytd_20, mtd_21, mtd_20, ytd_var, mtd_var, ytd_pvar, mtd_pvar])
            data_id += 1

        for item in pl_table_l1:
            if item[0] == 'COGS':
                ytd_21_gp += item[4]*-1
                mtd_21_gp += item[6]*-1

                ytd_20_gp += item[5]*-1
                mtd_20_gp += item[7]*-1

            else:
                ytd_21_gp += item[4]
                mtd_21_gp += item[6]

                ytd_20_gp += item[5]
                mtd_20_gp += item[7]

        ytd_var_gp = int(ytd_21_gp - ytd_20_gp)
        mtd_var_gp = int(mtd_21_gp - mtd_20_gp)

        ytd_pvar_gp = int((ytd_var_gp/abs(ytd_20_gp))*10)
        mtd_pvar_gp = int((mtd_var_gp/abs(mtd_20_gp))*10)

        gross_profit = [ytd_21_gp, ytd_20_gp, mtd_21_gp, mtd_20_gp, ytd_var_gp, mtd_var_gp, ytd_pvar_gp, mtd_pvar_gp]

        data['pl_gross_profit'] = gross_profit

        data['pl_line1'] = pl_table_l1

        data_id = 4

        pl_table_l2 = []
        cursor.execute('''SELECT
        L.account,
        S.sort_order,
        SUM(L.amount) as amount
        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE s.account_level = 2
        {}
        {}
        {}

        GROUP BY
        L.account,
        S.sort_order

        ORDER BY
        S.sort_order

        '''.format(group_name, branch_select, month_select))

        row = cursor.fetchall()

        for r in row:
            ytd_21 = r[2]
            ytd_20 = int(r[2] * (random.randint(7,9)/10))

            mtd_21 = int(ytd_21/8)
            mtd_20 = int(ytd_20/8)

            ytd_var = int(ytd_21-ytd_20)
            mtd_var = int(mtd_21-mtd_20)

            ytd_pvar = int((ytd_var/ytd_20)*100)
            mtd_pvar = int((mtd_var/mtd_20)*100)
            pl_table_l2.append([r[0], r[1], r[2], str(data_id) +'pl', ytd_21, ytd_20, mtd_21, mtd_20, ytd_var, mtd_var, ytd_pvar, mtd_pvar])
            data_id += 1

        data['pl_line2'] = pl_table_l2


        #Net Income
        cursor.execute('''SELECT
        SUM(
        CASE
            WHEN L.account = "Sales" Then L.amount
            ELSE L.amount*-1
        END) as amount,

        S.ACCOUNT_BALANCE

        FROM LEDGER as L
        LEFT JOIN ACCOUNT_SORT as S
        ON L.account = S.account

        WHERE 1=1
        {}
        {}
        {}

        GROUP BY S.ACCOUNT_BALANCE

        '''.format(group_name, branch_select, month_select))

        row = cursor.fetchall()

        ytd_21_ox = 0
        ytd_20_ox = 0
        mtd_21_ox = 0
        mtd_20_ox = 0

        ytd_21_np = 0
        ytd_20_np= 0
        mtd_21_np = 0
        mtd_20_np = 0

        ytd_var_np = 0
        ytd_pvar_np = 0
        mtd_var_np = 0
        mtd_pvar_np = 0

        for item in pl_table_l2:
            if item[1] == 'C':
                ytd_21_ox += item[4]*-1
                mtd_21_ox += item[6]*-1

                ytd_20_ox += item[5]*-1
                mtd_20_ox += item[7]*-1

            else:
                ytd_21_ox += item[4]
                mtd_21_ox += item[6]

                ytd_20_ox += item[5]
                mtd_20_ox += item[7]



        ytd_21_np = ytd_21_gp - ytd_21_ox
        ytd_20_np = ytd_20_gp - ytd_20_ox
        mtd_21_np = mtd_21_gp - mtd_21_ox
        mtd_20_np = mtd_20_gp - mtd_20_ox

        ytd_var_np = int(ytd_21_np - ytd_20_np)
        mtd_var_np = int(mtd_21_np - mtd_20_np)

        ytd_pvar_np = int((ytd_var_np/abs(ytd_20_np))*10)
        mtd_pvar_np = int((mtd_var_np/abs(mtd_20_np))*10)

        net_profit = [ytd_21_np, ytd_20_np, mtd_21_np, mtd_20_np, ytd_var_np, mtd_var_np, ytd_pvar_np, mtd_pvar_np]

        data['pl_net_profit'] = net_profit


        data['is_taken'] = [1,1]
        cache.set(lookup_id, data, 60*60*24)

        return JsonResponse(data)
