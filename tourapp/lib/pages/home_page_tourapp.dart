import 'package:flutter/material.dart';
import 'package:tourapp/pages/menu_page_tourapp.dart';
import 'joya1_page.dart';
import 'joya_2.dart';
import 'joya_3_page.dart';
import 'joya_4_colegio.dart';
import 'joya_5_carcel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MenuPage(),
      appBar: AppBar(
        title: const Text('QUIBDO "PARAISO ESCONDIDO COLOMBIANO"',
                  style: TextStyle( fontSize:14),
        ),

          //bottom: Color(ff9fd9fe)
            centerTitle: true
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage (image: AssetImage("assets/quibdo_letras_color.png"), fit: BoxFit.cover)
                  ),
                  width: double.infinity,
                  height: 300,
                ) ,
                const SizedBox(height: 40),

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
                          Text('DESCRIPCION   ',
                            style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(height: 10,),

                          Text('Ofrecer información actualizada a los cibernautas, sobre los sitios turísticos de la Ciudad de Quibdó, su patrimonio histórico  y cultural, ha sido un sitio ideal para practicar la actividad turística. ',
                            style: TextStyle(color: Colors.white),),
                          SizedBox(height: 20,),
                        ],
                      ),
                    )
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        InkWell(
                          child: Container(
                            width:150,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("joya1")),
                          ),
                          onTap:() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const joya_1_palacio()));
                          },
                        ),
                        SizedBox(width: 20,),

                        InkWell(
                          child: Container(
                            width:150,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("joya2")),
                          ),
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const joya_2_hospital()));
                          },
                        ),
                        SizedBox(width: 20,),
                        InkWell(
                          child: Container(
                            width:150,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("joya3")),
                          ),
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const joya_3_escuela_modelo()));
                          },
                        ),
                        SizedBox(width: 20,),
                        InkWell(
                          child: Container(
                            width:150,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("joya4")),
                          ),
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const joya_4_colegio_carrasquilla()));
                          },
                        ),
                        SizedBox(width: 20,),
                        InkWell(
                          child: Container(
                            width:150,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text("joya5")),
                          ),
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const joya_5_Carcel()));
                          },
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /*appBar: AppBar(
        title: Text('QUIBDO "PARAISO ESCONDIDO COLOMBIANO"',
                  style: TextStyle( fontSize:14),
        ),
            centerTitle: true
      ),*/

      body: Container(

        //child: Padding(
           // padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                        children: [
                          //const SizedBox(height: 20,),
                         /* const Text('Las Cinco Joyas Ocultas de Quibdó',
                              style: TextStyle(color: Colors.white,fontSize:22)
                               ),*/
                          //const SizedBox(height: 40,),
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
                                  image: const DecorationImage (image: AssetImage("assets/quibdo_ppal.jpg"), fit: BoxFit.cover)
                                ),
                                width: double.infinity,
                                height: 300,
                              ) ,
                          const SizedBox(height: 40),

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
                                Text('DESCRIPCION   ',
                                      style: TextStyle(color: Colors.white,fontSize: 22),),
                                  SizedBox(height: 10,),

                                Text('Ofrecer información actualizada a los cibernautas, sobre los sitios turísticos de la Ciudad de Quibdó, su patrimonio histórico  y cultural, ha sido un sitio ideal para practicar la actividad turística. ',
                                  style: TextStyle(color: Colors.white),),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            )
                          ),
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            padding: EdgeInsets.all(12),
                            child: Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [

                                  InkWell(
                                    child: Container(
                                      width:150,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: Text("joya1")),
                                    ),
                                  ),
                                  SizedBox(width: 20,),

                                  InkWell(
                                    child: Container(
                                      width:150,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: Text("joya2")),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  InkWell(
                                    child: Container(
                                      width:150,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: Text("joya3")),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  InkWell(
                                    child: Container(
                                      width:150,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: Text("joya4")),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  InkWell(
                                    child: Container(
                                      width:150,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: Text("joya5")),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                ],
                              ),
                            ),
                          )
                    ],
                ),
            ),
        ),
      ),
    );
  }
}*/