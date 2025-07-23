import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xffEBB739)),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        title: Text('Aya', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications, color: Colors.white),
          Icon(Icons.shop_2, color: Colors.white),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image.asset('assets/png/red car.png', width: 170),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Ferrari 458 Italia', style: TextStyle(fontSize: 24)),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 8),
                        Text('New york'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 4),
                        Text('4.9'),
                        SizedBox(width: 4),
                        Text(
                          '(129 reviews)',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Text('\$2000'),
                              SizedBox(width: 4),
                              Text(
                                'days',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/png/red car.png'),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          child: Icon(Icons.favorite, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//  body: Center(
//         child: Container(
//           height: 60,
//           width: MediaQuery.sizeOf(context).width * 0.85,
//           decoration: BoxDecoration(
//             color: Colors.white.withValues(alpha: 0.6),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Icon(Icons.apple,size: 32,color: Colors.white,),
//               SizedBox(width: 8),
//               Text('Sign In With Apple', style: TextStyle(color: Colors.white,fontSize: 22)),
//             ],
//           ),
//         ),
//       ),

// body: Center(
//         child: GestureDetector(
//           onTap: () {
//             print('Hammad');
//           },
//           child: Container(
//             margin: EdgeInsets.all(16),
//             // padding: EdgeInsets.all(4),
//             width: MediaQuery.sizeOf(context).width,
//             height: 60,
//             decoration: BoxDecoration(
//               color: Color(0xffEBB739),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Center(
//               child: Text(
//                 'Haninni',
//                 style: TextStyle(color: Colors.black, fontSize: 20),
//               ),
//             ),
//           ),
//         ),
//       ),
