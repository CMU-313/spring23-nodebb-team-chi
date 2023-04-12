"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const controllers = require("../../controllers");
const routeHelpers = require("../helpers");

const router = express.Router();
const { setupApiRoute } = routeHelpers;
module.exports = function () {
    setupApiRoute(router, 'post', '/register', [], controllers.write.career.register);
    return router;
};
