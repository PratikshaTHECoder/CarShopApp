const express = require("express");

const app = express();
const bodyParser = require("body-parser");
const carRoutes = require("./Routes/carRoutes");


app.use(express.json());
app.use(carRoutes);

app.listen(3000, () => {
    console.log("I am ready to lisen you");
});