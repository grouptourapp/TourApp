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
}
