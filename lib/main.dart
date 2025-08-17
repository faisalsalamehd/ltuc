import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Welcome to Flutter'),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsetsDirectional.only(start: 4),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.amber,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 55,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Color(0xff3B6C64),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 55,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apple, color: Colors.black),
                  SizedBox(width: 8),
                  Text('Sign In With Apple', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: 100, height: 100, color: Colors.red),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('any Data', style: TextStyle(color: Colors.black)),
                    Text('any Data', style: TextStyle(color: Colors.black)),
                    Row(
                      children: [
                        Text('\$100', style: TextStyle(color: Colors.black)),
                        SizedBox(width: 4),
                        Text(
                          '\$120',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.minimize)),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text('1', style: TextStyle(color: Colors.black)),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// body: const Center(
      //   child: Text(
      //     'Hello, World!',
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 73, 255, 66),
      //       fontSize: 50,
      //       // fontFamily: 'Comic Sans MS'
      //       fontWeight: FontWeight.w900,
      //       overflow: TextOverflow.ellipsis, 
      //     ),
      //     maxLines: 2,
      //     textAlign: TextAlign.justify,
      //   ),
      // ),




      // body: Center(
      //   child: Container(
      //     // alignment: Alignment.center,
      //     // color: Colors.grey.withValues(alpha: 0.5),
      //     height: 60,
      //     width: MediaQuery.sizeOf(context).width,
      //     margin: EdgeInsets.all(16),
      //     // padding: EdgeInsets.all(16),
      //     decoration: BoxDecoration(
      //       // color: Colors.amber,
      //       borderRadius: BorderRadius.circular(16),
      //       // border: Border.all(color: Colors.black, width: 2),
      //       gradient: LinearGradient(
      //         colors: [Colors.pink, Colors.purple],
      //         begin: Alignment.center,
      //         end: Alignment.centerRight,
      //         // stops: [0.1,0.9],
      //       ),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.grey.withValues(alpha: 0.5),
      //           spreadRadius: 10,
      //           blurRadius: 15,
      //           offset: Offset(12, 7),
      //           blurStyle: BlurStyle.normal,
      //         ),
      //       ],
      //       image: DecorationImage(
      //         image: AssetImage('assets/images/1.jpg'),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     child: Center(
      //       child: Text(
      //         'Submit',
      //         style: TextStyle(color: Colors.white, fontSize: 24),
      //       ),
      //     ),
      //   ),
      // ),


        // body: Container(
      //   color: Colors.amber,
      //   width: MediaQuery.sizeOf(context).width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Text('Welcome to Flutter'),
      //       Text('Welcome to Flutter'),
      //       Text('Welcome to Flutter'),
      //       Text('Welcome to Flutter'),
      //       Text('Welcome to Flutter'),
      //       Text('Welcome to Flutter'),
      //       Container(
      //         color: Colors.red,
      //         height: 90,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text('Welcome to Flutter'),
      //             Text('Welcome to Flutter'),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    