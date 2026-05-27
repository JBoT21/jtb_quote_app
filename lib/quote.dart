class Quote {

  String text;
  String author;
  String category;
  DateTime createdAt;
  int likes;

  Quote({required this.author, required this.text,
    required this.category, required this.createdAt, this.likes = 0,});

}
