import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {

  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Card"),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "VIGUIER Enzo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Etudiant en Master 2 Génie Logiciel",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "enzo.viguier@etu.umontpellier.fr",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Twitter : @enzoviguier",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: -40, // Half of the avatar size to make it overlap
                left: 0,
                right: 0,
                child: Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
