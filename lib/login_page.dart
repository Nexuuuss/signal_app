import 'blog_page.dart';
import 'package:flutter/material.dart';
import 'password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سلام خوش آمدید',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 14.0,
                  ),
                  Icon(
                    Icons.login,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/welcome.png'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(1.5)),
                  foregroundColor: Colors.white,
                  minimumSize: Size(200.0, 40.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  navigateToBlogPage(context, BlogPage());
                },
                child: Text(
                  'ورود به حساب کاربری',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(1.5),
                  ),
                  minimumSize: Size(200, 43),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Text('ثبت نام'),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  navigateToBlogPage(context, PasswordRecovery());
                },
                child: Text('فراموشی رمز عبور'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
