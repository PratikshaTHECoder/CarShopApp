const db = require('../config/db.config');


exports.getCategory = (data, callback) => {
    db.query(
        `SELECT c.Category,c.Id
         FROM Categories c
         JOIN CategoryLocation cl ON c.id = cl.category_id
         JOIN Location l ON l.id = cl.location_id
         WHERE l.location = ?`,
        [data.location],
        (error, results) => {
            if (error) {
                return callback(error);
            }
            if (results.length === 0) {
                return callback("No categories found for the specified location");
            }
            return callback(null, "Categories retrieved successfully", results);
        }
    );

};

exports.getShowroom = (data, callback) => {
    db.query(
        `SELECT s.* 
         FROM Showroom s
         JOIN Location l ON s.location_id = l.id
         WHERE l.location = ?`,
        [data.location],
        (error, results) => {
            if (error) {
                return callback(error);
            }
            if (results.length === 0) {
                return callback("No showrooms found for the specified location");
            }
            return callback(null, "Showrooms retrieved successfully", results);
        }
    );

};

exports.getServices = (data, callback) => {
    db.query(
        `SELECT s.*
         FROM Services s
         JOIN ShowroomServices cl ON s.id = cl.service_id
         JOIN Showroom h ON h.id = cl.showroom_id
         WHERE h.showroom = ?`,
        [data.showroom],
        (error, results) => {
            if (error) {
                return callback(error);
            }
            if (results.length === 0) {
                return callback("No categories found for the specified location");
            }
            return callback(null, "Categories retrieved successfully", results);
        }
    );

};
exports.bookService = (data, callback) => {
    const { serviceName, dateTime, location, vehicle, paymentAmount } = data;

    if (!serviceName || !dateTime || !location || !vehicle || !paymentAmount) {
        return callback("All fields are required");
    }

    // Insert into Booking table
    db.query(
        `INSERT INTO Booking (service, date, location, vehicle) VALUES (?, ?, ?, ?)`,
        [serviceName, dateTime, location, vehicle],
        (bookingError, bookingResult) => {
            if (bookingError) {
                return callback(bookingError);
            }

            const bookingId = bookingResult.insertId;

            // Insert into Payment table
            db.query(
                `INSERT INTO Payment (payment_amount, booking_id) VALUES (?, ?)`,
                [paymentAmount, bookingId],
                (paymentError) => {
                    if (paymentError) {
                        return callback(paymentError); // Booking entry exists, handle rollback manually if needed
                    }

                    return callback(
                        null,
                        "Booking and Payment created successfully",
                        { bookingId, paymentAmount }
                    );
                }
            );
        }
    );
};

