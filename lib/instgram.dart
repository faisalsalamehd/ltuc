import 'package:flutter/material.dart';
import 'package:ltuc/instagram_story_widget.dart';

class Instgram extends StatefulWidget {
  const Instgram({super.key});

  @override
  State<Instgram> createState() => _InstgramState();
}

class _InstgramState extends State<Instgram> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.camera_alt_outlined),
        ),
        title: Text('Instagram'),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
              Positioned(
                right: 10,
                top: 7,
                child: CircleAvatar(radius: 5, backgroundColor: Colors.red),
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return InstagramStoryWidget(
                    name: 'Your Story',
                    image: 'assets/jpg/burger.jpg',
                    isLive: index == 1,
                  );
                },
              ),
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/jpg/burger.jpg'),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Suhaib',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.check_circle),
                          ],
                        ),
                        Text('Dubai'),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  ],
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onDoubleTap: () async{
                  setState(() {
                    like = !like;
                  });
                  await Future.delayed(Duration(seconds: 2));
                  // send requist to BE you have liked this image
                },
                child: Image.asset(
                  'assets/png/Rectangle.png',
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        like ? Icons.favorite : Icons.favorite_outline,
                        color: like ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message_outlined),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_outline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
