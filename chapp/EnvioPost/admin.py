from django.contrib import admin
from EnvioPost.models import EnvioPost,GustoCliente,Gustos
# Register your models here.


class EnvioPostAdmin(admin.ModelAdmin):
    list_display = ["id", "MRZ"]
    # list_display_links = ["MRZ"]
    # list_filter= ["MRZ"]
    search_fields = ["id"]
    #list_editable = ["id"]
    class Meta:
        model = EnvioPost
admin.site.register(EnvioPost , EnvioPostAdmin)
class GustoClienteAdmin(admin.ModelAdmin):
    list_display = ["idCliente"]
    # list_display_links = ["MRZ"]
    # list_filter= ["MRZ"]
    search_fields = ["idCliente"]
    #list_editable = ["id"]
    class Meta:
        model = GustoCliente
admin.site.register(GustoCliente , GustoClienteAdmin)

class GustosAdmin(admin.ModelAdmin):
    list_display = [ "nombreGusto"]

    class Meta:
        model = Gustos
admin.site.register(Gustos , GustosAdmin)