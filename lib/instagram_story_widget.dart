import 'package:flutter/material.dart';

// this widget for story widget in instagram
class InstagramStoryWidget extends StatelessWidget {
  const InstagramStoryWidget({
    super.key,
    required this.name,
    required this.image,
    this.isLive = false,
  });
  final String name;
  final String image;
  final bool? isLive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 70,
                height: 70,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFBAA47),
                      Color(0xffD91A46),
                      Color(0xffA60F93),
                    ],
                  ),
                ),
                child: Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(backgroundImage: AssetImage(image)),
                ),
              ),
              if (isLive != null)
                if (isLive!)
                  Positioned(
                    bottom: 0,
                    left: 15,
                    child: Container(
                      width: 40,
                      height: 25,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: [Color(0xffD91A46), Color(0xffA60F93)],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Live',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
            ],
          ),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
