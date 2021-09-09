from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from datetime import datetime
from django.utils import timezone


class UserProfile(models.Model):

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    user_first_name = models.CharField(max_length=50, blank=True, null=True)
    user_last_updated = models.DateTimeField(blank=True, null=True)
    user_created_on = models.DateTimeField(auto_now = True)

    ardash_piechart = models.CharField(blank=True, null=True, max_length = 50)


    def save(self, *args, **kwargs):
        self.user_last_updated = timezone.now()
        super(UserProfile, self).save(*args, **kwargs)


    def __str__(self):
        return ('{}'.format(self.user_first_name))


    @receiver(post_save, sender=User)
    def create_user_profile(sender, instance, created, **kwargs):
        if created:
            UserProfile.objects.create(user=instance)

    @receiver(post_save, sender=User)
    def save_user_profile(sender, instance, **kwargs):
        instance.userprofile.save()

    class Meta:
        db_table = "USER_PROFILE_MODEL"
        verbose_name = 'USER_PROFILE_MODEL'
        verbose_name_plural = 'USER_PROFILE_MODEL'
