from django.contrib import admin
from .models import UserSelections, MainData, UserBookmarks, MainDataAR

admin.site.register(UserSelections)
admin.site.register(MainData)
admin.site.register(MainDataAR)
admin.site.register(UserBookmarks)
