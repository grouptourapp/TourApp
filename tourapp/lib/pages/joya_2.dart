import 'package:flutter/material.dart';

class joya_2_hospital extends StatefulWidget {
  const joya_2_hospital({Key? key}) : super(key: key);

  @override
  State<joya_2_hospital> createState() => _joya_2_hospitalState();
}

class _joya_2_hospitalState extends State<joya_2_hospital> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: const Text('Antiguo Hospital San Fco De Asis',
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
                      image: const DecorationImage (image: AssetImage("assets/hospital_sfa1.png"), fit: BoxFit.cover)
                  ),
                  width: double.infinity,
                  height: 200,
                ) ,
                const SizedBox(height: 40,),

                Container(

                  decoration: BoxDecoration(
                    color: Color(0xff50c1ea),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Column(
                        children: const [

                          Text('JOYA 2', style: TextStyle(color: Colors.white),),
                          Icon(Icons.diamond_outlined,size: 60,color:Color(0xffc56c3b) ),
                          Text( 'Hptal San Fco Asis', style: TextStyle(color: Colors.white,fontSize: 16),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Color(0xffc56c3b) ),
                          Text( 'Quibdó', style: TextStyle(color: Colors.white,fontSize: 18),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Tipo monumento ', style: TextStyle(color: Colors.white),),
                          Icon(Icons.location_city,size: 60, color:Color(0xffc56c3b) ),
                          Text( 'NACIONAL', style: TextStyle(color: Colors.white,fontSize: 16),),
                        ],
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                    decoration: BoxDecoration(
                      color: Color(0xff50c1ea),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children:const [
                          Text('DESCRIPCION   ',
                            style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(height: 10,),

                          Text('Hoy Colegio Santa Coloma, fue terminado en 1929, con base en diseños del alemán E. Altam. Aún cuando está muy deteriorado, todavía se destaca su cúpula, el acceso flaqueando con palmeras y las escalinatas en espiral. Tenía dos leones rampantes, pero solo queda uno en mal estado',
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
