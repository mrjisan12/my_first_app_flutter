import 'package:flutter/material.dart';
import 'package:flutter_projects/screen2.dart';

main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen2(),
    );
  }
}

String text1 = "Hello World,";
String text2 = "This is my first Flutter App...";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text("My APP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
        actions: const [
          Icon(Icons.account_balance),
          Icon(Icons.account_balance),
          Icon(Icons.account_balance),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text1,
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(text2),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.green.shade400,
              ),
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              height: 100,
              width: double.infinity,
              child: Text(
                text1,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const Icon(Icons.add_circle_outline, size: 100, color: Colors.red),
            const Icon(
              Icons.ac_unit_sharp,
              size: 50,
              color: Colors.blue,
            ),
            Image.network(
                "https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/459516351_3897153057186317_5815232216784724074_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeGNdYGZ8yXGNoSC205rbqPys206wfCzL-6zbTrB8LMv7rDo_vmLGV-ogUkxXeka5MCXyUne55Gwy51Pkv0irn7b&_nc_ohc=anBJJ8O4XRUQ7kNvgGo7IJq&_nc_zt=23&_nc_ht=scontent.fdac24-2.fna&_nc_gid=AzJiLwNvO1heo9RiYqAIoUA&oh=00_AYBL3Vx900CTobcJzCugCTlnhbKA8vMdj-vrCgZI4juFlw&oe=672155CD"),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.asset(
                  "assets/img.jpg",
                  height: 200,
                ))
          ],
        ),
      ),
    );
  }
}
