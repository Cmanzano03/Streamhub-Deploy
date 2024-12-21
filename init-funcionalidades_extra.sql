-- Elimina la tabla 'etiquetas' si ya existe
DROP TABLE IF EXISTS etiquetas;

-- Crea la tabla 'etiquetas' con dos columnas: 'id' y 'nombre'
CREATE TABLE etiquetas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Inserta ejemplos de categorías
INSERT INTO etiquetas (nombre) VALUES 
    ('Thriller'),
    ('Comedia'),
    ('Acción'),
    ('Drama'),
    ('Aventura'),
    ('Ciencia Ficción'),
    ('Romance'),
    ('Animación'),
    ('Terror'),
    ('Documental');

DROP TABLE IF EXISTS mi_lista;

CREATE TABLE mi_lista (
    id_usuario INT NOT NULL,
    id_contenido INT NOT NULL,
    PRIMARY KEY (id_usuario, id_contenido)
);

INSERT INTO mi_lista (id_usuario, id_contenido) VALUES
(1, 1),
(1, 3),
(2, 3),
(2, 5),
(3, 2),
(3, 6),
(4, 7),
(5, 4),
(6, 8),
(7, 3),
(8, 2),
(8, 5),
(9, 10),
(10, 9),
(11, 12);

-- Usuario 12 tiene la lista vacía
-- Contenido con ID 15 no lo ha añadido nadie

DROP TABLE IF EXISTS likes;

CREATE TABLE likes (
    id_usuario INT NOT NULL,
    id_contenido INT NOT NULL,
    PRIMARY KEY (id_usuario, id_contenido)
);

-- Ejemplo de inserciones para la tabla "likes"
INSERT INTO likes (id_usuario, id_contenido) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 5),
(4, 6),
(5, 2),
(6, 7),
(7, 3),
(8, 1),
(8, 4),
(9, 9),
(10, 10),
(11, 11);

-- Usuario 12 no ha dado like a ningún contenido
-- Contenido con ID 15 no tiene ningún like