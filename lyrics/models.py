from django.db import models

class Lyrics_mod(models.Model):
    lyrics_nm = models.CharField(max_length=100)
    lyrics = models.CharField(max_length=2000)
    singer = models.CharField(max_length=100)
    nos = models.CharField(max_length=6)
    date = models.CharField(max_length=10)
    genre = models.CharField(max_length=40)
    music_type = models.CharField(max_length=20)
    lyrics_banner = models.ImageField(upload_to='lyrics_banner/', null=True)
    is_live = models.BooleanField(null=True)
    class Meta:
        db_table = "lyrics"

class Lyrics_admin_mod(models.Model):
    ad_uname = models.CharField(max_length=50)
    ad_pass = models.CharField(max_length=140)
    log_type = models.CharField(max_length=20)
    class Meta:
        db_table = "tune"