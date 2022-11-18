import 'package:flutter/material.dart';

class joya_4_colegio_carrasquilla extends StatefulWidget {
  const joya_4_colegio_carrasquilla({Key? key}) : super(key: key);

  @override
  State<joya_4_colegio_carrasquilla> createState() => _joya_4_colegio_carrasquillaState();
}

class _joya_4_colegio_carrasquillaState extends State<joya_4_colegio_carrasquilla> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: const Text('Colegio Carrasquilla',
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
                      image: const DecorationImage (image: AssetImage("assets/col_carrasquilla.png"), fit: BoxFit.cover)
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

                          Text('JOYA 4', style: TextStyle(color: Colors.white),),
                          Icon(Icons.diamond_outlined,size: 60,color:Colors.deepOrange ),
                          Text( 'COL CARRASQUILLA', style: TextStyle(color: Colors.white,fontSize: 14),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Colors.deepOrange ),
                          Text( 'QUIBDO', style: TextStyle(color: Colors.white,fontSize: 16),),
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

                          Text('Comenzó a ser levantado en 1927. La obras fueron terminas apenas en la década de 1940. La fachada es ecléctica, con capitales jónicos, columnas adosadas ventanas muy trabajadas y arcos. ',
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
