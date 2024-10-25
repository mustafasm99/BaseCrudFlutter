import 'package:app/shared/bottom_nav.dart';
import 'package:app/widget/all_data.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(),
                Positioned(
                  child: Image.asset(
                    'assets/image/image.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 450,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "Hello World",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              height: 270,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 13, 13, 13),
              ),
              child: const Center(
                child: FeedSection(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar()
    );
  }
}
