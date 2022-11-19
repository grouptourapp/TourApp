import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tourapp/pages/menu_page_tourapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'joya1_page.dart';
import 'joya_2.dart';
import 'joya_3_page.dart';
import 'joya_4_colegio.dart';
import 'joya_5_carcel.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    color: Color(0xff50c1ea),
                    borderRadius: BorderRadius.circular(12),
                  ),

                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Column(
                        children: const [

                          Text('Ciudad', style: TextStyle(color: Colors.white),),
                          Icon(Icons.location_city,size: 60,color:Color(0xffc56c3b)),
                          Text( 'Quibdó', style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Departamento', style: TextStyle(color: Colors.white),),
                          Icon(Icons.pin_drop_outlined,size: 60, color:Color(0xffc56c3b) ),
                          Text( 'Choco', style: TextStyle(color: Colors.white,fontSize: 22),),
                        ],
                      ),
                      Column(
                        children: const [

                          Text('Temperatura', style: TextStyle(color: Colors.white),),
                          Icon(Icons.thermostat,size: 60, color:Color(0xffc56c3b) ),
                          Text( '27 Grados', style: TextStyle(color: Colors.white,fontSize: 22),),
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
                              image: const DecorationImage (image: AssetImage("assets/palacio episcopal.png"), fit: BoxFit.cover),
                              color: Color(0xff50c1ea),
                              borderRadius: BorderRadius.circular(20),
                              ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    RatingBar.builder(
                                      wrapAlignment: WrapAlignment.center,
                                      itemSize: 30,
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      //itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Color(0xffc56c3b),

                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )
                                  ],

                                ),
                                Stack(
                                    alignment: Alignment.bottomCenter,
                                    children:  [
                                      Text("JOYA 1",style: GoogleFonts.pottaOne(color:Color(0xffc56c3b),fontSize:22 ),
                                      ),
                                    ]
                                ),
                              ],
                            ),
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
                              image: const DecorationImage (image: AssetImage("assets/hospital_sfa1.png"), fit: BoxFit.cover),
                              color: Color(0xff50c1ea),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                    children:[
                                      RatingBar.builder(
                                        wrapAlignment: WrapAlignment.center,
                                        itemSize: 30,
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemCount: 5,
                                        //itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Color(0xffc56c3b),

                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      )
                                    ]
                                ),
                                Stack(
                                    alignment: Alignment.bottomCenter,
                                    children:  [
                                      Text("JOYA 2",style: GoogleFonts.pottaOne(color:Color(0xffc56c3b),fontSize:22 ),/*style: GoogleFonts.pacifico( textStyle: TexStyle( color: Colors.white,)
                                    ),*/
                                      )
                                    ]
                                ),
                              ],
                            ),
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
                              image: const DecorationImage (image: AssetImage("assets/escuela_modelo.png"), fit: BoxFit.cover),
                              color: Color(0xff50c1ea),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children:[
                                    RatingBar.builder(
                                      wrapAlignment: WrapAlignment.center,
                                      itemSize: 30,
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      //itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Color(0xffc56c3b),

                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )
                                  ]
                                ),
                                Stack(
                                    alignment: Alignment.bottomCenter,
                                    children:  [
                                      Text("JOYA 3",style: GoogleFonts.pottaOne(color:Color(0xffc56c3b),fontSize:22 ),/*style: GoogleFonts.pacifico( textStyle: TexStyle( color: Colors.white,)
                                    ),*/
                                      )
                                    ]
                                 ),
                              ],
                            ),
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
                              image: const DecorationImage (image: AssetImage("assets/col_carrasquilla.png"), fit: BoxFit.cover),
                              color: Color(0xff50c1ea),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                    children:[
                                      RatingBar.builder(
                                        wrapAlignment: WrapAlignment.center,
                                        itemSize: 30,
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemCount: 5,
                                        //itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Color(0xffc56c3b),

                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      )
                                    ]
                                ),
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children:  [
                                    Text("JOYA 4",style: GoogleFonts.pottaOne(color:Color(0xffc56c3b),fontSize:22 ),/*style: GoogleFonts.pacifico( textStyle: TexStyle( color: Colors.white,)
                                    ),*/
                                    )
                                  ]
                                ,),
                              ],
                            )
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
                              image: const DecorationImage (image: AssetImage("assets/carcel_frente_.png"), fit: BoxFit.cover),
                              color: Color(0xff50c1ea),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children:[
                                    RatingBar.builder(
                                      wrapAlignment: WrapAlignment.center,
                                      itemSize: 30,
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      //itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Color(0xffc56c3b),

                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )
                                  ]
                                ),
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children:  [
                                    Text("JOYA 5",style: GoogleFonts.pottaOne(color:Color(0xffc56c3b),fontSize:22),/*style: GoogleFonts.pacifico( textStyle: TexStyle( color: Colors.white,)
                                    ),*/
                                    )
                                  ]
                                ),
                              ],
                            ),
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
