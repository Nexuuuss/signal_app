import 'package:flutter/material.dart';
import 'blog_page.dart';
import 'package:audioplayers/audioplayers.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: SafeArea(
        child: Center(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              SizedBox(height: 20),
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/dead.png'),
                  radius: 70,
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green[800],
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    minimumSize: Size(300, 50),
                    elevation: 15,
                    shadowColor: Colors.green[600]),
                onPressed: () {},
                child: Text(
                  'بازیابی رمز عبور',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              _getCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCard() {
    var list = ['dog', 'dog', 'dog', 'dog', 'dog', 'dog'];

    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Wrap(
          runSpacing: 8,
          spacing: 8,
          alignment: WrapAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 80,
            ),
            for (var newList in list)
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
                shadowColor: Colors.black,
                elevation: 5,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset('images/$newList.png'),
                      width: 100,
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.all(1),
                      child: Text(
                        'TEST',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('dog.mp3'));
              },
              child: Text(
                'DOG TEST',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
