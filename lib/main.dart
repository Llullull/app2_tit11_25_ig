import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});



// ฟังก์ชันช่วยสร้างตัวเลขสถิติ (ตัวเลข + ข้อความป้าย)
  Widget _stat(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {

    const String accountId = 'llullull.7';
    const String posts = '1';
    const String followers = '98';
    const String following = '500';
    const String studentName = 'Llullull';
    const String caption1 = 'สวัสดีเราชื่อม่อนนะ';
    const String caption2 = 'หิวขนม';

    const String galleryImage = 'https://images.squarespace-cdn.com/content/v1/6116e68bd25283458c804636/a4f34eae-11f2-40df-b86b-e77889963a74/0896_pantera_1edit+sm.jpg';
    const String galleryImage1 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSw8A7mI-W-tG9gOq7FQdzKDSaWlfpeJOPqQAtXSt3cZGV_a8d36ev6qje&s=10';

    return Scaffold(
      backgroundColor: Colors.white,



      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          accountId,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/B7132D03-29E2-455D-BF06-50550E9639A9.jpg'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _stat(posts, 'โพสต์'),
                        _stat(followers, 'ผู้ติดตาม'),
                        _stat(following, 'กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 16),



              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(caption1, style: TextStyle(fontSize: 12)),
                  Text(caption2, style: TextStyle(fontSize: 12)),
                ],
              ),


              const SizedBox(height: 12),



              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF4A90E2),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 12),



              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on, size: 28, color: Colors.black87),
                  Icon(Icons.person_pin, size: 28, color: Colors.grey),
                ],
              ),


              const SizedBox(height: 8),



              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: [
                  Image.network(galleryImage, fit: BoxFit.cover),
                  Image.network(galleryImage1, fit: BoxFit.cover),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}