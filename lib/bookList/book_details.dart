import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview/model/book_item.dart';

class BookDetails extends StatefulWidget{
  final BookItem bookItem;
  BookDetails({required this.bookItem});


  @override
  _BookDetailsState createState()=> _BookDetailsState();

}
class _BookDetailsState extends State<BookDetails>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Book Details"),
       centerTitle: true,
     ),
     body:Column(
       children: [
         Image.network("https://images.pexels.com/photos/415071/pexels-photo-415071.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
         SizedBox(height: 10,),
         Text("${widget.bookItem.title}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
         Text("${widget.bookItem.author}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.normal,fontSize:16),),
         Text("${widget.bookItem.price}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.normal,fontSize:16),),

         SizedBox(height: 15,),
         ElevatedButton(onPressed: (){}, child:Text("Buy Now"))

       ],
     ),
   );
  }

}