-- Active: 1697072377566@@localhost@5432@postgres

SELECT * from tbl_pilotos 

SELECT * from tbl_equipos 

SELECT * from tbl_carreras 

SELECT * from tbl_participacion_carreras 

CREATE TABLE
    tbl_pilotos (
        id serial PRIMARY KEY,
        nombre VARCHAR(100),
        numero_piloto INT,
        nacionalidad VARCHAR(50),
        fecha_nacimiento DATE,
        equipo_actual VARCHAR(50)
    );

CREATE TABLE
    tbl_equipos (
        id serial PRIMARY KEY,
        nombre_equipo VARCHAR(100),
        pais_equipo VARCHAR(50),
        titulos_ganados INT
    );

CREATE TABLE
    tbl_carreras (
        id serial PRIMARY KEY,
        nombre_gp VARCHAR(100),
        ubicacion VARCHAR(100),
        fecha DATE,
        longitud_circuito NUMERIC,
        distancia_carrera NUMERIC
    );

CREATE TABLE
    tbl_participacion_carreras (
        id serial PRIMARY KEY,
        piloto_id INT,
        carrera_id INT,
        posicion INT,
        -- Puedes agregar esta columna para registrar la posición del piloto en la carrera.
        CONSTRAINT fk_piloto FOREIGN KEY (piloto_id) REFERENCES tbl_pilotos(id),
        CONSTRAINT fk_carrera FOREIGN KEY (carrera_id) REFERENCES tbl_carreras(id)
    );

-- alter tables

ALTER TABLE tbl_pilotos ADD COLUMN equipo_id INT;

ALTER TABLE tbl_pilotos
ADD
    CONSTRAINT fk_equipo FOREIGN KEY (equipo_id) REFERENCES tbl_equipos(id);

ALTER TABLE tbl_carreras ADD COLUMN equipo_ganador_id INT;

ALTER TABLE tbl_carreras
ADD
    CONSTRAINT fk_equipo_ganador FOREIGN KEY (equipo_ganador_id) REFERENCES tbl_equipos(id);