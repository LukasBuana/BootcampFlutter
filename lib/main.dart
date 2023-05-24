import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator( // Add Navigator as the home of MaterialApp
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://global-uploads.webflow.com/6100d0111a4ed76bc1b9fd54/62a030850a538782b1755eeb_coding%203.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_circle_right,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://global-uploads.webflow.com/6100d0111a4ed76bc1b9fd54/62a030850a538782b1755eeb_coding%203.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                     Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // Warna box decoration untuk "My Profile"
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(8),
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                     ),
                    SizedBox(height: 30),
                    Image.network(
                      'https://static.vecteezy.com/system/resources/previews/005/544/718/original/profile-icon-design-free-vector.jpg',
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 30),
                    Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, 
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(8),
                    child: Text(
                      'Lukas Awan Cahya Buana',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                ),
                    SizedBox(height: 30),
                    Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, 
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(8),
                    child: Text(
                      'Coding',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
