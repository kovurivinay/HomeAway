var router = require('express').Router();
var kafka = require('../kafka/client');

router.put('/cset_profiles', function (req, res) {
    console.log("setting profile of: " + req.body.email)
    console.log("In oset profiles: " + req.body.email)
    var data={
        email:req.body.email,
        type:"traveler",
        body:req.body
    }
    kafka.make_request('setprofile', data, (err, results) => {
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
            console.log(JSON.stringify(results))
            res.end(JSON.stringify(results));
        }
    })
    
});

router.put('/oset_profiles', function (req, res) {
    console.log("In oset profiles: " + req.body.email)
    var data={
        email:req.body.email,
        type:"owner",
        body:req.body

    }
    kafka.make_request('setprofile', data, (err, results) => {
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
            console.log(JSON.stringify(results))
            res.end(JSON.stringify(results));
        }
    })
});

module.exports=router