# apirestgvs
API RestFull dinámica para MySQL con ModfHarbour y Harbour Nativo

Basado en:
https://www.youtube.com/playlist?list=PLEbpWR0TUWTYj-822YDewMS0188i2e4O2

1.- Configurar el archivo: C:\xampp\apache\conf\extra\httpd-vhosts.conf

<VirtualHost *:80>
    DocumentRoot "C:\xampp\htdocs"
    ServerName localhost
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot "C:\xampp\htdocs\apirestgvs"
    ServerName apirest.com
</VirtualHost>

El primer bloque sirve para redireccionar localhost y el dasdboard de Apache


2.- Configurar el archivo: C:\Windows\System32\drivers\etc\hosts

	127.0.0.1       localhost
	127.0.0.1       apirest.com

    Sirve para redireccionar sitio web a nuestro servidor local

3.- Tener en cuenta como se debe crear la BD en MySQL. 
    Refs.:
    https://www.youtube.com/watch?v=44Kmt7gpnIw&list=PLEbpWR0TUWTYj-822YDewMS0188i2e4O2&index=2
    https://www.youtube.com/watch?v=wz84GUrRUZQ&list=PLEbpWR0TUWTYj-822YDewMS0188i2e4O2&index=3
    
4.- Se usa la estructura MVC y se hace peticiones a la BD a traves de métodos:
    GET, POST, PUT y DELETE
   
    Se devuelve respuestas en formato JSON
    json: 
        status => nStatus
        result => cMsgStatus

5.- Habilitar la ruta principal
    En este caso, las vistas estan en la carpeta rutas



SyS-GVS 2025
