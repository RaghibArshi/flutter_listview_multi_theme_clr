import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatefulWidget {
  PostDetailScreen({Key? key, required this.image, required this.name, required this.message, required this.profile}) : super(key: key);
  String image;
  String name;
  String message;
  String profile;
  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}
class _PostDetailScreenState extends State<PostDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Fan Walls'
          // title,
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
            },
            child: Icon(Icons.arrow_back_ios)),
        backgroundColor: Color(0xff235321),
        elevation: 10,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(widget.profile, height: 200, width: 200, fit: BoxFit.fill,)
                ),
                Text(widget.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20), maxLines: 1,),
                SizedBox(height: 10,),
                Image.asset(widget.image, height: 400, width: MediaQuery.of(context).size.width, fit: BoxFit.fill,),
                SizedBox(height: 10,),
                Text(
                  widget.message, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
