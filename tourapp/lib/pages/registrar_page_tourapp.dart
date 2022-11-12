import 'package:flutter/material.dart';
import 'login_page_tourapp.dart';
import 'package:tourapp/repositorio/usuario_registrar_tourapp.dart';
import '../modelo/usuario_modelo_tourapp.dart';


class RegistrarPage extends StatefulWidget {
  const RegistrarPage({Key? key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}
enum Genero {Femenino,Masculino}

class _RegistrarPageState extends State<RegistrarPage> {

  final nombres=TextEditingController();
  final apellidos=TextEditingController();
  final telefono=TextEditingController();
  final direccion=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final passwordConf=TextEditingController();
  Usuario_Registrar usuario= Usuario_Registrar();
  late mensaje msg;

  Genero? _genero= Genero.Femenino;

  void guardarUsuario(Usuario usuNew) async {
    var resultado= await usuario.registrarUsuario(email.text, password.text);

    if(resultado=="invalid-email"){
      msg.mostrarMensaje("El formato del Email no es correcto.");
    }else
    if(resultado=="weak-password"){
      msg.mostrarMensaje("La contraseña debe tener minimo 6 caracteres.");
    }else
    if(resultado=="unknown"){
      msg.mostrarMensaje("Complete los datos.");
    }else
    if(resultado=="network-request-failed"){
      msg.mostrarMensaje("Revise la conexion a internet.");
    }else{
      usuNew.id=resultado;
      registrarUsuario(usuNew);
      msg.mensajeOk("Usuario Registrado exitosamente, inicie sesion.");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
    }
  }

  void registrarUsuario(Usuario usuNew) async{
    var id= await usuario.crearUsuario(usuNew);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
  }



  void traerDatos(){

    setState(() {
      if(password.text == passwordConf.text){
        if(nombres.text.isNotEmpty && apellidos.text.isNotEmpty && email.text.isNotEmpty &&
            telefono.text.isNotEmpty && direccion.text.isNotEmpty && password.text.isNotEmpty && passwordConf.text.isNotEmpty){
          String gen ="Femenino";
          if(_genero==Genero.Masculino){
            gen="Masculino";
          }
          var usuNew= Usuario("", nombres.text, apellidos.text, email.text, telefono.text, direccion.text, gen, password.text);
          guardarUsuario(usuNew);
        }else{
          msg.mostrarMensaje("Datos Incompletos.");
        }
      }else{
        msg.mostrarMensaje("Las contraseñas no coinciden.");
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    msg=mensaje(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(

              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:400,
                  decoration: const BoxDecoration( image: DecorationImage (
                    image: AssetImage("assets/fondoquibdoazul.png"),fit: BoxFit.fill,),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(90, 220, 90, 20),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200) ,
                        border: Border.all(color: Colors.black,width: 5),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment(0.0, 1.0),
                          colors: <Color>[
                            Color(0x0f7986cb),
                            Color(0xff1a237e),
                          ],
                          tileMode: TileMode.repeated,
                        ),
                      ),
                      child:const Image(image: AssetImage ("assets/cono.png"),
                      ) ,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),

                  child: Column(
                    children: [
                      TextFormField(
                        controller: nombres,
                        textAlign: TextAlign.center,
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
                            labelText: "Nombres",
                            labelStyle: TextStyle(
                              color: Colors.white, ),
                            border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Colors.white)
                            ),
                            suffixIcon: Icon(Icons.drive_file_rename_outline_sharp, color: Colors.white,)
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: apellidos,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.white,
                        cursorRadius: const Radius.circular(20),
                        cursorWidth: 15,
                        style: const TextStyle(
                            color: Colors.white
                        ),
                        decoration: const InputDecoration(

                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.lightBlue,
                            filled: true,
                            labelText: "Apellidos",
                            labelStyle: TextStyle(
                              color: Colors.white, ),
                            border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Colors.white)
                            ),
                            suffixIcon: Icon(Icons.drive_file_rename_outline_sharp, color: Colors.white,)
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Masculino',style: TextStyle(color: Colors.white,fontSize: 14)),
                              leading: Radio <Genero>(
                                value: Genero.Masculino,
                                groupValue: _genero,
                                onChanged: (Genero? value) {
                                  setState(() {
                                    _genero = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child:ListTile(

                              title: const Text('Femenino',style: TextStyle(color: Colors.white,fontSize: 14 )),
                              leading: Radio<Genero>(
                                value: Genero.Femenino,
                                groupValue: _genero,
                                onChanged: (Genero? value) {
                                  setState(() {
                                    _genero = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),

                      TextFormField(
                        controller: email,
                        textAlign: TextAlign.center,
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
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Colors.white, ),
                            border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Colors.white)
                            ),
                            suffixIcon: Icon(Icons.email_rounded, color: Colors.white,)
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller:password ,
                        obscureText: true,
                        textAlign: TextAlign.center,
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
                            suffixIcon: Icon(Icons.password, color: Colors.white,)
                          //
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: passwordConf,
                        obscureText: true,
                        textAlign: TextAlign.center,
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
                            labelText: "Confirmar Password",
                            labelStyle: TextStyle(
                              color: Colors.white, ),
                            border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:Colors.white)
                            ),
                            suffixIcon: Icon(Icons.password, color: Colors.white,)

                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black12,
                        fixedSize: const Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20)),
                    onPressed:(){

                    },
                    child: const Text("Registrarse"))

              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'login_page_tourapp.dart';


class RegistrarPage extends StatefulWidget {
  const RegistrarPage({Key? key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

enum Genero {Femenino,Masculino}

class _RegistrarPageState extends State<RegistrarPage> {
  final nombres=TextEditingController();
  final apellidos=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final passwordConf=TextEditingController();

  Genero genero=  Genero.Femenino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(

                  children: <Widget>[
                  Container(
                   width: MediaQuery.of(context).size.width,
                   height:400,
                    decoration: const BoxDecoration( image: DecorationImage (
                                  image: AssetImage("assets/fondoquibdoazul.png"),fit: BoxFit.fill,),
                                  color: Colors.green,
                           ),
                    child: Padding(
                         padding: const EdgeInsets.fromLTRB(90, 220, 90, 20),
                         child: Container(
                           alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200) ,
                              border: Border.all(color: Colors.black,width: 5),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment(0.0, 1.0),
                                  colors: <Color>[
                                    Color(0x0f7986cb),
                                    Color(0xff1a237e),
                                  ],
                                tileMode: TileMode.repeated,
                              ),
                            ),
                           child:const Image(image: AssetImage ("assets/cono.png"),
                                 ) ,
                          ),
                       ),
                      ),
                    SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),

                      child: Column(
                        children: [
                          TextFormField(
                            controller: nombres,
                            textAlign: TextAlign.center,
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
                                labelText: "Nombres",
                                labelStyle: TextStyle(
                                  color: Colors.white, ),
                                border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color:Colors.white)
                                ),
                                suffixIcon: Icon(Icons.drive_file_rename_outline_sharp, color: Colors.white,)
                            ),
                          ),
                          const SizedBox(height: 20),
                         TextFormField(
                           controller: apellidos,
                           textAlign: TextAlign.center,
                           cursorColor: Colors.white,
                           cursorRadius: const Radius.circular(20),
                           cursorWidth: 15,
                           style: const TextStyle(
                               color: Colors.white
                           ),
                           decoration: const InputDecoration(

                               hintStyle: TextStyle(color: Colors.white),
                               fillColor: Colors.lightBlue,
                               filled: true,
                               labelText: "Apellidos",
                               labelStyle: TextStyle(
                                 color: Colors.white, ),
                               border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                               enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color:Colors.white)
                               ),
                               suffixIcon: Icon(Icons.drive_file_rename_outline_sharp, color: Colors.white,)
                           ),
                         ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: const Text('Masculino',style: TextStyle(color: Colors.white,fontSize: 14)),
                                  leading: Radio <Genero>(
                                    value: Genero.Masculino,
                                    groupValue: genero,
                                    onChanged: (Genero? value) {
                                      setState(() {
                                        genero = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child:ListTile(

                                  title: const Text('Femenino',style: TextStyle(color: Colors.white,fontSize: 14 )),
                                  leading: Radio<Genero>(
                                    value: Genero.Femenino,
                                    groupValue: genero,
                                    onChanged: (Genero? value) {
                                      setState(() {
                                        genero = value!;
                                    });
                                  },
                                ),
                              ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          TextFormField(
                            controller: email,
                            textAlign: TextAlign.center,
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
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.white, ),
                                border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color:Colors.white)
                                ),
                                suffixIcon: Icon(Icons.email_rounded, color: Colors.white,)
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller:password ,
                            obscureText: true,
                            textAlign: TextAlign.center,
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
                                suffixIcon: Icon(Icons.password, color: Colors.white,)
                                //
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: passwordConf,
                            obscureText: true,
                            textAlign: TextAlign.center,
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
                                labelText: "Confirmar Password",
                                labelStyle: TextStyle(
                                  color: Colors.white, ),
                                border: OutlineInputBorder(borderSide: BorderSide(color:Colors.white) ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color:Colors.white)
                                ),
                                suffixIcon: Icon(Icons.password, color: Colors.white,)

                            ),
                          ),
                     ],
                      ),
                      ),
                    const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black12,
                        fixedSize: const Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20)),
                    onPressed:(){

                    },
                    child: const Text("Registrarse"))

                  ],
              ),
            ),
          ),
        ),
    );
  }
}*/