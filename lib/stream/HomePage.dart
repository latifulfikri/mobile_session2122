import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: new Container(
          child: Column(
            children: [
              Expanded(child: Text("")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${context.watch<ProviderApp>().hitung}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 102
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      elevation: 0,
                      shadowColor: Colors.transparent
                    ),
                    onPressed: (){
                      context.read<ProviderApp>().decrement();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(FontAwesomeIcons.minus),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(right: 16)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      elevation: 0,
                      shadowColor: Colors.transparent
                    ),
                    onPressed: (){
                      context.read<ProviderApp>().increment();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(FontAwesomeIcons.plus),
                    )
                  )
                ],
              ),
              Expanded(child: Text("")),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Container(
              //         padding: EdgeInsets.all(24),
              //         child: ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(16)
              //             ),
              //             elevation: 0,
              //             shadowColor: Colors.transparent
              //           ),
              //           onPressed: (){

              //           },
              //           child: Padding(
              //             padding: EdgeInsets.all(16),
              //             child: Icon(FontAwesomeIcons.plus),
              //           )
              //         ),
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}