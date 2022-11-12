import 'package:flutter/material.dart';
import 'package:tourapp/pages/home_page_tourapp.dart';
import 'package:tourapp/pages/registrar_page_tourapp.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final email=TextEditingController();
  final password=TextEditingController();
  FirebaseAuth auth=FirebaseAuth.instance; //variable para login
  late final mensaje msg;


  void validarUsuario() async {
    //validar si ubuario NO  esta vacio
    try { //bloque tri cas, ejecuta, solo el bloque

      final user = await auth.signInWithEmailAndPassword(email: email.text, password: password.text);
      if(user != null){
        msg.mostrarMensaje("Bienvenido!!!!");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
      }

    } on FirebaseAuthException catch (e) { //validar las escecciones
      //mostrarMensaje("${e.code}");
      if(e.code=="invalid-email"){
        msg.mostrarMensaje("El formato del Email no es correcto.");
      }else
      if(e.code=="user-not-found"){
        msg.mostrarMensaje("El usuario no esta registrado.");
      }else
      if(e.code=="wrong-password"){
        msg.mostrarMensaje("Contraseña Incorrecta.");
      }else
      if(e.code=="unknown"){
        msg.mostrarMensaje("Complete los datos.");
      }else
      if(e.code=="network-request-failed"){
        msg.mostrarMensaje("Revise la conexion a internet.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    msg= mensaje(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100,horizontal: 50),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const Image(image: AssetImage("assets/logotipo_sinfondo.png"), width: 120, height: 120),
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(color: Colors.blue.shade900, width: 4),
                    color: Colors.lightBlueAccent,
                  ),
                ),
                TextFormField(
                  controller:email ,
                  autofocus: true,
                  autocorrect: true,
                  keyboardType: TextInputType.text,

                  cursorColor: Colors.deepOrangeAccent,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  decoration: const InputDecoration(

                      hintStyle: TextStyle(color: Colors.white),

                      fillColor: Colors.lightBlue,
                      filled: true,
                      labelText: "Usuario",
                      labelStyle: TextStyle(
                        color: Colors.white, ),
                      border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.white)
                      ),
                      suffixIcon: Icon(Icons.person, color: Colors.white,)
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller:password,
                  obscureText: true,
                  textAlign: TextAlign.left,
                  cursorColor: Colors.white,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  style: const TextStyle(
                      color: Colors.white
                  ),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.lightBlue,
                      filled: true,
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.white, ),
                      border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.white)
                      ),
                      suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.white,)
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrarPage()));
                  },
                  child: const Text("Ingresar"),

                ),
                const SizedBox(height: 10,),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.lightBlueAccent)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrarPage()));
                    },
                    child: const Text("Registrarse")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  class mensaje{

    late BuildContext context;

    mensaje(this.context);

    void mostrarMensaje(String mensaje){
      final pantalla=ScaffoldMessenger.of(context);
      pantalla.showSnackBar(
          SnackBar(
            content: Text(mensaje, style: const TextStyle(fontSize: 20),),
            backgroundColor: const Color(0xFFD50000),
            duration: const Duration(seconds: 10),
            action: SnackBarAction(
                label: 'Por favor Registrese',
                onPressed: (){
                  pantalla.hideCurrentSnackBar;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrarPage()));
                }

            ),
          )
      );
    }

    void mensajeOk(String mensaje){
      final pantalla=ScaffoldMessenger.of(context);
      pantalla.showSnackBar(
          SnackBar(
            content: Text(mensaje, style: const TextStyle(fontSize: 20),),
            backgroundColor: const Color(0xFF4CAF50),
            duration: const Duration(seconds: 10),
          )
      );
    }
  }
/*import 'package:flutter/material.dart';
import 'package:tourapp/pages/registrar_page_tourapp.dart';

import 'home_page_tourapp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email=TextEditingController();
  final password=TextEditingController();

  void validarUsuario(){

    if(email.text.isNotEmpty && password.text.isNotEmpty){
      if(email.text=="12345") {
        if (password.text == "12345") {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const HomePage()));
        } else {
          mostrarMensaje("Contraseña Incorrecta.");
        }
      }else{  mostrarMensaje("Usuario no registrado."); }
    }else{
      mostrarMensaje("Datos Obligatorios.");
    }
  }

  void mostrarMensaje(String mensaje){
    final pantalla=ScaffoldMessenger.of(context);
    pantalla.showSnackBar(
        SnackBar(
          content: Text(mensaje, style: const TextStyle(fontSize: 20),),
          backgroundColor: const Color(0xFFD50000),
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
              label: 'Registrese',
              onPressed: (){
                pantalla.hideCurrentSnackBar;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrarPage()));
              }
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100,horizontal: 50),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const Image(image: AssetImage("assets/logotipo_sinfondo.png"), width: 120, height: 120),
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(color: Colors.blue.shade900, width: 4),
                      color: Colors.lightBlueAccent,
                  ),
                ),
                TextFormField(
                  controller:email ,
                  autofocus: true,
                  autocorrect: true,
                  keyboardType: TextInputType.text,

                  cursorColor: Colors.deepOrangeAccent,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  decoration: const InputDecoration(

                      hintStyle: TextStyle(color: Colors.white),

                      fillColor: Colors.lightBlue,
                      filled: true,
                      labelText: "Usuario",
                      labelStyle: TextStyle(
                          color: Colors.white, ),
                      border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white)
                      ),
                    suffixIcon: Icon(Icons.person, color: Colors.white,)
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller:password,
                  obscureText: true,
                  textAlign: TextAlign.left,
                  cursorColor: Colors.white,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                    style: const TextStyle(
                      color: Colors.white
                          ),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.lightBlue,
                      filled: true,
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.white, ),
                      border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.white)
                      ),
                      suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.white,)
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrarPage()));
                    },
                    child: const Text("Ingresar"),

                ),
                const SizedBox(height: 10,),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.lightBlueAccent)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrarPage()));
                    },
                    child: const Text("Registrarse")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/