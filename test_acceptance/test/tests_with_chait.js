/**
 * Created by x on 11/16/16.
 */

// ACCEPTANCE TEST
/**
 * Setup test suit configuration
 */

var chai = require('chai'),
    should = chai.should,
    expect = chai.expect,
    Promise = require('bluebird'),
    request = require('superagent-promise')(require('superagent'), Promise),
    chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);
var url = process.env.URL || 'http://localhost:5000/users';


/**
 * Tests escenarios
 */
// TEST 1
describe('Cross Origin Requests', function () {
    var result;
    before(function () {
        result = request('OPTIONS', url)
            .set('Origin', 'https://torrentjs.com')
            .end()
    });
    it('Should return the correct CORS headers', function () {
        return assert(result, "header").to.contain.all.keys(
            [
                'access-control-allow-origin',
                'access-control-allow-methods',
                'access-control-allow-headers',
            ]
        )
    })

    it('Should allow all origins', function () {
        return assert(result, "headers.access-control-allow-origin").to.equal('*')
    })
});

// TEST 2
describe('Create object', function () {
    var result;
    before(function () {
        result = post(url, {title: "walk alone"})
    });

    it('Should return a 201 CREATED response', function () {
        return assert(result, "status").to.equals(201);
    })
    // should response with item location

    // if we query the item we should find the same item title
    after(function(){
        return del(url)
    })
});


/**
 * Tests features
 */

function post(url, data) {
    return request.post(url)
        .set('Content-Type', 'application/json')
        .set('Accept', 'application/json')
        .send(data)
        .end();
}


/**
 * Helper functions
 */

function assert(result, prop) {
    return expect(result).to.eventually.have.deep.property(prop)
}