const carCntrl = require('../controllers/carcontroller')
const express = require("express");

const router = express.Router();

router.get("/getCategories/:location", carCntrl.getCategory);
router.get("/getShowroom/:location", carCntrl.getShowroom);
router.get("/getServices/:showroom", carCntrl.getServices);
router.post("/bookService", carCntrl.bookService);






module.exports = router;

