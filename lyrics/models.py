from django.db import models

class Lyrics_mod(models.Model):
    lyrics_nm = models.CharField(max_length=100)
    lyrics = models.CharField(max_length=2000)
    singer = models.CharField(max_length=100)
    nos = models.CharField(max_length=6)
    date = models.CharField(max_length=10)
    genre = models.CharField(max_length=40)
    music_type = models.CharField(max_length=20)
    class Meta:
        db_table = "lyrics"
