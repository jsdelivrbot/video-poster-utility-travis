var request = require('request');

//GhostInspector API
let ghostinspectorURL = 'https://api.ghostinspector.com/v1/tests/5a319034e684912918944780/execute/?apiKey=d3d0cc19fe8d69244a284e7061523b89542ba5dc'

request(ghostinspectorURL, function (error, response, body) {
    if (!error && response.statusCode == 200) {
        var bodyResponse = JSON.parse(body);
        console.log("##### bodyResponse.data.passing: " + bodyResponse.data.passing);
        if(bodyResponse.data.passing == false) {
            console.log("#### Test fail");
            throw "TEST ERROR!!!";
        } else {
            console.log("#### Test success");
        }
    }
});