import 'package:blog_main/blog_page.dart';
import 'package:blog_main/password_recovery.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(SecondLogin());
}

class SecondLogin extends StatelessWidget {
  SecondLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void goToBlogPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return BlogPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'VIP به اپلیکیشن سیگنال VIP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Image(
                image: AssetImage('images/w.png'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(width: 4.0, color: Colors.black)),
                  foregroundColor: Colors.black,
                  minimumSize: Size(200, 40),
                ),
                onPressed: () {
                  goToBlogPage(context);
                },
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 40)),
                onPressed: () {},
                child: Text('ثبت نام'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return PasswordRecovery();
                      },
                    ),
                  );
                },
                child: Text('فراموشی رمز عبور'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
