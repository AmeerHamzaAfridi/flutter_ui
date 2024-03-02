import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          '30 Days Flutter UI Practice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        children: [Text('This is me')],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              customButton('Home', Icons.home),
              const SizedBox(
                height: 20,
              ),
              customButton('Information', Icons.info),
              const SizedBox(
                height: 20,
              ),
              customButton('Contact Us', Icons.contact_emergency),
              const SizedBox(
                height: 20,
              ),
              customButton('LogOut', Icons.logout_outlined),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton customButton(String name, IconData icon) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            icon,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
