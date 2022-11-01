import 'package:flutter/material.dart';
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
  final telefono=TextEditingController();
  final direccion=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final passwordConf=TextEditingController();

  Genero? _genero= Genero.Femenino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
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

                              },
                              child: const Text("Registrarse"))
                        ])))),
      ),
    );
  }
}