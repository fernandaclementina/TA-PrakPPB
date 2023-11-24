import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 238, 240, 162),
              Color.fromRGBO(230, 222, 156, 0.773),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/shaunthesheep.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Fernanda Clementina',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '@nandaclementina',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color.fromARGB(255, 245, 246, 243),
        foregroundColor: Colors.black,
        child: const Text('Back'),
      ),
    );
  }
}


