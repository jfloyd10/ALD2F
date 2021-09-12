from django.contrib import admin
from .models import UserSelections, MainData, UserBookmarks, MainDataAR, LedgerData, AccountSortOrder

admin.site.register(UserSelections)
admin.site.register(MainData)
admin.site.register(MainDataAR)
admin.site.register(UserBookmarks)
admin.site.register(LedgerData)
admin.site.register(AccountSortOrder)
