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
      backgroundColor: Colors.white,
      //backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("/logotipo_sinfondo.png"), fit: BoxFit.cover)
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                        children: [
                          Text('Información del Registro', style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: nombres,
                            keyboardType: TextInputType.name,
                            autofocus: true,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Nombres",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.person, color: Colors.blue, size: 24,)
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: apellidos,
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Apellidos",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.person, color: Colors.blue, size: 24,)
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Correo Electronico",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.email_outlined, color: Colors.blue, size: 24,)
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: telefono,
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Telefono",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.phone, color: Colors.blue, size: 24,)
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: direccion,
                            keyboardType: TextInputType.streetAddress,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Dirección",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.add_location_alt_rounded, color: Colors.blue, size: 24,)
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: const Text('Femenino'),
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
                              Expanded(
                                  child: ListTile(
                                    title: const Text('Masculino',style: TextStyle(color: Colors.white),),
                                    leading: Radio<Genero>(
                                      value: Genero.Masculino,
                                      groupValue: _genero,
                                      onChanged: (Genero? value) {
                                        setState(() {
                                          _genero = value;
                                        });
                                      },
                                    ),
                                  )
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            obscureText: true,
                            controller: password,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.vpn_key_sharp,)
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            controller: passwordConf,
                            cursorColor: Colors.blue,
                            cursorRadius: Radius.circular(20),
                            cursorWidth: 15,
                            decoration: const InputDecoration(
                                labelText: "Confirmar Password",
                                //fillColor: Colors.white,
                                //filled: true,
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.edit, color: Colors.lightBlue,),
                                suffixIcon: Icon(Icons.vpn_key_sharp,)
                            ),
                          ),
                          const SizedBox(height: 20,),
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
                                traerDatos();

                              },
                              child: const Text("Registrarse"))
                        ])))),
      ),
    );
  }
}