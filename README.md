# Base de datos para un videoclub
![](https://github.com/illegalvoidundead/Videoclub/blob/main/images/video-rentals.jpg)

En este proyecto he desarrollado un esquema SQL para la  gestión de un videoclub. El objetivo principal ha sido recuperar una serie de tablas de una antigua base de datos y a partir de ella crear un esquema que permita administrar eficientemente el negocio. Para la limpieza, transformacion y organización de las tablas he utilizado la librería Pandas de Python de y esquema SQL lo he creado utilizando MySQL Workbench, una herramienta que facilita el diseño y la administración de bases de datos.



## Características del videoclub
![](https://github.com/illegalvoidundead/Videoclub/blob/main/images/videoclub.jpeg)

El esquema SQL desarrollado está destinado a un videoclub que ofrece una amplia selección de películas a sus clientes. Lo elementos que componen dicho esquema son los siguientes:

Películas: El videoclub cuenta con una extensa colección de películas, cada una de las cuales está representada en la tabla "film". Cada película tiene un título, una descripción, una duración de alquiler, una tarifa de alquiler, una longitud, un costo de reemplazo, una clasificación y características especiales.

Actores: Los actores que participan en las películas están representados en la tabla "actor". Cada actor tiene un identificador, un nombre y un apellido.
Categorías: Las películas se agrupan en diferentes categorías, que se representan en la tabla "category". Cada categoría tiene un identificador y un nombre.

Idiomas: Las películas están disponibles en diferentes idiomas, que se representan en la tabla "language". Cada idioma tiene un identificador y un nombre.

Inventario: El videoclub mantiene un inventario de las películas disponibles para alquilar. Esta información se registra en la tabla "inventory", que tiene un identificador de inventario, un identificador de película y un identificador de tienda.

Clientes: El videoclub tiene una base de datos de clientes, que se representa en la tabla "customer". Cada cliente tiene un identificador, un nombre, un apellido, una dirección de correo electrónico, un número de teléfono, una dirección, una ciudad, un estado, un país y un código postal.

Alquileres: Los alquileres de películas se registran en la tabla "rental", que tiene un identificador de alquiler, una fecha de alquiler, un identificador de inventario, un identificador de cliente, una fecha de devolución y un identificador de personal.


## Beneficios del esquema SQL
![](https://github.com/illegalvoidundead/Videoclub/blob/main/images/Esquema.jpeg)
Para el desarrollo de la base de datos de este videoclub hemos utilizado un esquema SQL, el cual ofrece los siguientes beneficios:

Organización de la información: El esquema SQL permite almacenar y organizar de manera eficiente la información sobre películas, actores, categorías, idiomas, inventario, clientes y alquileres.

Facilidad de acceso a la información: Gracias al esquema SQL, es posible realizar consultas y obtener rápidamente la información necesaria sobre películas, actores, clientes, alquileres, etc.

Eficiencia en la gestión del negocio: El esquema SQL facilita la gestión del videoclub, permitiendo un seguimiento preciso de las películas disponibles, los clientes, los alquileres, etc.

En resumen, el esquema SQL desarrollado para este videoclub ofrece una solución eficiente y efectiva para la gestión de un negocio de alquiler de películas. Gracias a su diseño cuidadoso y a sus características útiles, este esquema SQL puede contribuir significativamente al éxito y la rentabilidad del videoclub.

![](https://github.com/illegalvoidundead/Videoclub/blob/main/images/videodrome07.gif)
