var router = require('express').Router();
var kafka = require('../kafka/client');
//passport imports
var config = require('../config/settings');
var jwt = require('jsonwebtoken');
var passport = require('passport');
var requireAuth = passport.authenticate('jwt', { session: false });

router.get('/cget_profiles/:email', function (req, res) {
    console.log("In get profiles: " + req.params.email)
    var data={
        email:req.params.email,
        type:"traveler"
    }
    kafka.make_request('getprofile', data, (err, results) => {
        console.log("In node kf --> Post Message Handler")
        if (err) {
            console.log("Error occured")
            res.json({ status: "error", msg: "System error" })
            res.sendStatus(400).end();
        }
        else {
            console.log("Got results in node kf")
            res.writeHead(200, {
                'Content-Type': 'application/json'
            })
            res.end(JSON.stringify(results));
        }
    })
});

router.get('/oget_profiles/:email', function (req, res) {
    console.log("In get profiles: " + req.params.email)
    console.log(req.params)
    var data={
        email:req.params.email,
        type:"owner"
    }
    kafka.make_request('getprofile', data, (err, results) => {
        console.log("In node kf --> Post Message Handler")
        if (err) {
            console.log("Error occured")
            res.json({ status: "error", msg: "System error" })
            res.sendStatus(400).end();
        }
        else {
            console.log("Got results in node kf")
            res.writeHead(200, {
                'Content-Type': 'application/json'
            })
            res.end(JSON.stringify(results));
        }
    })
});


module.exports=router