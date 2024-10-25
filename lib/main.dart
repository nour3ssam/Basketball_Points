import 'package:flutter/material.dart';

void main() {
  runApp(const CounterPoint());
}

class CounterPoint extends StatefulWidget {
  const CounterPoint({super.key});

  @override
  State<CounterPoint> createState() => _CounterPointState();
}

 int PointA = 0;
 int PointB = 0;

class _CounterPointState extends State<CounterPoint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Points Counter",
            style: TextStyle(color:Colors.white,
            fontSize: 28),
             ),
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text("Team A",
                      style:  TextStyle(
                        fontSize: 40,
                         
                      )),
                  Text("$PointA",
                      style: const TextStyle(
                        fontSize: 150,
                     
                      )),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.blue),
                        fixedSize: const WidgetStatePropertyAll(Size(165, 40))),
                    onPressed: () {
                      setState(() {
                        PointA++;
                      });
                    },
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                           WidgetStateProperty.all(Colors.blue),
                      fixedSize: const WidgetStatePropertyAll(Size(165, 40)), // not change size of button
                      //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                    ),
                    onPressed: () {
                      setState(() {
                        PointA += 2;
                      });
                    },
                    child: const Text(
                      "Add 2 point",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.blue),
                      fixedSize: const WidgetStatePropertyAll( Size(165, 40)), // not change size of button
                      //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                    ),
                    onPressed: () {
                      setState(() {
                        PointA += 3;
                      });
                    },
                    child: const Text(
                      "Add 3 point",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    // you must use SizedBox
                    color: Colors.black38,
                    thickness: 1,
                  ),
                ),
                Column(children: [
                  const Text("Team B",
                      style: TextStyle(
                        fontSize: 40,
                      
                      )),
                  Text("$PointB",
                      style: const TextStyle(
                        fontSize: 150,
                      
                      )),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.blue),
                        fixedSize: const WidgetStatePropertyAll(Size(165, 40))),
                    onPressed: () {
                      setState(() {
                        PointB++;
                      });
                    },
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                         WidgetStateProperty.all(Colors.blue),
                      fixedSize: const WidgetStatePropertyAll(
                          Size(165, 40)), // not change size of button
                      //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                    ),
                    onPressed: () {
                      setState(() {
                        PointB += 2;
                      });
                    },
                    child: const Text(
                      "Add 2 point",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                           WidgetStateProperty.all(Colors.blue),
                      fixedSize: const WidgetStatePropertyAll(Size(165, 40)), // not change size of button
                      //minimumSize: WidgetStatePropertyAll(Size(165, 40)),
                    ),
                    onPressed: () {
                      setState(() {
                        PointB += 3;
                      });
                    },
                    child: const Text(
                      "Add 3 point",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:  WidgetStateProperty.all(Colors.blue),
                  fixedSize: const WidgetStatePropertyAll(Size(165, 40))),
              onPressed: () {
                setState(() {
                  PointB = 0;
                  PointA = 0;
                });
              },
              child: const Text(
                "reset",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ])),
    );
  }
}
