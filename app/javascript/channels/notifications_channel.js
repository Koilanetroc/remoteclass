import consumer from "./consumer"

let user_password = window.location.search.substr(1).split('=')[1];

consumer.subscriptions.create({channel: "NotificationsChannel", password: user_password}, {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $('div').append(data['message']);
  }
});
