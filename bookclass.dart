Map<int, String> GenreMap = {1: "Fantastika", 2: "Klassik"};
class book {
  late String title;
  late String author;
  late int year;
  late int price;
  late int Genre;
  book(
      {required this.title,
      required this.author,
      required this.year,
      required this.price,
      required this.Genre});
  @override
  String toString() {
    return "$title ${GenreMap[this.Genre]}";
  }
}
