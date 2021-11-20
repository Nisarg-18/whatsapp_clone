class CallModel {
  String imageUrl;
  String name;
  String time;
  CallModel({
    required this.imageUrl,
    required this.name,
    required this.time,
  });
}

List<CallModel> calls = [
  CallModel(imageUrl: 'assets/joey.jpg', name: 'Joey', time: 'Today, 9:15pm'),
  CallModel(
      imageUrl: 'assets/chandler.jpg',
      name: 'Chandler',
      time: 'Yesterday, 6:15pm'),
  CallModel(
      imageUrl: 'assets/monica.jpg', name: 'Monica', time: '15 July, 10:00pm'),
  CallModel(
      imageUrl: 'assets/rachel.jpg', name: 'Rachel', time: '10 July, 11:15pm'),
  CallModel(imageUrl: 'assets/ross.jpg', name: 'Ross', time: '1 July, 3:15pm'),
  CallModel(
      imageUrl: 'assets/pheobe.jpg', name: 'Pheobe', time: '1 July, 1:00pm'),
];
