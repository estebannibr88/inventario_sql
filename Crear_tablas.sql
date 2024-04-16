-- Este script crea las tablas necesarias para el sistema de gestión de inventario de un almacén de electrodomésticos.

-- Tabla de Productos: Almacena información sobre los productos disponibles en el inventario.
CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del producto.
    nombre VARCHAR(100), -- Nombre del producto.
    descripcion TEXT, -- Descripción detallada del producto.
    precio DECIMAL(10,2), -- Precio unitario del producto.
    cantidad_inventario INT, -- Cantidad disponible en el inventario.
    id_proveedor INT, -- Clave foránea que referencia al proveedor del producto.
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor) -- Restricción de integridad referencial.
);

-- Tabla de Proveedores: Almacena información sobre los proveedores de los productos.
CREATE TABLE Proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del proveedor.
    nombre_empresa VARCHAR(100), -- Nombre de la empresa proveedora.
    contacto_nombre VARCHAR(100), -- Nombre del contacto en la empresa proveedora.
    email VARCHAR(100), -- Dirección de correo electrónico del proveedor.
    telefono VARCHAR(20) -- Número de teléfono del proveedor.
);

-- Tabla de Pedidos: Almacena información sobre los pedidos realizados.
CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del pedido.
    fecha_pedido DATE, -- Fecha en que se realizó el pedido.
    estado_pedido ENUM('pendiente', 'entregado', 'cancelado') DEFAULT 'pendiente' -- Estado actual del pedido.
);

-- Tabla de Detalles del Pedido: Almacena los detalles de cada pedido realizado.
CREATE TABLE Detalles_Pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del detalle del pedido.
    id_pedido INT, -- Clave foránea que referencia al pedido al que pertenece el detalle.
    id_producto INT, -- Clave foránea que referencia al producto del detalle.
    cantidad_solicitada INT, -- Cantidad del producto solicitada en el pedido.
    precio_unitario DECIMAL(10,2), -- Precio unitario del producto en el pedido.
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido), -- Restricción de integridad referencial.
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto) -- Restricción de integridad referencial.
);
