class ChatModel {
  String imageUrl;
  String name;
  String message;
  String time;
  String time1;
  String message1;
  ChatModel({
    required this.time1,
    required this.message1,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
  });
}

List<ChatModel> chats = [
  ChatModel(
      time1: '8:20 pm',
      message1: 'Hey',
      imageUrl: 'assets/chandler.jpg',
      name: 'Chandler',
      time: '8:15 pm',
      message: 'I make Jokes when I\'m..'),
  ChatModel(
      time1: '7:40 pm',
      message1: 'Hey',
      imageUrl: 'assets/joey.jpg',
      name: 'Joey',
      time: '7:30 pm',
      message: 'How You Doin?!!'),
  ChatModel(
      time1: '6:20 pm',
      message1: 'Hey',
      imageUrl: 'assets/rachel.jpg',
      name: 'Rachel',
      time: '6:15 pm',
      message: 'Nooo!!'),
  ChatModel(
      time1: '5:40 pm',
      message1: 'Central Park has the best coffee!',
      imageUrl: 'assets/monica.jpg',
      name: 'Monica',
      time: '5:30 pm',
      message: 'I Know!!'),
  ChatModel(
      time1: '5:10 pm',
      message1: 'How can I carry sofa to 3rd floor?',
      imageUrl: 'assets/ross.jpg',
      name: 'Ross',
      time: '5:00 pm',
      message: 'Pivot!!'),
  ChatModel(
      time1: '4:20 pm',
      message1: 'Suggest me a weird name',
      imageUrl: 'assets/pheobe.jpg',
      name: 'Pheobe',
      time: '4:16 pm',
      message: 'Princess Bananahamak'),
];
