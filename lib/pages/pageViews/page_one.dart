import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class page_one extends StatelessWidget {
  const page_one({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 1, 1),
                ),
                child: 
                  Center(
                    child: Text('Quer namorar comigo?', 
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ), 
                    ),
                  ), 
              ),

              ],
            );
  }
}