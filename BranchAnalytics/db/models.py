from django.db import models
from django.contrib.auth.models import User


class UserSelections(models.Model):

    user = models.ForeignKey(User, on_delete=models.CASCADE)
    user_selections = models.TextField(blank=True, null=True)
    user_selections_last_updated = models.DateTimeField(blank=True, null=True)
    user_selections_created_on = models.DateTimeField(auto_now = True)


    def save(self, *args, **kwargs):
        self.user_last_updated = timezone.now()
        super(UserProfile, self).save(*args, **kwargs)


    def __str__(self):
        return ('{}'.format(self.user_first_name))


    class Meta:
        db_table = "USER_SELECTIONS_MODEL"
        verbose_name = 'USER_SELECTIONS_MODEL'
        verbose_name_plural = 'USER_SELECTIONS_MODEL'


class MainData(models.Model):

    data_id = models.AutoField(primary_key=True)
    branch = models.CharField(max_length=100, blank=True, null=True)
    state = models.CharField(max_length=100, blank=True, null=True)
    products = models.CharField(max_length=100, blank=True, null=True)
    price = models.IntegerField(blank=True, null=True)
    cost = models.IntegerField(blank=True, null=True)
    gp = models.IntegerField(blank=True, null=True)
    source = models.CharField(max_length=100, blank=True, null=True)
    date = models.DateField(blank=True, null=True)
    salesrep = models.CharField(max_length=100, blank=True, null=True)
    customer = models.CharField(max_length=100, blank=True, null=True)
    industry = models.CharField(max_length=100, blank=True, null=True)
    group_name = models.CharField(max_length=100, blank=True, null=True)
    month = models.CharField(max_length=100, blank=True, null=True)
    year = models.CharField(max_length=100, blank=True, null=True)


    class Meta:
        db_table = "MAIN_DATA"
        verbose_name = 'MAIN_DATA'
        verbose_name_plural = 'MAIN_DATA'



class UserBookmarks(models.Model):

    bookmark_id = models.AutoField(primary_key=True)
    page = models.CharField(max_length =100, blank=True, null=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    group_select = models.CharField(max_length=200, default='starter')
    branch_select = models.CharField(max_length=200, default='starter')
    salesrep_select = models.CharField(max_length=200, default='starter')
    product_select = models.CharField(max_length=200, default='starter')
    month_select = models.CharField(max_length=200, default='starter')
    industry_select = models.CharField(max_length=200, default='starter')
    created_on = models.DateTimeField(auto_now = True)

    def __str__(self):
        return ('{}'.format(self.bookmark_id))


    class Meta:
        db_table = "USER_BOOKMARKS_MODEL"
        verbose_name = 'USER_BOOKMARKS_MODEL'
        verbose_name_plural = 'USER_BOOKMARKS_MODEL'



class MainDataAR(models.Model):


    data_id = models.AutoField(primary_key=True)
    branch = models.CharField(max_length=100, blank=True, null=True)
    group_name = models.CharField(max_length=100, blank=True, null=True)
    month = models.CharField(max_length=100, blank=True, null=True)
    year = models.CharField(max_length=100, blank=True, null=True)
    customer = models.CharField(max_length=100, blank=True, null=True)
    type = models.CharField(max_length=100, blank=True, null=True)
    item = models.CharField(max_length=100, blank=True, null=True)
    aging = models.CharField(max_length=100, blank=True, null=True)
    amount = models.IntegerField(blank=True, null=True)
    date = models.DateField(blank=True, null=True)

    def __str__(self):
        return ('{}'.format(self.data_id))

    class Meta:
        db_table = "MAIN_DATA_AR"
        verbose_name = 'MAIN_DATA_AR'
        verbose_name_plural = 'MAIN_DATA_AR'


class LedgerData(models.Model):


    data_id = models.AutoField(primary_key=True)
    group_name = models.CharField(max_length=100, blank=True, null=True)
    year = models.CharField(max_length=100, blank=True, null=True)
    period = models.CharField(max_length=100, blank=True, null=True)
    branch = models.CharField(max_length=100, blank=True, null=True)
    account = models.CharField(max_length=100, blank=True, null=True)
    amount = models.IntegerField(default=0)


    def __str__(self):
        return ('{}'.format(self.data_id))

    class Meta:
        db_table = "LEDGER"
        verbose_name = 'LEDGER'
        verbose_name_plural = 'LEDGER'


class AccountSortOrder(models.Model):
    sort_id = models.AutoField(primary_key=True)
    account = models.CharField(max_length=100, blank=True, null=True)
    sort_order = models.CharField(max_length=100, blank=True, null=True)
    subtotal_follow = models.CharField(max_length=100, blank=True, null=True)
    subtotal = models.CharField(max_length=100, blank=True, null=True)
    account_level = models.CharField(max_length=100, blank=True, null=True)
    account_balance = models.CharField(max_length=100, blank=True, null=True)


    def __str__(self):
        return ('{} - {}'.format(self.account, self.sort_order))

    class Meta:
        db_table = "ACCOUNT_SORT"
        verbose_name = 'ACCOUNT_SORT'
        verbose_name_plural = 'ACCOUNT_SORT'




class Ratings(models.Model):
    watch_id = models.AutoField(primary_key=True)
    userId = models.CharField(max_length=100, blank=True, null=True)
    movieId = models.CharField(max_length=100, blank=True, null=True)
    rating = models.CharField(max_length=100, blank=True, null=True)
    timestamp = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return ('{} - {}'.format(self.watch_id, self.userId))

    class Meta:
        db_table = "RATINGS_MODEL"
        verbose_name = 'RATINGS_MODEL'
        verbose_name_plural = 'RATINGS_MODEL'

class Movies(models.Model):
    movie_trans_id = models.AutoField(primary_key=True)
    movieId = models.CharField(max_length=100, blank=True, null=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    genre = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return ('{} - {}'.format(self.movie_trans_id, self.movieId))

    class Meta:
        db_table = "MOVIES_MODEL"
        verbose_name = 'MOVIES_MODEL'
        verbose_name_plural = 'MOVIES_MODEL'
