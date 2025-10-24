import 'package:flutter/material.dart';
import 'loginPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: 70),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hallo Jovandya Ardhika!',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text('Mau masak apa hari ini?'),
                    ],
                  ),

            
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          const AssetImage('assets/images/profile.jpg'),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

          
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30), // jarak kiri & kanan
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      menuItem('assets/icons/bakso.png', 'Bakso'),
      menuItem('assets/icons/ramen.png', 'Ramen'),
      menuItem('assets/icons/pizza.png', 'Pizza'),
      menuItem('assets/icons/taco.png', 'Taco'),
    ],
  ),
),


            
              const Text(
                'Recommended',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 16),

            
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    
                    return cardItem(
                      title: 'Nasi Goreng Spesial Khas Malang',
                      color: [
                        Colors.teal,
                        Colors.orange,
                        Colors.blue,
                        Colors.purple,
                        Colors.brown
                      ][index % 5],
                      imageAsset: 'assets/images/nasi-goreng.png',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String asset, String label) {
    return Column(
      children: [
        Image.asset(asset, height: 40),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget cardItem({
    required String title,
    required Color color,
    required String imageAsset,
  }) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            color: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(title, style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 0),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star_border, color: Colors.white, size: 16),
                    ],
                  ),
                  const SizedBox(height: 0),
                  Row(
                    children: const [
                      Icon(Icons.access_time, color: Colors.white, size: 16),
                      SizedBox(width: 1),
                      Text('5 Min', style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 18,
            child: Image.asset(imageAsset, height: 85),
          ),
        ],
      ),
    );
  }
}