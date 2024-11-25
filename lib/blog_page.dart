import 'custom_widget/post_wiget.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  BlogPage({super.key});

  final BlogList = [
    getBlogPost(imageName: 's.png', title: 'TEST1'),
    getBlogPost(imageName: 'a.png', title: 'TEST2'),
    getBlogPost(imageName: 'c.png', title: 'TEST3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...BlogList,
                  SizedBox(height: 20),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب کاربری',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text('VIP اخبار و سیگنال های'),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
    );
  }
}
