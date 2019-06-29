// app/assets/javascripts/cable.js
//= require action_cable
//= require_self

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer(`ws://${window.location.hostname}:3000`);
}).call(this);
