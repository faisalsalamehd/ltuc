import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/view/screens/welcome/welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Facebook'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Divider(thickness: 6, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 30, backgroundColor: Colors.black),
                      Expanded(child: TextField()),
                      Icon(Icons.image),
                    ],
                  ),
                ),
                Divider(thickness: 6, color: Colors.grey),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/jpg/burger.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 120,
                          padding: EdgeInsets.all(4),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: AlignmentGeometry.bottomCenter,
                              end: AlignmentGeometry.topCenter,
                              colors: [
                                Colors.red.withValues(alpha: 0.7),
                                Colors.pink.withValues(alpha: 0.7),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                              ],
                            ),
                          ),
                          child: Text(
                            'Share Music With Love',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          // child: Align(
                          //   alignment: AlignmentGeometry.bottomCenter,
                          //   child: Text('Share Music With Love',style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
