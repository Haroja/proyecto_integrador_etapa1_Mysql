# Proyecto: Sistema de Base de Datos para Empresa de Tecnología

Este proyecto tiene como objetivo la creación y gestión de una base de datos SQL para almacenar información sobre clientes, artículos comercializados y las ventas realizadas por una empresa de tecnología.

## Descripción del Proyecto

La base de datos incluye tres tablas principales: `CLIENTES`, `ARTÍCULOS` y `FACTURAS`. Estas tablas permiten almacenar y gestionar la información de los clientes, los artículos y las ventas realizadas en la empresa.

Las principales funcionalidades del sistema son:
- Creación de una base de datos llamada `LABORATORIO`.
- Generación de tablas para gestionar facturas, artículos y clientes.
- Modificaciones en la estructura de las tablas, como cambios de nombres de campos, tipos de datos, y asignación de restricciones.
- Inserción de datos en las tablas.

## Estructura del Proyecto

### Tablas

1. **FACTURAS**
   - `Letra` (char) - Parte de la clave primaria (PK).
   - `Número` (integer) - Parte de la clave primaria (PK).
   - `IDCliente` (integer) - Identificador del cliente (FK).
   - `IDArticulo` (integer) - Identificador del artículo (FK).
   - `Fecha` (date) - Fecha de la factura.
   - `Monto` (double) - Monto de la factura (con restricción `UNSIGNED`).

2. **ARTÍCULOS**
   - `IDArticulo` (integer) - Clave primaria (PK).
   - `Nombre` (varchar(75)) - Nombre del artículo.
   - `Precio` (double) - Precio del artículo (con restricciones `UNSIGNED` y `NOT NULL`).
   - `Stock` (integer) - Cantidad de stock (con restricciones `UNSIGNED` y `NOT NULL`).

3. **CLIENTES**
   - `IDCliente` (integer) - Clave primaria (PK).
   - `Nombre` (varchar(30)) - Nombre del cliente (con restricción `NOT NULL`).
   - `Apellido` (varchar(35)) - Apellido del cliente (con restricción `NOT NULL`).
   - `CUIT` (char(16)) - CUIT del cliente.
   - `Dirección` (varchar(50)) - Dirección del cliente.
   - `Observaciones` (varchar(255)) - Comentarios adicionales sobre el cliente.

## Modificaciones Realizadas

1. **Tabla FACTURAS**
   - Se cambiaron los nombres de los campos `ClienteID` a `IDCliente` y `ArticuloID` a `IDArticulo`.
   - Se asignó la restricción `UNSIGNED` al campo `Monto`.

2. **Tabla ARTÍCULOS**
   - Se cambió el nombre del campo `ArticuloID` a `IDArticulo`.
   - Se modificó el tipo de dato del campo `Nombre` a `varchar(75)`.
   - Se asignaron las restricciones `UNSIGNED` y `NOT NULL` a los campos `Precio` y `Stock`.

3. **Tabla CLIENTES**
   - Se cambió el nombre del campo `ClienteID` a `IDCliente`.
   - Se modificaron los tipos de datos de los campos `Nombre` y `Apellido` para admitir más caracteres y hacer su carga obligatoria.
   - Se cambió el nombre del campo `Comentarios` a `Observaciones` y se amplió su tamaño a `varchar(255)`.

## Inserción de Registros

Se han insertado datos de prueba en las tablas. A continuación, se detallan algunos ejemplos:

- **FACTURAS**
  - Factura A-28: IDCliente 14, IDArticulo 335, Fecha: 2021-03-18, Monto: 1589.50
  - Factura B-12: IDCliente 5, IDArticulo 411, Fecha: 2021-05-03, Monto: 2385.70

- **ARTÍCULOS**
  - IDArticulo 157: Nombre: Apple AirPods Pro, Precio: 979.75, Stock: 152
  - IDArticulo 95: Nombre: Webcam con Micrófono Plug & Play, Precio: 513.35, Stock: 39

- **CLIENTES**
  - IDCliente 5: Nombre: Santiago González, CUIT: 23-24582359-9, Dirección: Uriburu 558 - 7ºA, Observaciones: VIP
  - IDCliente 50: Nombre: Micaela Altieri, CUIT: 23-22885566-5, Dirección: Santamarina 1255, Observaciones: GBA

## Tecnologías Utilizadas

- **MySQL**: Sistema de gestión de bases de datos relacional utilizado para crear, modificar y gestionar la base de datos.
- **SQL**: Lenguaje de consulta estructurada utilizado para interactuar con la base de datos.

## Instalación y Uso

1. Clona el repositorio en tu máquina local.
   ```bash
   git clone https://github.com/usuario/proyecto-laboratorio.git
