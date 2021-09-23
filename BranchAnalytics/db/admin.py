from django.contrib import admin
from .models import UserSelections, MainData, UserBookmarks, MainDataAR, LedgerData, AccountSortOrder, Ratings, Movies

admin.site.register(UserSelections)
admin.site.register(MainData)
admin.site.register(MainDataAR)
admin.site.register(UserBookmarks)
admin.site.register(LedgerData)
admin.site.register(AccountSortOrder)
admin.site.register(Ratings)
admin.site.register(Movies)
