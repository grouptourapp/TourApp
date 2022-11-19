import 'package:flutter/material.dart';

class joya_1_palacio extends StatefulWidget {
  const joya_1_palacio({Key? key}) : super(key: key);

  @override
  State<joya_1_palacio> createState() => _joya_1_palacioState();
}

class _joya_1_palacioState extends State<joya_1_palacio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('PALACIO EPISCOPAL',
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
                    color: Color(0xff50c1ea),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Column(
                        children: const [

                          Text('JOYA 1', style: TextStyle(color: Colors.white),),
                          Icon(Icons.diamond_outlined,size: 60,color:Color(0xffc56c3b)),
                          Text( 'PALACIO EPISCOPAL', style: TextStyle(color: Colors.white,fontSize: 16),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Color(0xffc56c3b) ),
                          Text( 'QUIBDO', style: TextStyle(color: Colors.white,fontSize: 16),),
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

                          Text('Se encuentra a orillas del río Atrato, construida en 1931, es parte fundamental del paisaje. Se trata de una obra aireada y proporcionada, con escalinatas de acceso. Se destacan los remates en pináculos (pequeñas torres) y un rico patio circundante con arcadas, que proporcionan un agradable clima interior.',
                            style: TextStyle(color: Colors.white),),
                          SizedBox(height: 20,),
                        ],
                      ),
                    )
                ),
                const SizedBox(height: 20,),


                const SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
