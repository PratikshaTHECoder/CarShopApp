const carService = require('../services/carServices');
const STATUS_CODES = require('../constant');

const getCategory = async (req, res) => {
    const { location } = req.params;
    if (!location) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "location is required!" });
    }
    const data = {
        location,
    }
    carService.getCategory(data, (error, message, results) => {
        if (error) {
            console.log(error);
            return res
                .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
                .send({ status: 0, message: error });
        }
        return res.status(STATUS_CODES.SUCCESS.OK.code).send({
            status: 1,
            data: results,
            message,
        });
    })

}

const getShowroom = async (req, res) => {
    const { location } = req.params;
    if (!location) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "location is required!" });
    }
    const data = {
        location,
    }
    carService.getShowroom(data, (error, message, results) => {
        if (error) {
            console.log(error);
            return res
                .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
                .send({ status: 0, message: error });
        }
        return res.status(STATUS_CODES.SUCCESS.OK.code).send({
            status: 1,
            data: results,
            message,
        });
    })

}

const getServices = async (req, res) => {
    const { showroom } = req.params;
    if (!showroom) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "showroom is required!" });
    }
    const data = {
        showroom,
    }
    carService.getServices(data, (error, message, results) => {
        if (error) {
            console.log(error);
            return res
                .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
                .send({ status: 0, message: error });
        }
        return res.status(STATUS_CODES.SUCCESS.OK.code).send({
            status: 1,
            data: results,
            message,
        });
    })

}

const bookService = (req, res) => {
    console.log("pay", req.body)
    const { serviceName, dateTime, location, vehicle, paymentAmount } = req.body;
    if (!serviceName) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "service is required!" });
    }
    if (!dateTime) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "date is required!" });
    }
    if (!location) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "location is required!" });

    }
    if (!vehicle) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "vehical is required!" });
    }
    if (!paymentAmount) {
        return res
            .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
            .json({ status: 0, message: "paymentAmount is required!" });
    }
    const data = {
        serviceName,
        dateTime,
        location,
        vehicle,
        paymentAmount
    }
    carService.bookService(data, (error, message, results) => {
        if (error) {
            console.log(error);
            return res
                .status(STATUS_CODES.CLIENT_ERROR.BAD_REQUEST.code)
                .send({ status: 0, message: error });
        }
        return res.status(STATUS_CODES.SUCCESS.OK.code).send({
            status: 1,
            data: results,
            message,
        });
    })


}


module.exports = {
    getCategory,
    getShowroom,
    getServices,
    bookService,
};