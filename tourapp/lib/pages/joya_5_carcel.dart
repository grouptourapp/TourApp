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
                      image: const DecorationImage (image: AssetImage("assets/carcel_frente_.png"), fit: BoxFit.cover)
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

                          Text('JOYA 5', style: TextStyle(color: Colors.white),),
                          Icon(Icons.diamond_outlined,size: 60,color:Colors.deepOrange ),
                          Text( 'CÁRCEL ANAYANSI', style: TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Colors.deepOrange ),
                          Text( 'QUIBDO', style: TextStyle(color: Colors.white,fontSize: 18),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Tipo monumento ', style: TextStyle(color: Colors.white),),
                          Icon(Icons.location_city,size: 60, color:Colors.deepOrange ),
                          Text( 'NACIONAL', style: TextStyle(color: Colors.white,fontSize: 18),),
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

                          Text('Aún funciona como tal, fue inaugurada el 6 de mayo de 1926 como una de las mejores del país. Sus instalaciones mezclan prefabricados y rasgos neoclásicos, '
                              'la opinión pública la saludó con gran regocijo. De lo mejor que hay en el país, '
                              'la mejor en cárceles del circuito y solo los panópticos en extensión, ninguna belleza y comodidad.',

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
