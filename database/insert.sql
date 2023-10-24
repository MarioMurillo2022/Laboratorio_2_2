-- Active: 1697072377566@@localhost@5432@postgres

INSERT INTO
    tbl_pilotos (
        nombre,
        numero_piloto,
        nacionalidad,
        fecha_nacimiento,
        equipo_actual
    )
VALUES (
        'Lewis Hamilton',
        44,
        'Británico',
        '1985-01-07',
        'Mercedes'
    ), (
        'Max Verstappen',
        33,
        'Neerlandés',
        '1997-09-30',
        'Red Bull Racing'
    );

INSERT INTO
    tbl_equipos (
        nombre_equipo,
        pais_equipo,
        titulos_ganados
    )
VALUES ('Mercedes', 'Alemania', 7), (
        'Red Bull Racing',
        'Austria',
        4
    );

INSERT INTO
    tbl_carreras (
        nombre_gp,
        ubicacion,
        fecha,
        longitud_circuito,
        distancia_carrera
    )
VALUES (
        'Gran Premio de Mónaco',
        'Montecarlo',
        '2023-05-28',
        3.337,
        260.286
    ), (
        'Gran Premio de España',
        'Barcelona',
        '2023-05-14',
        4.655,
        308.424
    );

-- Insertar un registro en la tabla tbl_participacion_carreras

INSERT INTO
    tbl_participacion_carreras (
        piloto_id,
        carrera_id,
        posicion
    )
VALUES (1, 1, 1);

-- Aquí asumimos que el piloto con ID 1 participó en la carrera con ID 1 y terminó en la posición 1

-- Insertar otro registro en la tabla tbl_participacion_carreras

INSERT INTO
    tbl_participacion_carreras (
        piloto_id,
        carrera_id,
        posicion
    )
VALUES (2, 1, 2);

-- Aquí asumimos que el piloto con ID 2 participó en la carrera con ID 1 y terminó en la posición 2