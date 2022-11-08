import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../modelo/usuario_modelo_tourapp.dart';


class Usuario_Registrar{

  Future<String?> registrarUsuario(String email, String password) async{
// como se cambio booleano, ir a registrar y cambiar a var en resultado
    try{
      final credencial = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      return credencial.user?.uid;
    }on FirebaseAuthException catch(e){
      return e.code;
    }on FirebaseException catch(e){
      return e.code;
    }
  }

  Future<String> crearUsuario(Usuario usuario)async{

    try{
      //guarda el usuario en la BD en formato json
      var documento = await FirebaseFirestore.instance.collection("usuarios").doc(usuario.id).set(usuario.convertir());
      return usuario.id;
    }on FirebaseAuthException catch(e){
      return e.code;

    }
  }

}