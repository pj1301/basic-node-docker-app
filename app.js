const express = require('express');
const nodemon = require('nodemon');

const app = express();
app.use(express.json());
const port = process.env.PORT || '2000';

app.route('/')
  .get((req, res) => {
    console.log('GET => received');
    res.status(200).send({msg: 'GET request response'});
  })

  .post((req, res) => {
    console.log('POST => received; Data => ', req.body);
    res.status(200).send({msg: 'POST request response', data: req.body})
  })

app.listen(port, () => console.log(`Listening on port ${port}`));