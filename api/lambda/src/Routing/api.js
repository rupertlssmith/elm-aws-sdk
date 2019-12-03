//const elmServerless = require('@the-sett/serverless-elm-bridge');
const elmServerless = require('/home/rupert/projects/elm-serverless/src-bridge');
const rc = require('rc');

const { Elm } = require('./API.elm');

const config = rc('demo', {
  "accessKeyId": "",
  "secretAccessKey": "",
  "region": "us-east-1"
});

module.exports.handler = elmServerless.httpApi({
  app: Elm.Routing.API.init({
    flags: config
  })
});
