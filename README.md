# ProyectoLPII
Contiene: JSP y paquetes.

Para poder clonar el respositorio deben seguir los siguientes pasos:
1.-Crear una carpeta en el escritorio
2.-Ejecutar la carpeta en eclipse e instalar el servidor Tomcat
3.-Una vez instalado el servidor regresamos al link del respositorio, pulsen el boton "Clone or Download", les aparecera este link: 
    https://github.com/jpjordan10/ProyectoLPII.git
4.-Ahora deberan ingresar al consola de comandos o (CMDER). Una vez ejecutada la consola deberan ingresar a la carpeta:
cd Desktop\
cd [NombreDeCarpeta]\
git clone https://github.com/jpjordan10/ProyectoLPII.git
5.-Si vamos a nuestro eclipse no aparecera el proyecto, eso es porque no lo hemos exportado, lo exportamos haciendo lo siguiente:
Denajo de la carpeta "Servers" en nuestro eclipse pulsamos click derecho>Import>Import>General>Existing projects into workspace
Buscamos el repositorio que debe estar en nuestra carpeta en la que clonamos y la seleccionamos>Finish y aparecera el proyecto
6.-Ahora entramos a la carpeta ProyectoLPII desde la consola y escribimos los siguientes comandos:
cd ProyectoLPII\
git add .
git commit -m"[Escribir cualquier mensaje]"
Eso seria todo

git push origin master ---> Este comando permite que el repositorio se suba a internet con todos los cambios
git pull origin master ---> Este comando permite actualizar el repositorio extraidos desde github, siempre ejecuntelo ya que el repositorio estara en constante cambio.
