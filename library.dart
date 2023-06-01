import 'bookclass.dart';

class libbrary {
  late List<book> books;

  void addBook(book book) {
    books.add(book);
  }

  void displayBook() {
    for (var book in books) {
      print('''
     Title: ${book.title}
     Author: ${book.author}
     Year: ${book.year}
     Price: ${book.price}
     ''');
    }
  }

  void searchByTitle(String title) {
    for (var book in books) {
      if (book.title.toLowerCase().contains(title.toLowerCase())) {
        print('${book.title} Adinda Kitab Tapildi');
      }
    }
  }

  searchByInt(int pricemin, int pricemax) {
    for (var book in books) {
      if ((book.price >= pricemin) && (book.price <= pricemax)) {
        print(book.title);
      }
    }
  }

  void searchByAuthor(String author) {
    for (var book in books) {
      if (book.author.toLowerCase().contains(author.toLowerCase())) {
        print('Yazicisi ${book.author} Olan Kitab Tapildi ${book.title}');
      }
    }
  }

  void searchByYear(int year) {
    for (var book in books) {
      if (book.year == year) {
        print(
            'Secdiyiniz ilde: ${book.year} Olan Kitablar Tapildi ${book.title}');
      }
    }
  }

  searchByGenre(int serial) {
    List list1 = [];
    for (var book in books) {
      if (book.Genre == serial) {
        list1.add(book);
      }
    }
    return list1;
  }
}
