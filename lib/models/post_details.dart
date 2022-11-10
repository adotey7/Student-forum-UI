class PostDetails {
  String name;
  String imageUrl;
  String likes;
  String shared;
  String comments;

  PostDetails(this.name, this.imageUrl, this.likes, this.shared, this.comments);

  static List<PostDetails> samples = [
    PostDetails(
      'Alex Yomi',
      'assets/profile1.png',
      '12',
      '34',
      '43',
    ),
    PostDetails(
      'John Doe',
      'assets/profile2.png',
      '5',
      '4',
      '13',
    ),
    PostDetails(
      'Cyril Kojo',
      'assets/profile3.png',
      '20',
      '3',
      '14',
    ),
    PostDetails(
      'Samira Musah',
      'assets/profile4.png',
      '11',
      '6',
      '4',
    ),
  ];
}
