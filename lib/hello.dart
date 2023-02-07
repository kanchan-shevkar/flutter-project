import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loginapp/HomePage.dart';

class hello extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(
              child: Text(
            "Login Page",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          )),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color:Colors.white70,
                        borderRadius: BorderRadius.circular(21)
                      ),
                      child: TextField(
                        controller: emailText,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                          hintText: "enter username here",
                        ),
                      ),
                    ),
                    Container(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(21)),
                      child: TextField(
                          controller: passText,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(color: Colors.black87),
                              ),
                              hintText: "enter password here")),
                    ),
                    Container(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          String uEmail = emailText.text.toString();
                          String uPass = passText.text;
                          print("Email: $uEmail, Pass: $uPass");
                          if (uEmail == 'Tejas' && passText == '123') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          } else {
                            AlertDialog(
                              title: Text('Hii'),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                        minimumSize: Size(90, 50)
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ))
                  ],
                ))));
  }
}
