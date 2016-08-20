from django.conf.urls import url
from eventex.core.views import home

urlpatterns = [
    url(r'^$', home, name='home'),
]
