import 'package:flutter/material.dart';


class CoustomErrorWidget extends StatelessWidget {
  const CoustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 450,
      child:const Center(
        child: Text(
          "In Error Acored"
        ),
      ),
    );
  }
}