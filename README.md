# cordova-plugin-capptain-datapush
Cordova Plugin for Capptain Reach Data Push.


## At a glance

Capptain Reach module manages reach functionalities. It listens push messages and notify the user about annoncements and polls.

Capptain Data Push is not like iOS APNS or Android GCM. It lets you send specified messages. This message contains 2 infos: category and body.


More info about [Capptain Reach module](https://capptain.zendesk.com/hc/en-us/articles/203417056-Capptain-User-Interface-UI-Portal-Documentation-Reach).


## Installation

Add the following plugin to your Cordova/Ionic project:

    cordova plugin add https://github.com/we-studio/cordova-plugin-capptain-datapush.git


## Usage

```javascript
// start listening Capptain Reach data push 
window.CapptainDataPushPlugin.initialize();


// handle data push message
window.CapptainDataPushPlugin.onReceiveStringDataPush = onReceiveStringDataPush;

function onReceiveStringDataPush(category, body) {
    // do anything with category and body
}
```


## TODO ##

- [ ] iOS support
- [ ] Android support
- [ ] available in Cordova/npm plugins list


## Credit ##

This Cordova plugin is developed by [Westudio](http://westud.io) team empowered by [Wemanity](http://www.wemanity.com).