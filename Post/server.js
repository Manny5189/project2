// Dependencies
var express = require("express");
var exphbs = require("express-handlebars");
var sequelize = require("sequelize");

// Create an instance of the express app.
var app = express();

// Connect to SQL database
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

// Query the database

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(                 "Result: " + result);
  });
});

// Set the port of our application
// process.env.PORT lets the port be set by Heroku
var PORT = process.env.PORT || 8090;

// Set Handlebars as the default templating engine.
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// Data
var movies = [
  {
    movie: "A."
  }, {
    movie: "B"
  }, {
    movie: "C"
  }, {
    movie: "D"
  }
];

// Routes
app.get("/weekday", function(req, res) {
  res.render("index", movies[0]);
});

app.get("/weekend", function(req, res) {
  res.render("index", movies[1]);
});

app.get("/lunches", function(req, res) {
  res.render("all-lunches", {
    foods: lunches,
    eater: "david"
  });
});

// Start our server so that it can begin listening to client requests.
app.listen(PORT, function() {
  // Log (server-side) when our server has started
  console.log("Server listening on: http://localhost:" + PORT);
});
