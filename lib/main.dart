import 'package:ceaser_cipher/ceaser_cipher.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controller = TextEditingController();
  String plainText, encryptedText;
  int k;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ceaser Cipher")),
      body: Column(
        children: [
          TextField(
            controller: _controller,
          ),
          SizedBox(height: 20),
          Text("Plain Text", style: TextStyle(fontSize: 40, color: Colors.red)),
          SizedBox(height: 5),
          plainText == null ? SizedBox(width: 0) : Text(plainText),
          SizedBox(height: 50),
          Text("Encrypted Text",
              style: TextStyle(fontSize: 40, color: Colors.red)),
          SizedBox(height: 5),
          encryptedText == null ? SizedBox(width: 0) : Text(encryptedText),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(),
                onPressed: () {
                   plainText = _controller.text;
                  setState(() {
                    k = CeaserCipher().builNumber();
                   
                    encryptedText = CeaserCipher().encrypt(plainText, k);
                  });
                  
                },
                child: Text("Şifrele")),
                SizedBox(width: 10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    plainText = CeaserCipher().decrypt(plainText, k);
                  });
                 
                },
                child: Text("Şifreyi Çöz"))
          ])
        ],
      ),
    );
  }
}
