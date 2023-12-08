import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/provider.dart';
import 'package:state_management/stream/DetailPage.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(24),
                  child: ListView.builder(
                    itemCount: context.watch<ProviderApp>().getNames.length,
                    itemBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.only(bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black12,
                              width: 1
                            )
                          ),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                            ),
                            title: Text(context.watch<ProviderApp>().getNames[index]),
                            onTap: (){
                              context.read<ProviderApp>().setIndex(index);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailPage())
                              );
                            },
                          ),
                        ),
                      );
                    }
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}