var express = require('express');

var bodyParser = require('body-parser');

var path = require('path');

var app = express();
var port = process.env.PORT || 3000;
app.listen(port, "0.0.0.0", function() {
console.log("Listening on Port 3000");
});

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.get("/", function(req, res) {
    res.sendfile(__dirname + '/index.html');
});
app.get("/about", function(req, res) {
    res.send("All about me");
});
