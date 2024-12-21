-- Drop contenido_etiqueta table if it exists
DROP TABLE IF EXISTS contenido_etiqueta;
-- Drop contenido table if it exists
DROP TABLE IF EXISTS contenido;

-- Crear la tabla 'contenido'
CREATE TABLE contenido (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    production_year INTEGER NOT NULL,
    clasificacion_edad VARCHAR(50),
    descripcion TEXT,
    pertenece_a INTEGER,
    numero_elementos INTEGER,
    duracion INTEGER,
    url VARCHAR(255),
    FOREIGN KEY (pertenece_a) REFERENCES contenido(id)
);

-- Insertar datos de ejemplo en la tabla 'contenido'
INSERT INTO contenido (tipo, titulo, production_year, clasificacion_edad, descripcion, pertenece_a, numero_elementos, duracion, url) VALUES
('Pelicula', 'Inception', 2010, 'PG-13', 'Un ladrón que roba secretos a través de los sueños es contratado para hacer lo contrario.', NULL, NULL, 148 * 60, 'https://www.youtube.com/watch?v=8hP9D6kZseM'),
('Pelicula', 'The Shawshank Redemption', 1994, 'R', 'Un banquero es condenado a prisión y forma una amistad inusual con un compañero de celda.', NULL, NULL, 142 * 60, 'https://www.youtube.com/watch?v=NmzuHjWmXOc'),
('Pelicula', 'The Godfather', 1972, 'R', 'Un patriarca de una familia de crimen organizado transfiere el control de su imperio a su hijo.', NULL, NULL, 175 * 60, 'https://www.youtube.com/watch?v=sY1S34973zA'),
('Documental', 'Our Planet', 2019, 'TV-G', 'Un viaje por la tierra, mostrando su belleza y los problemas ambientales que enfrentamos.', NULL, NULL, 148 * 60, 'https://www.youtube.com/watch?v=aETNYyrqNYE'),
('Serie', 'Breaking Bad', 2008, 'TV-MA', 'Un profesor de química se convierte en fabricante de metanfetamina tras ser diagnosticado con cáncer.', NULL, 5, NULL, 'https://www.youtube.com/watch?v=HhesaQXLuRY'),
('Temporada', 'Breaking Bad - Season 1', 2008, 'TV-MA', 'La primera temporada de la serie sobre un profesor de química que se convierte en narcotraficante.',5, 4, NULL, 'https://www.youtube.com/watch?v=HhesaQXLuRY'),
('Episodio', 'Breaking Bad - Season 1, Episode 1', 2008, 'TV-MA', 'Episodio piloto de Breaking Bad.', 6, NULL, 58 * 60, 'https://www.youtube.com/watch?v=HhesaQXLuRY');

INSERT INTO contenido (tipo, titulo, production_year, clasificacion_edad, descripcion, pertenece_a, numero_elementos, duracion, url) VALUES
('Pelicula', 'The Matrix', 1999, '16', 'Un hacker descubre la verdadera naturaleza de la realidad.', NULL, NULL, 136 * 60, 'https://www.youtube.com/watch?v=vKQi3bBA1y8'),
('Serie', 'Stranger Things', 2016, '12', 'Un grupo de niños descubre misterios sobrenaturales en su pueblo.', NULL, 4, NULL, 'https://www.youtube.com/watch?v=b9EkMc79ZSU'),
('Temporada', 'Stranger Things - Temporada 1', 2016, '12', 'La primera temporada de Stranger Things.', 9, 8, NULL, 'https://www.youtube.com/watch?v=b9EkMc79ZSU'),
('Episodio', 'Stranger Things T01E01', 2016, '12', 'El primer episodio de Stranger Things.', 10, NULL, 49 * 60, 'https://www.youtube.com/watch?v=b9EkMc79ZSU'),
('Documental', 'The Social Dilemma', 2020, '12', 'Un documental sobre el impacto de las redes sociales.', NULL, NULL, 94 * 60, 'https://www.youtube.com/watch?v=uaaC57tcci0'),
('Corto', 'Bao', 2018, 'TP', 'Un cortometraje animado de Pixar sobre un dumpling que cobra vida.', NULL, NULL, 8 * 60, 'https://www.youtube.com/watch?v=iYaRZ4TNfus'),
('Documental', 'Planet Earth', 2006, 'TP', 'Una serie documental sobre la Tierra.', NULL, NULL, 60 * 60, 'https://www.youtube.com/watch?v=VdYY3kkkz28'),
('Corto', 'Paperman', 2012, 'TP', 'Un cortometraje animado de Disney.', NULL, NULL, 7 * 60, 'https://www.youtube.com/watch?v=BYUqS25NIIw');

-- Más ejemplos de inserción en la tabla 'contenido'
INSERT INTO contenido (tipo, titulo, production_year, clasificacion_edad, descripcion, pertenece_a, numero_elementos, duracion, url) VALUES
('Pelicula', 'Interstellar', 2014, 'PG-13', 'Un equipo de exploradores viaja a través de un agujero de gusano en el espacio en un intento de salvar a la humanidad.', NULL, NULL, 169 * 60, 'https://www.youtube.com/watch?v=zSWdZVtXT7E'),
('Serie', 'The Witcher', 2019, 'TV-MA', 'Un cazador de monstruos lucha por encontrar su lugar en un mundo lleno de humanos más perversos que bestias.', NULL, 3, NULL, 'https://www.youtube.com/watch?v=ndl1W4ltcmg'),
('Temporada', 'The Witcher - Temporada 1', 2019, 'TV-MA', 'La primera temporada de The Witcher.', 16, 8, NULL, 'https://www.youtube.com/watch?v=ndl1W4ltcmg'),
('Episodio', 'The Witcher T01E01', 2019, 'TV-MA', 'El primer episodio de The Witcher.', 17, NULL, 61 * 60, 'https://www.youtube.com/watch?v=ndl1W4ltcmg'),
('Documental', 'Cosmos: A Spacetime Odyssey', 2014, 'TV-PG', 'Una serie documental sobre el universo y los misterios de la existencia.', NULL, NULL, 557 * 60, 'https://www.youtube.com/watch?v=XFF2ECZ8m1A'),
('Pelicula', 'Parasite', 2019, 'R', 'Una familia de clase baja se infiltra en la vida de una familia adinerada.', NULL, NULL, 132 * 60, 'https://www.youtube.com/watch?v=5xH0HfJHsaY'),
('Serie', 'Game of Thrones', 2011, 'TV-MA', 'Nueve familias nobles luchan por el control de los Siete Reinos de Westeros.', NULL, 8, NULL, 'https://www.youtube.com/watch?v=rlR4PJn8b8I'),
('Temporada', 'Game of Thrones - Temporada 1', 2011, 'TV-MA', 'La primera temporada de Game of Thrones.', 24, 10, NULL, 'https://www.youtube.com/watch?v=rlR4PJn8b8I'),
('Episodio', 'Game of Thrones T01E01', 2011, 'TV-MA', 'El primer episodio de Game of Thrones.', 25, NULL, 62 * 60, 'https://www.youtube.com/watch?v=rlR4PJn8b8I'),
('Documental', 'Making a Murderer', 2015, 'TV-MA', 'Documental que narra el caso de Steven Avery, un hombre acusado de un crimen que no cometió.', NULL, NULL, 60 * 60, 'https://www.youtube.com/watch?v=qxgbdYaR_KQ'),
('Corto', 'La Luna', 2011, 'G', 'Un niño experimenta su primera noche de trabajo en un bote pesquero con su papá y su abuelo.', NULL, NULL, 7 * 60, 'https://www.youtube.com/watch?v=vbuq7w3ZDUQ');


CREATE TABLE contenido_etiqueta (
    contenido_id INT NOT NULL,
    etiqueta_id INT NOT NULL,
    PRIMARY KEY (contenido_id, etiqueta_id),
    FOREIGN KEY (contenido_id) REFERENCES contenido(id) ON DELETE CASCADE
);

-- Insertar asociaciones entre contenido y etiquetas
INSERT INTO contenido_etiqueta (contenido_id, etiqueta_id) VALUES
(1, 1), -- Inception es Thriller
(1, 6), -- Inception es Ciencia Ficción
(2, 4), -- The Shawshank Redemption es Drama
(3, 4), -- The Godfather es Drama
(4, 10), -- Our Planet es Documental
(5, 1), -- Breaking Bad es Thriller
(6, 1), -- Breaking Bad - Season 1 es Thriller
(7, 1), -- Breaking Bad - Season 1, Episode 1 es Thriller
(8, 6), -- The Matrix es Ciencia Ficción
(9, 2), -- Stranger Things es Comedia
(10, 5), -- Stranger Things - Temporada 1 es Aventura
(11, 5), -- Stranger Things T01E01 es Aventura
(12, 10), -- The Social Dilemma es Documental
(13, 7), -- Bao es Animación
(14, 10), -- Planet Earth es Documental
(15, 7); -- Paperman es Animación