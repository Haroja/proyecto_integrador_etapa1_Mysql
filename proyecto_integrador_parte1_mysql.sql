-- 1. Eliminar la base de datos si existe
DROP DATABASE IF EXISTS LABORATORIO;

-- 2. Crear la base de datos
CREATE DATABASE LABORATORIO;

-- 3. Usar la base de datos creada
USE LABORATORIO;


-- Crear la tabla FACTURAS
CREATE TABLE FACTURAS (
    Letra CHAR(1),               
    Numero INTEGER,              
    ClienteID INTEGER,           
    ArticuloID INTEGER,          
    Fecha DATE,                  
    Monto DOUBLE,                
    PRIMARY KEY (Letra, Numero)  
);

-- Crear la tabla ARTICULOS
CREATE TABLE ARTICULOS (
    ArticuloID INTEGER PRIMARY KEY, 
    Nombre VARCHAR(50),             
    Precio DOUBLE,                  
    Stock INTEGER                   
);

-- Crear la tabla CLIENTES
CREATE TABLE CLIENTES (
    ClienteID INTEGER PRIMARY KEY, 
    Nombre VARCHAR(25),            
    Apellido VARCHAR(25),          
    CUIT CHAR(16),                 
    Dirección VARCHAR(50),         
    Comentarios VARCHAR(50)        
);


-- Etapa 1.2: Modificar estructuras

-- 1.Modificar la tabla FACTURAS
-- a. Cambiar el nombre del campo ClienteID por IDCliente
ALTER TABLE FACTURAS CHANGE ClienteID IDCliente INTEGER;

-- b. Cambiar el nombre del campo ArticuloID por IDArticulo
ALTER TABLE FACTURAS CHANGE ArticuloID IDArticulo INTEGER;

-- c. Asignar la restricción UNSIGNED al campo Monto
ALTER TABLE FACTURAS MODIFY Monto DOUBLE UNSIGNED;


-- 2.Modificar la tabla ARTICULOS
-- a. Cambiar el nombre del campo ArticuloID por IDArticulo
ALTER TABLE ARTICULOS CHANGE ArticuloID IDArticulo INTEGER;

-- b. Cambiar el tipo de dato del campo Nombre para que admita hasta 75 caracteres
ALTER TABLE ARTICULOS MODIFY Nombre VARCHAR(75);

-- c. Asignar las restricciones UNSIGNED y NOT NULL al campo Precio
ALTER TABLE ARTICULOS MODIFY Precio DOUBLE UNSIGNED NOT NULL;

-- d. Asignar las restricciones UNSIGNED y NOT NULL al campo Stock
ALTER TABLE ARTICULOS MODIFY Stock INTEGER UNSIGNED NOT NULL;


-- 3. Modificar la tabla CLIENTES
-- a. Cambiar el nombre del campo ClienteID por IDCliente
ALTER TABLE CLIENTES CHANGE ClienteID IDCliente INTEGER;

-- b. Cambiar el tipo de dato del campo Nombre para que admita hasta 30 caracteres
-- y asignar la restricción NOT NULL
ALTER TABLE CLIENTES MODIFY Nombre VARCHAR(30) NOT NULL;

-- c. Cambiar el tipo de dato del campo Apellido para que admita hasta 35 caracteres
-- y asignar la restricción NOT NULL
ALTER TABLE CLIENTES MODIFY Apellido VARCHAR(35) NOT NULL;

-- d. Cambiar el nombre del campo Comentarios por Observaciones
-- y su tipo de dato para que admita hasta 255 caracteres
ALTER TABLE CLIENTES CHANGE Comentarios Observaciones VARCHAR(255);



-- Etapa 1.3: Insertar registros
INSERT INTO FACTURAS (Letra, Numero, IDCliente, IDArticulo, Fecha, Monto) VALUES
('A', 28, 14, 335, '2021-03-18', 1589.50),
('A', 39, 26, 157, '2021-04-12', 979.75),
('B', 8, 17, 95, '2021-04-25', 513.35),
('B', 12, 5, 411, '2021-05-03', 2385.70),
('B', 19, 50, 157, '2021-05-26', 979.75);

INSERT INTO ARTICULOS (IDArticulo, Nombre, Precio, Stock) VALUES
(95, 'Webcam con Micrófono Plug & Play', 513.35, 39),
(157, 'Apple AirPods Pro', 979.75, 152),
(335, 'Lavasecarropas Automático Samsung', 1589.50, 1),
(411, 'Gloria Trevi / Gloria / CD+DVD', 2385.70, 2);

INSERT INTO CLIENTES (IDCliente, Nombre, Apellido, CUIT, Dirección, Observaciones) VALUES
(5, 'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA', 'VIP'),
(14, 'Gloria', 'Fernández', '23-35965852-5', 'Constitución 323', ''),
(17, 'Gonzalo', 'López', '23-33587416-0', 'Arias 2624', 'GBA'),
(26, 'Carlos', 'García', '23-42321230-9', 'Pasteur 322 - 2ºC', 'VIP'),
(50, 'Micaela', 'Altieri', '23-22885566-5', 'Santamarina 1255', 'GBA');


















 








