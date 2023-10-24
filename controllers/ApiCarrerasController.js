const db = require('../database/conn');

const getPilotos = async (req, res) => {

    let sql = 'select * from tbl_pilotos';
    const result = await db.query(sql);
    res.json(result);

}

const getIdPilotos = async (req, res) => {

    let params = [
        req.params.id
    ];

    let sql = 'select * from tbl_pilotos where id = $1 ';
    const result = await db.query(sql, params);
    res.json(result);

}

const postPilotos = async (req, res) => {

    const params = [
        req.body.nombre,
        req.body.numero_piloto,
        req.body.nacionalidad,
        req.body.fecha_nacimiento,
        req.body.equipo_actual

    ];

    let sql = `insert into tbl_pilotos
    (nombre, numero_piloto, nacionalidad, fecha_nacimiento, equipo_actual) 
    values
    ($1, $2, $3, $4, $5)
    returning * `;

    const result = await db.query(sql, params);
    res.json(result);

}

const putPilotos = async (req, res) => {


    const params = [
        req.body.nombre,
        req.body.numero_piloto,
        req.body.nacionalidad,
        req.body.fecha_nacimiento,
        req.body.equipo_actual
    ];

    let sql = `update tbl_pilotos
    set nombre = $1,
    numero_piloto = $2,
    nacionalidad = $3,
    fecha_nacimiento = $5,
    equipo_actual = $6

    where id = $7
    returning * `;

    const result = await db.query(sql, params);
    res.json(result);

}

const deletePilotos = async (req, res) => {

    let params = [
        req.params.id
    ];

    let sql = `delete from tbl_pilotos
    where id = $1
    returning * `;

    const result = await db.query(sql, params);
    res.json(result);

}

module.exports = {
    getPilotos,
    getIdPilotos,
    postPilotos,
    putPilotos,
    deletePilotos

}