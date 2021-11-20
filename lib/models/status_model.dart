class StatusModel {
  String name;
  String imageUrl;
  String time;
  StatusModel({
    required this.name,
    required this.imageUrl,
    required this.time,
  });
}

List<StatusModel> statusList = [
  StatusModel(imageUrl: 'assets/joey.jpg', name: 'Joey', time: 'Today, 9:15pm'),
  StatusModel(
      imageUrl: 'assets/rachel.jpg', name: 'Rachel', time: 'Today, 11:15pm'),
  StatusModel(
      imageUrl: 'assets/chandler.jpg',
      name: 'Chandler',
      time: 'Today, 12:05pm'),
];
List<StatusModel> statusListv = [
  StatusModel(
      imageUrl: 'assets/ross.jpg', name: 'Ross', time: 'Yesterday, 4:40pm'),
  StatusModel(
      imageUrl: 'assets/monica.jpg', name: 'Monica', time: 'Yesterday, 6:00pm'),
  StatusModel(
      imageUrl: 'assets/pheobe.jpg', name: 'Pheobe', time: 'Yesterday, 8:00pm'),
];
