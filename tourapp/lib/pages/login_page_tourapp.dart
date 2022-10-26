import 'package:flutter/material.dart';
import 'package:tourapp/pages/registrar_page_tourapp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100,horizontal: 50),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const Image(image: AssetImage("/logotipo_sinfondo.png"), width: 120, height: 120),
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(color: Colors.black38, width: 4),
                      color: Colors.blue,
                  ),
                ),
                TextFormField(
                  autofocus: true,
                  autocorrect: true,
                  keyboardType: TextInputType.text,
                  // keyboardType: TextInputType.number, activa solo el teclado numero
                  // textInputAction: TextInputAction.send, activa el boton siguiente del teclado
                  // hintText: 'Usuario',
                  // hintStyle: TextStyle(color: Colors.red),
                  // helperText: 'Nombre de Usuario',
                  //textCapitalization: TextCapitalization.words, Cada palabra inicia con mayusculas
                  cursorColor: Colors.red,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                  //maxLength: 15, coloca abajo del text la cantidad de caracters que se van escribiendo
                  decoration: const InputDecoration(
                    // icon: Icon(Icons.notifications_active, color: Colors.lightBlue,)
                    prefix: Icon(Icons.notifications_active, color: Colors.lightBlue,),
                    // prefix: CircularProgressIndicator(),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Usuario",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.person, color: Colors.lightBlue,)
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  //keyboardType: TextInputType.emailAddress,
                  //maxLength: 8,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.red,
                  cursorRadius: Radius.circular(20),
                  cursorWidth: 15,
                  decoration: const InputDecoration(
                      prefix: Icon(Icons.notifications_active, color: Colors.lightBlue,),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.vpn_key_sharp, color: Colors.lightBlue,)
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed:(){},
                    child: const Text("Ingresar"),
                ),
                SizedBox(height: 20,),
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
