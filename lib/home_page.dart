import 'package:flutter/material.dart';
import 'package:workshop_project/custom_container.dart';
import 'package:workshop_project/pretty_button.dart';
import 'package:workshop_project/pretty_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/background.png',
                  ),
                  fit: BoxFit.cover)),
          child: Center(
            child: GlassContainer(
              extraWidget: Container(
                padding: const EdgeInsets.all(30),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    //SizedBox(height: 50),
                    Text("This is the first Flutter UI workshop - learn how to create pretty designs with easy tools",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),),
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: PrettyContainer(width: 250, height: 50,),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
