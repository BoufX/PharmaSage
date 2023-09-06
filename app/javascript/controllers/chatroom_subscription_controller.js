import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static targets = ["messages"]
  static values = { chatroomId: Number }

  connect() {
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}`)

    createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: (data) => {
        this.#insertMessageAndScrollDown(data)
        this.#resetForm() } }
    )
  }

  #resetForm()
  {
    let form = document.querySelector('#new_message');
    form.reset()
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend",
    `<div class='message'><div class='avatar'></div><div class='content'>${data}</div></div>`)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    console.log(data)
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
