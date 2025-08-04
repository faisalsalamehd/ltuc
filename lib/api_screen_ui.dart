import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ltuc/shein_model.dart';

class ApiScreenUi extends StatefulWidget {
  const ApiScreenUi({super.key});

  @override
  State<ApiScreenUi> createState() => _ApiScreenUiState();
}

class _ApiScreenUiState extends State<ApiScreenUi> {
  SheinModel sheinModel = SheinModel();
  bool isDataCalled = false;
  String title = '';

  @override
  void initState() {
    getSections();
    super.initState();
  }

  Future<void> getSections() async {
    http.Response response = await http.post(
      Uri.parse('https://vendor.eshopweb.store/app/v1/api/get_sections'),
      // always whene we send data to server we use jsonEncode
      body: jsonEncode({}),
    );
    // print(response.body);
    if (response.statusCode == 200) {
      setState(() {
        sheinModel = SheinModel.fromJson(jsonDecode(response.body));
        title = sheinModel.data![0].title!;
        isDataCalled = true;
      });
      print(sheinModel.data![0].title!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: title.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: sheinModel.data!.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(sheinModel.data![0].title!),
                    Text(sheinModel.data![0].shortDescription!),
                    SizedBox(height: 8,),
                    // you need to use GridView.builder for product details
                  ],
                );
              },
            ),
    );
  }
}
