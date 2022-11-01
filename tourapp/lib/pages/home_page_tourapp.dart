import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edificaciones de interés cultural de la Nación."),
      ),
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
                  const SizedBox(height: 20,),
                  Text('Las Cinco Joyas Ocultas de Quibdó', style: Theme.of(context).textTheme.headline5,),
                  Container(
                    child: Image.asset("assets/quibdo_ppal.jpg", width: 300, height: 300),
                    padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                  ),
                  Container(
                      child: ListTile(
                        title: const Text('Ciudad : Quibdó',style: TextStyle(color: Colors.black),),
                      )
                  ),
                  Container(
                      child: ListTile(
                        title: const Text('Departamento: Chocó',style: TextStyle(color: Colors.black),),
                      )
                  ),
                  Container(
                      child: ListTile(
                        title: const Text('Temperatura : 27 Grados',style: TextStyle(color: Colors.black),),
                      )
                  ),
                  Text('Descripción : Ofrecer información actualizada a los cibernautas, sobre los sitios turísticos de la Ciudad de Quibdó, su patrimonio histórico y cultural, ha sido un sitio ideal para practicar la actividad turística.'),
                  const SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
