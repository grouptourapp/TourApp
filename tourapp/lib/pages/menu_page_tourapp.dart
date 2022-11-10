import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourapp/pages/login_page_tourapp.dart';


class MenuPage extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.cyanAccent
            ),
            child: Image.asset("assets/icono.png",width: 60,height: 60),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.exit_to_app, size: 20, color:   Colors.blue,),
                title: const Text("Salir", style: TextStyle( fontSize: 20),),
                textColor: Colors.orange,
                  onTap:(){
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));


    },

              )
            ],
          )
        ],
      ),
    );
  }

}