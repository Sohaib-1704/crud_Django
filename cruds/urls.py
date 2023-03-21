from django.urls import path
from cruds.views import Crud, CrudDetail

urlpatterns = [
    path('', Crud.as_view()),
    path('<str:pk>', CrudDetail.as_view())
]