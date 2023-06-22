class Message {
  String sender;
  String recipient;
  String timestamp;
  Message(
      {required this.sender, required this.recipient, required this.timestamp});
  @override
  String toString() {
    return "Message { sender: $sender, recipient: $recipient, timestamp: $timestamp }";
  }
}

class ChatApp<T extends Message> {
  List<T> messages = [];
  addMessage(T addMessage) {
    messages.add(addMessage);
  }

  countOfTotalMessages() {
    print(messages.length);
  }

  displayAllMessages() {
    for (var message in messages) {
      print(message);
    }
  }
class TextMessage extends Message {
  String text;
  TextMessage(
      {required super.sender,
      required super.recipient,
      required super.timestamp,
      required this.text});
}

class ImageMessage extends Message {
  String imageUrl;
  ImageMessage(
      {required this.imageUrl,
      required super.sender,
      required super.recipient,
      required super.timestamp});
}

class AudioMessage extends Message {
  String audioUrl;
  String duration;
  AudioMessage(
      {required this.audioUrl,
      required this.duration,
      required super.sender,
      required super.recipient,
      required super.timestamp});
}

void main(List<String> args) {
  ChatApp chatApp = ChatApp();
  chatApp.addMessage(TextMessage(
      sender: "senderText",
      recipient: "receivedText",
      timestamp: "02:00",
      text: "text"));

  chatApp.addMessage(ImageMessage(
      imageUrl: "giphy.com/goodgif.gif",
      sender: "senderImage",
      recipient: "receivedImage",
      timestamp: "02:22"));
  chatApp.addMessage(AudioMessage(
      audioUrl: "soundcloud.com/goodmusic.mp3",
      duration: "03:00",
      sender: "senderAudio",
      recipient: "receivedAudio",
      timestamp: "02:00"));
  chatApp.displayAllMessages();
}
