import 'package:flutter/material.dart';
import 'package:tourapp/pages/home_page_tourapp.dart';
import 'package:tourapp/pages/registrar_page_tourapp.dart';
import 'package:tourapp/pages/registrar_page_tourapp.dart';

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
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const Image( image: AssetImage("/logotipo_sinfondo.png"), width: 120, height: 120),
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(color: Colors.black38, width: 4),
                      color: Colors.blue
                  ),
                ),
                TextFormField(
                  controller: email,
                  autofocus: true,
                  cursorColor: Colors.blue,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  decoration: const InputDecoration(
                      labelText: "Correo Electrónico",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                      suffixIcon: Icon(Icons.email_outlined, color: Colors.blue, size: 24)
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  cursorColor: Colors.blue,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  //keyboardType: TextInputType.emailAddress,
                  //maxLength: 8,
                  decoration: const InputDecoration(
                    labelText: "Contraseña",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                    suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.blue, size: 24),
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      shadowColor: Colors.black26,
                      textStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20
                      )
                  ),
                  onPressed:(){
                    validarUsuario();
                  },
                  child: const Text("Ingresar"),
                ),
                const SizedBox(height: 10,),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.blue)
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
