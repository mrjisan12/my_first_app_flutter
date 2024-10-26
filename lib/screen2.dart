import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Image.asset(
                          "assets/dp.jpg", height: 100, errorBuilder: (_, __,
                            ___0) {
                          return const Icon(Icons.image, size: 50,);
                        },)),
                    const Text("Mizanur Rahman Jisan",
                      style: TextStyle(fontWeight: FontWeight.w700),),
                    const Text("Software Engineer"),
                  ],
                )),
            Column(
              children: [
                ListTile(
                  tileColor: Colors.green,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  trailing: const Icon(Icons.arrow_forward_rounded),
                ), const ListTile(
                  leading: Icon(Icons.work),
                  title: Text("Projects"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ), const ListTile(
                  leading: Icon(Icons.token_rounded),
                  title: Text("FAQ"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Press Down here ->")),
            ),
            OutlinedButton(onPressed: () {
              Dialogbox(context);
            }, child: const Text("Click Me",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),))
          ],
        ),
      ),
    );
  }

  Dialogbox(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return const AlertDialog(
        title: Text("Hey You BUMBA !!"),
        content: Text("Why you Kamoring me ?"),
      );
    });
  }


}
