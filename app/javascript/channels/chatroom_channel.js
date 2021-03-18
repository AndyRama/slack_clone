import consumer from "./consumer"

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomsId;

    consumer.subscriptions.create({ channel: "chatroomChannel", id :id }, {
      received(data) {
        console.log(data);
      }, 
    });
  }
}
export {initChatroomCable};