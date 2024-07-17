import 'package:flutter/material.dart'; 
import 'gradient_container.dart'; 

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //custom widget(GradientContainer) method call
        body: GradientContainer([
          Color.fromARGB(230, 47, 4, 97),
          Color.fromARGB(235, 12, 6, 88),
          Color.fromARGB(235, 28, 42, 238),
        ]),
      ),
    ),
  );
}
