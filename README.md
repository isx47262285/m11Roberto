# examen servidor pop aws  
## roberto altamirano martinez


#### arquitectura 

en un cloud de amazon, tendremos activo nuestro servidor en un docker 
el cual contendra la bustia de entrada de correos de cada usuario (pere, marta)

por otro lado como host-cliente,  tendremos nuestra maquina en la cual 
tendremos conectividad al servidor aws mediante un tunel ssh directo 
al servidor de correo pop.

#### comenzaremos por la configuracion de aws

arrancamos una instancia en amazon cloud y conectamos. ( creamos claves, etc)

```
[isx47262285@i15 ~]$ ssh -i examen_key.pem fedora@18.130.196.96
```

haremos las instalaciones necesarias:

nos convertimos en root
```
[fedora@ip-172-31-22-139 ~]$ sudo /bin/bash
```

instalaciones:

```
[root@ip-172-31-22-139 fedora]# dnf -y install nmap docker xinetd
```

configuramos arancamos y configuramos xinetd



crearemos un docker 

docker basado en nethost con los servicios del paquete iw-imap, creamos la imagen:
```
docker build -t robert72004/m11roberto:v1 .
```

arrancamos un docker prueba 


```
# docker network create popnet

# docker run --rm --name popserver -h popserver --network popnet --privileged -d robert72004/m11roberto:v1 

```

desde dentro del docker comprovamos los puertos abiertos

```
[root@ip-172-31-22-139 fedora]# docker exec -it popserver /bin/bash
[root@popserver docker]# nmap localhost
```

los puertos 110 y 995 estan abiertos 

 
