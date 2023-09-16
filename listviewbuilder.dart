import 'package:flutter/material.dart';

class builder extends StatefulWidget {
  const builder({super.key});

  @override
  State<builder> createState() => _customState();
}

class _customState extends State<builder> {
  @override
  Widget build(BuildContext context) {
    var arrName = ['Anurag', 'Akshay', 'Ashokan', 'Radha', 'Jishna'];

    return Scaffold(
      appBar: AppBar(title: Text("List viewbuilder Sample")),
      body: Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[200]),
                  child: Center(
                    child: Text(
                      arrName[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ),
              );
            },
            itemCount: arrName.length,
          )
        ],
      ),
    );
  }
}
