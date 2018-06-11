from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect, StreamingHttpResponse
from django.http import HttpRequest

import urllib
import urllib.parse
import urllib.request

from .models import EnvioPost, Gustos, GustoCliente
from .forms import PostForm, GustosForm

import datetime
import json
import csv


# Create your views here.



def envioPost_wellcome(request, id=None):
    objeto=EnvioPost.objects.get(id=id)
    datosRespuesta=json.loads(objeto.respuesta[2:len(objeto.respuesta)-1])

    form =GustosForm(request.POST or None)
    if form.is_valid():
        instance = form.save(commit=False)
        instance.idCliente=objeto
        instance.save()
        return HttpResponseRedirect('/home/thanks/' + str(objeto.id))
    context = {
        "objeto": objeto,
        "respuesta": objeto.respuesta[1:],
        "datosRespuesta":datosRespuesta,
        "form":form

    }
    return render(request, "wellcome.html", context)

def envioPost_home(request):
    form = PostForm(request.POST or None)
    if request.method == "POST":
        print(request.POST)

    if form.is_valid():
        instance = form.save(commit=False)

        print(instance.id)

        url = 'https://pre-mrz.leanhotelsystem.com'
        values = {'MRZ': instance.MRZ,
                  'hotel': 'test',
                  'app': 'TEST'}

        data = urllib.parse.urlencode(values).encode("utf-8")
        req = urllib.request.Request(url)
        with urllib.request.urlopen(req, data=data) as f:
            resp = f.read()
            instance.respuesta=resp

        # response = urllib.request.urlopen(req)
        # the_page = response.read()
        # print(response)
        # print(the_page)
        print(str(instance.fechaRespuesta))
        instance.save()
        return HttpResponseRedirect('wellcome/'+str(instance.id))
    else:
        print("INVALIDO")

    context = {
        "form":form

    }

    return render(request, "index.html", context)





def envioPost_data(request, id=None):
    #instance= EnvioPost.objects.get(id=1)

    objetoCliente = get_object_or_404(EnvioPost.objects.filter(id=id))
    objetoGustos =  Gustos.objects.all().values()

    objetoClienteGustos = GustoCliente.objects.filter(idCliente=objetoCliente)
    listaGustos=[]
    listaGustos.append(objetoClienteGustos[0].interes1)
    listaGustos.append(objetoClienteGustos[0].interes2)
    listaGustos.append(objetoClienteGustos[0].interes3)
    listaGustos.append(objetoClienteGustos[0].interes4)
    listaGustos.append(objetoClienteGustos[0].interes5)
    listaGustos.append(objetoClienteGustos[0].interes6)
    empresa = objetoClienteGustos[0].empresa

    if request.method == "POST":
        output = []

        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename="DatosCliente'+id+'.csv"'
        writer = csv.writer(response, delimiter =';')



        # CSV Data
        writer.writerow(['ID Cliente', 'Hotel', 'App', 'Respuesta','MRZ','Fecha Checking','empresa',objetoGustos[0]["nombreGusto"],objetoGustos[1]["nombreGusto"],objetoGustos[2]["nombreGusto"],objetoGustos[3]["nombreGusto"],objetoGustos[4]["nombreGusto"],objetoGustos[5]["nombreGusto"]])
        writer.writerow([objetoCliente.id, objetoCliente.hotel, objetoCliente.app , objetoCliente.respuesta, objetoCliente.MRZ, objetoCliente.fechaRespuesta, empresa,objetoClienteGustos[0].interes1, objetoClienteGustos[0].interes2, objetoClienteGustos[0].interes3, objetoClienteGustos[0].interes4, objetoClienteGustos[0].interes5, objetoClienteGustos[0].interes6])
        output.append([objetoClienteGustos[0].interes1])
        writer.writerows(output)
        return response

    context = {

        "obj" : objetoCliente,
        "gustosCliente" : objetoClienteGustos,
        "gustos" : objetoGustos,
        "nombreGustos" : listaGustos,
        "empresa" : empresa


    }
    return render(request, "data.html", context)

def envioPost_thanks(request, id=None):
    # instance= EnvioPost.objects.get(id=1)
    objeto = get_object_or_404(EnvioPost.objects.filter(id=id))
    context = {
        "RMZ": "admin",
        "id": objeto.id,

    }
    return render(request, "thanks.html", context)