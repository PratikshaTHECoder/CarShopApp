const STATUS_CODES = {
    SUCCESS: {
        OK: { code: 200, message: "Request successful." },
        CREATED: { code: 201, message: "Resource created successfully." },
        ACCEPTED: { code: 202, message: "Request accepted for processing." },
        NO_CONTENT: { code: 204, message: "Request successful, no content returned." },
    },
    CLIENT_ERROR: {
        BAD_REQUEST: { code: 400, message: "Invalid request. Please check your input." },
        UNAUTHORIZED: { code: 401, message: "Authentication required. Please log in." },
        FORBIDDEN: { code: 403, message: "You do not have permission to perform this action." },
        NOT_FOUND: { code: 404, message: "The requested resource does not exist." },
        METHOD_NOT_ALLOWED: { code: 405, message: "This method is not allowed for the resource." },
        CONFLICT: { code: 409, message: "Conflict detected. Please check your request." },
        UNPROCESSABLE_ENTITY: { code: 422, message: "Validation failed. Please correct the errors." },
    },
    SERVER_ERROR: {
        INTERNAL_SERVER_ERROR: { code: 500, message: "Something went wrong. Please try again later." },
        BAD_GATEWAY: { code: 502, message: "Server is temporarily unavailable. Please try again later." },
        SERVICE_UNAVAILABLE: { code: 503, message: "Service is unavailable. Please try again later." },
        GATEWAY_TIMEOUT: { code: 504, message: "The server took too long to respond. Please try again." },
    },
    CUSTOM: {
        VALIDATION_ERROR: { code: 1001, message: "Some fields are invalid. Please check and try again." },
        MISSING_DATA: { code: 1002, message: "Required data is missing. Please fill in all fields." },
        DUPLICATE_ENTRY: { code: 1003, message: "Duplicate entry detected. Please use a different value." },
    },
};

module.exports = STATUS_CODES; 
