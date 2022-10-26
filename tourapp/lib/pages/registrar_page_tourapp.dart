import 'package:flutter/material.dart';
import 'login_page_tourapp.dart';

class RegistrarPage extends StatefulWidget {
  const RegistrarPage({Key? key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: const Image(image: AssetImage("/icono.png"),width: 50, height: 50),
                       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                       margin: const EdgeInsets.all(20),
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          border: Border.all(color: Colors.black38, width: 4),
                          color: Colors.blue,
                       ),
                ),
                SizedBox(height: 20,),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.lightBlueAccent)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    child: const Text("Devolverse")
                ),
              ],
            ),
        ),
    );
  }
}
