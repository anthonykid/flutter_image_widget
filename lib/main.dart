import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            color: Colors.black, //container turns to black
            width: 400, //width of the photo
            height: 400, //height of the photo
            padding: EdgeInsets.all(3), //to make a border for the photo
            child: Image(
              image: AssetImage( //using assetimage to show image from folder Images that we import, carefull with the asset on pubspec.yaml
                "images/quotes.jpg" //the name folder following by the picture name and format
              ),
              
              //image: NetworkImage( //using network image to show image from online source
                  //"https://archziner.com/wp-content/uploads/2020/01/black-and-white-photo-of-a-snowy-mountain-landscape-red-aesthetic-wallpaper-full-moon-in-the-black-sky.jpg"),
                  //fit: BoxFit.contain, // fit the photo inside the container we set
                  //fit: BoxFit.cover, //fit the container inside the photo we that we had
                  //fit: BoxFit.none, //fit the container inside the photo in real size photo
                  //fit: BoxFit.fill, //fit the picture inside the container, stretching the picture all of it inside the container

                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat, //the side have an repeat left and right where the container still blank      
            ),
          ),
        ),
      ),
    );
  }
}
