'use strict';

const app = require('../../app.js');
const chai = require('chai');
const expect = chai.expect;
var event, context;

describe('healthCheckHandler', function () {
    it('verifies successful response', async () => {
        const result = await app.healthCheckHandler(event, context)

        expect(result).to.be.an('object');
        expect(result.statusCode).to.equal(200);
        expect(result.body).to.be.an('string');

        let response = JSON.parse(result.body);

        expect(response).to.be.an('object');
        expect(response.message).to.be.equal("The api is healthy");
        // expect(response.location).to.be.an("string");
    });
});

describe('getUsersHandler', function () {
    it('return a users', async () => {
        const result = await app.getUsersHandler(event, context)

        expect(result).to.be.an('object');
        expect(result.statusCode).to.equal(200);

    });
});
