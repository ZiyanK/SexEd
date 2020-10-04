const express = require('express');
const app = express();
var cors = require('cors');
const bodyParser = require('body-parser');

const userRoute = require('./src/routes/userRoutes');

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    res.status(200).send({
        payload: {
            msg: "The Backend is healthy and running",
        },
    })
})

app.use('/user', userRoute);

const port = process.env.PORT || 3000
app.listen(port, () => {
    console.log('Server is up on port ', port)
})