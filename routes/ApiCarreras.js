const express = require('express');
const apiCarreras = express();
const { getPilotos, getIdPilotos, postPilotos, putPilotos, deletePilotos } = require('../controllers/ApiCarrerasController.js');

apiCarreras.get('', getPilotos);

apiCarreras.get('/:id', getIdPilotos);

apiCarreras.post('', postPilotos);

apiCarreras.put('/:id', putPilotos);

apiCarreras.delete('/:id', deletePilotos);

module.exports = apiCarreras;