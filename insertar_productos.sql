-- Este script inserta datos de ejemplo en la tabla de Productos.

-- Insertar productos
INSERT INTO Productos (nombre, descripcion, precio, cantidad_inventario, id_proveedor)
VALUES
    ('Lavadora LG 7kg', 'Lavadora de carga frontal, capacidad de 7kg.', 499.99, 10, 1),
    ('Refrigerador Samsung', 'Refrigerador de acero inoxidable, capacidad de 500 litros.', 899.99, 5, 1),
    ('Televisor Sony 55" 4K', 'Televisor LED Ultra HD de 55 pulgadas.', 699.99, 8, 2),
    ('Licuadora Oster', 'Licuadora de alto rendimiento con motor de 1000W.', 79.99, 15, 2);
