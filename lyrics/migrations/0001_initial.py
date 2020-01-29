# Generated by Django 2.2.3 on 2019-11-29 05:36

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Lyrics_mod',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lyrics_nm', models.CharField(max_length=100)),
                ('lyrics', models.CharField(max_length=2000)),
                ('singer', models.CharField(max_length=100)),
                ('nos', models.CharField(max_length=6)),
                ('date', models.CharField(max_length=10)),
                ('genre', models.CharField(max_length=40)),
                ('music_type', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'lyrics',
            },
        ),
    ]
