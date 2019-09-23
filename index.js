const express = require('express');

const app = express();

var counter = 0;

app.get('/', (req, res) => {
    res.send('Hi there... Hello World!: ' + counter);
    counter++
});

app.listen(8080, () => {
    console.log('Listening on port 8080'); 
});