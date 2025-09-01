import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  final List<String> names = [
    'Ahmad',
    'Sara',
    'Faisal',
    'Lina',
    'Yousef',
    'Mona',
    'Omar',
    'Dana',
    'Hassan',
    'Rania',
    'Omar',
    'Dana',
    'Hassan',
    'Rania',
    'Omar',
    'Dana',
    'Hassan',
    'Rania',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/jpg/burger.jpg'),
              ),
              SizedBox(height: 18),
              Text(
                'Erica Fernandez',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Joined @jan 24, 2017',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(height: 16),
              // SettingWidget(title: 'Aya', icon: Icons.settings),
              // SettingWidget(title: 'Hammad', icon: Icons.wallet),
              // PrimaryButton(color: Colors.blue, height: 100),
              // PrimaryButton(color: Colors.black),
              // PrimaryButton(color: Colors.black),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return SettingWidget(title: names[index], icon: Icons.person);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.color, this.height});
  final Color color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: MediaQuery.sizeOf(context).width,
      height: height ?? 60,
      color: color,
    );
  }
}

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber.withValues(alpha: 0.2),
            child: Icon(icon, color: Colors.amber),
          ),
          SizedBox(width: 16),
          Text(title),
          Spacer(),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
