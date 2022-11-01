import 'package:flutter/material.dart';
import 'login_page_tourapp.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  void initState(){
    pasarPage();
    super.initState();
  }
  Future<void> pasarPage() async{
    Future.delayed(const Duration(seconds: 3), () async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/logotipo_sinfondo.png", width: 150, height: 150),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(color: Colors.black38, width: 4),
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20,),
            Text('Bienvenidos', style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}