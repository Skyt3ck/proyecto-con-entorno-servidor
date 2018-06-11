from django import forms

from .models import EnvioPost,GustoCliente,Gustos


class PostForm(forms.ModelForm):
    class Meta:
        model = EnvioPost
        fields = [

            "MRZ",
            "hotel",
            "app"


        ]

class GustosForm(forms.ModelForm):
    gustos=Gustos.objects.all().values()
    class Meta:
        gustos = Gustos.objects.all().values()
        model = GustoCliente
        fields = [
            "interes1",
            "interes2",
            "interes3",
            "interes4",
            "interes5",
            "interes6",
            "empresa"
        ]
        fields_required = [
            "interes6"
        ]
        labels = {
            "interes1": gustos[0]["nombreGusto"],
            "interes2": gustos[1]["nombreGusto"],
            "interes3": gustos[2]["nombreGusto"],
            "interes4": gustos[3]["nombreGusto"],
            "interes5": gustos[4]["nombreGusto"],
            "interes6": gustos[5]["nombreGusto"]
        }


class ExcellForm(forms.ModelForm):
    class Meta:

        fields = [
            "Descargar"
        ]

