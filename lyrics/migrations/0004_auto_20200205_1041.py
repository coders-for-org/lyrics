# Generated by Django 2.2.3 on 2020-02-05 05:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lyrics', '0003_lyrics_admin_mod'),
    ]

    operations = [
        migrations.AlterField(
            model_name='lyrics_admin_mod',
            name='ad_pass',
            field=models.CharField(max_length=140),
        ),
    ]