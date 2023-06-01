import "library.dart";
import "bookclass.dart";

void main() {
  libbrary library = libbrary();
  library.books = [];
  book book1 = book(
      title: 'harry potter',
      author: 'rowling',
      year: 1997,
      price: 200,
      Genre: 1);
  book book2 = book(
      title: 'the witcher',
      author: 'sapkowski',
      year: 1986,
      price: 1500,
      Genre: 1);
  book book3 = book(
      title: 'pride and prejudice',
      author: 'austen',
      year: 1813,
      price: 600,
      Genre: 2);

  library.books.add(book1);
  library.books.add(book2);
  library.books.add(book3);

  library.displayBook();

  library.searchByTitle("harry");
  library.searchByAuthor("sapkowski");
  print("Almaq istediyiniz qiymet araliginda olan kitablar");
  library.searchByInt(100, 1000);
  library.searchByYear(1997);
  print("Secdiyiniz Janrda olan kitablar tapildi: ${library.searchByGenre(1)}");
}
