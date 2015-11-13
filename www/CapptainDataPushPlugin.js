
var argscheck = require('cordova/argscheck'),
    exec = require('cordova/exec');

var CapptainDataPush = {

    initialize: function(successCallback, failureCallback) {
        cordova.exec(successCallback, failureCallback, 'CapptainDataPushPlugin', 'initialize', []);
    },

    sendTestStringDataPush: function(options, successCallback, failureCallback) {
        cordova.exec(successCallback, failureCallback, 'CapptainDataPushPlugin', 'sendTestStringDataPush', [options]);
    }

};

module.exports = CapptainDataPush;