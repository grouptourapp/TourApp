import 'package:flutter/material.dart';

class joya_5_Carcel extends StatefulWidget {
  const joya_5_Carcel({Key? key}) : super(key: key);

  @override
  State<joya_5_Carcel> createState() => _joya_5_CarcelState();
}

class _joya_5_CarcelState extends State<joya_5_Carcel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: const Text('Carcel Anayansi',
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

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.location_city,size: 60,color:Colors.deepOrange ),
                          Text( 'Quibdó', style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Departamento', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Colors.deepOrange ),
                          Text( 'Choco', style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Temperatura', style: TextStyle(color: Colors.white),),
                          Icon(Icons.thermostat,size: 60, color:Colors.deepOrange ),
                          Text( '27 Grados', style: TextStyle(color: Colors.white,fontSize: 22),),
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
                          Text('DESCRIPCION',
                            style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(height: 10,),

                          Text('Ofrecer información actualizada a los cibernautas, sobre los sitios turísticos de la Ciudad de Quibdó, su patrimonio histórico  y cultural, ha sido un sitio ideal para practicar la actividad turística. ',
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
