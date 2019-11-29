//const elmServerless = require('@the-sett/serverless-elm-bridge');
const elmServerless = require('/home/rupert/projects/elm-serverless/src-bridge');

const { Elm } = require('./API.elm');

module.exports.handler = elmServerless.httpApi({
  app: Elm.Routing.API.init()
});
