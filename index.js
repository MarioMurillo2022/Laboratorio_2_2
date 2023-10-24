const express = require('express');
const app = express();

//midleware
app.use(express.json());

//rutas--(Back) o endpoints--(front)

const apiCarreras = require('./routes/ApiCarreras');
app.use('/api/carreras', apiCarreras);

app.listen(3001);