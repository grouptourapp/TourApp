import 'package:flutter/material.dart';

class joya_3_escuela_modelo extends StatefulWidget {
  const joya_3_escuela_modelo({Key? key}) : super(key: key);

  @override
  State<joya_3_escuela_modelo> createState() => _joya_3_escuela_modeloState();
}

class _joya_3_escuela_modeloState extends State<joya_3_escuela_modelo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: const Text('Escuela Modelo',
            style: TextStyle( fontSize:14),),
          centerTitle: true

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20,),


                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage (image: AssetImage("assets/palacio episcopal.png"), fit: BoxFit.cover)
                  ),
                  width: double.infinity,
                  height: 200,
                ) ,
                const SizedBox(height: 40,),


                Container(

                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Column(
                        children: const [

                          Text('JOYA 3', style: TextStyle(color: Colors.white),),
                          Icon(Icons.location_city,size: 60,color:Colors.deepOrange ),
                          Text( 'ESCUELA MODELO', style: TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Colors.deepOrange ),
                          Text( 'Quibdó', style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Tipo monumento ', style: TextStyle(color: Colors.white),),
                          Icon(Icons.thermostat,size: 60, color:Colors.deepOrange ),
                          Text( 'Nacional', style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children:const [
                          Text('DESCRIPCION   ',
                            style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(height: 10,),

                          Text('Se encuentra a orillas del río Atrato, construida en 1931, es parte fundamental del paisaje. Se trata de una obra aireada y proporcionada, con escalinatas de acceso. Se destacan los remates en pináculos (pequeñas torres) y un rico patio circundante con arcadas, que proporcionan un agradable clima interior.',
                            style: TextStyle(color: Colors.white),),
                          SizedBox(height: 20,),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
