import 'package:flutter/material.dart';
void main() {
  runApp(CounterPoint());
}

class CounterPoint extends StatefulWidget {
 
  @override
  State<CounterPoint> createState() => _CounterPointState();
}

    int PointA=0;
    int PointB=0;
class _CounterPointState extends State<CounterPoint> {
  @override
  Widget build(BuildContext context) {
    // void nour(){
    //   print("add one point");
    // }
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold (
      appBar: AppBar(
        backgroundColor:Color(0xFFFFA500),
        title: Text("Points Counter"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Column(

                  children: [

                    Text(
                       "Team A",
                       style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFFFA500),
                        )
                      ),


                    Text(
                      
                       "$PointA",
                       style: TextStyle(
                        fontSize: 150,
                        color: Color(0xFFFFA500),
                        )
                      ),



                        ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40))
                       ),

                        onPressed: () {
                          setState(() {    
                           PointA++;
                          });
                        },
                        
                       child: Text(
                        "Add 1 point",
                        style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                        ),
                        ),

                      
                      ),

                      SizedBox(
                    height: 20,
                    ),



                      
                      ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40)), // not change size of button 
                       //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                       ),

                        onPressed:(){
                          setState(() {
                          PointA+=2;
                          });
                        }, 
                      
                       child: Text(
                        "Add 2 point",
                         style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                         ),
                      ),

                    ),



                    SizedBox(
                    height: 20,
                    ),




                     ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40)), // not change size of button 
                       //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                       ),

                        onPressed:(){
                          setState(() {
                          PointA+=3;     
                          });
                        }, 
                      
                       child: Text(
                        "Add 3 point",
                         style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                        ),
                      ),

                    ),
 

                  ]
                ),


              SizedBox(
                height: 400,
                 child: VerticalDivider( // you must use SizedBox 
                      color: Colors.black38,
                      thickness: 1,
                   ),
              ),
               




                Column(
                  children: [

                    Text(
                       "Team B",
                       style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFFFA500),
                        )
                      ),


                    Text(
                       "$PointB",
                       style: TextStyle(
                        fontSize: 150,
                        color: Color(0xFFFFA500),
                        )
                      ),



                        ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40))
                       ),

                        onPressed: (){
                          setState(() {
                          PointB++;
                          });
                        },

                       child: Text(
                        "Add 1 point",
                        style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                        ),
                        ),

                      ),

                      SizedBox(
                    height: 20,
                    ),


                      ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40)), // not change size of button 
                       //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                       ),

                        onPressed:(){
                          setState(() {
                          PointB+=2;
                          });
                        }, 
                      
                       child: Text(
                        "Add 2 point",
                         style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                         ),
                      ),

                    ),


                    SizedBox(
                    height: 20,
                    ),

                     ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40)), // not change size of button 
                       //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                       ),

                        onPressed:(){
                          setState(() {
                          PointB+=3;
                          });
                        }, 
                      
                       child: Text(
                        "Add 3 point",
                         style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                         ),
                      ),

                    ),

                  ]
                ),

              ],
            ),
            SizedBox(
              height: 50,
            ),

             ElevatedButton(
                        style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Color(0xFFFFA500)),
                       fixedSize:WidgetStatePropertyAll(Size(165, 40))
                       ),

                        onPressed: () {
                          setState(() {
                            PointB=0;
                            PointA=0;
                          });
                        },
                        
                       child: Text(
                        "reset",
                        style : TextStyle(
                          fontSize: 22,
                          color :Colors.white,
                        ),
                        ),
                      
                      ),
          ]
        )

      ),
    );
  }
}

