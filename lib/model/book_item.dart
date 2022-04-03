class BookItem{

  final String title;
  final String author;
  final String price;
  BookItem({required this.title,required this.author,required this.price});


  static List<BookItem> bookList=[
    BookItem(
        title: "C Programming",
        author: "Balaguru sami",
         price: "10 USD"
    ),
    BookItem(
        title: "C++ Programming",
        author: "Balaguru sami",
        price: "15 USD"
    ),
    BookItem(
        title: "Java Programming",
        author: "Balaguru sami",
        price: "20 USD"
    ),
    BookItem(
        title: "Barron's Vocabulary",
        author: "Mehedi Shamim",
        price: "5 USD"
    ),
    BookItem(
        title: "Data Structure",
        author: "Lipschutz",
        price: "10 USD"
    ),
    BookItem(
        title: "Python Programming",
        author: "Balaguru sami",
        price: "100 USD"
    ),

  ];
}