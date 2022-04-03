import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview/bookList/book_details.dart';
import 'package:flutter_listview/model/book_item.dart';

class BookList extends StatefulWidget{
  @override
  _BookListState createState() =>_BookListState();

}
class _BookListState extends State<BookList>{

  List<BookItem>bookList=BookItem.bookList;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       centerTitle: true,
       title: Text("Book List"),
     ),
     body: ListView.builder(
         itemCount: bookList.length ,
         itemBuilder: (context,index){
           return _listViewCard(bookList[index]);

         }),
   );
  }

  Widget _listViewCard(BookItem bookItem){
    return Padding(padding: EdgeInsets.all(5),
     child: Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.grey, width: 1),),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetails(bookItem: bookItem)));
          },
          leading: Image.network("https://blog.hubspot.com/hubfs/Ebook-Templates-2-3.png"),
          title: Text("${bookItem.title}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${bookItem.author}"),
              Text("${bookItem.price}"),
            ],
          ),
          trailing: IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.add,color: Colors.blue,),
          ),



        ),

      ),),);
  }

}