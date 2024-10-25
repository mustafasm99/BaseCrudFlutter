import 'package:app/servec/product_crud.dart';
import 'package:app/shared/bottom_nav.dart';
import 'package:flutter/material.dart';


var _crud = Crud();

class CreateProudectPage extends StatelessWidget {
  const CreateProudectPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController title = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: Container(
            height: 250,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.lightBlue,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: title,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Title',
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String temp = '';
                        if(title.text.isNotEmpty){
                          _crud.addData(title.text);
                          temp = title.text;
                        }
                      },
                      child: const Text(
                        "Create",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )
                ],
              ),
            )),
      ),
    );
  }
}
