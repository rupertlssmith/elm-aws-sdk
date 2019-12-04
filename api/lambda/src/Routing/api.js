//const elmServerless = require('@the-sett/serverless-elm-bridge');
const elmServerless = require('/home/rupert/projects/elm-serverless/src-bridge');
const rc = require('rc');

const {
  Elm
} = require('./API.elm');

// Try to pick up some configuration from AWS environment variables.
// https://docs.aws.amazon.com/lambda/latest/dg/lambda-environment-variables.html
const accessKeyId = (typeof process.env.AWS_ACCESS_KEY_ID !== 'undefined') ?
  process.env.AWS_ACCESS_KEY_ID : "";

const secretAccessKey = (typeof process.env.AWS_SECRET_ACCESS_KEY !== 'undefined') ?
  process.env.AWS_SECRET_ACCESS_KEY : "";

const sessionToken = (typeof process.env.AWS_SESSION_TOKEN !== 'undefined') ?
  process.env.AWS_SESSION_TOKEN : null;

// Build the config using rc and its various override mechansisms.
const config = rc('demo', {
  "accessKeyId": accessKeyId,
  "secretAccessKey": secretAccessKey,
  "sessionToken": sessionToken,
  "region": "us-east-1"
});

module.exports.handler = elmServerless.httpApi({
  app: Elm.Routing.API.init({
    flags: config
  })
});
