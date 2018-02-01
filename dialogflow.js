const LambdaBot = require('lambda-bot');

const bot = new LambdaBot();

bot.setAction('hello.world', (app) => {
    app.tell('Hello from AWS Lambda!');
});

exports.handler = bot.handler();