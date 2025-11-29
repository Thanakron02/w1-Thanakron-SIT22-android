import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'w1-2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        'Second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0x78000000),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      //รูป
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR7W7abnD_PTJXYUShd8668XnE6HixbkhEqQ&s",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //รายละเอียด
                    Text("Thanakron Punya"),
                    Text("thanakron.punya@e-tech.ac.th"),
                  ],
                ),
              ),
            ),

            //ปุ่มโทร
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0x54026CFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 38,
                          color: Color(0x543689FD),
                        ),
                      ),
                      SizedBox(width: 18),
                      Column(children: [Text("Number"), Text("093-449-8886")]),
                    ],
                  ),

                  //ปุ่มกดหน้าต่อไป
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/Second'),
                    child: Text("Change Page"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x54026CFF),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//สร้าง class page 2
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Second")));
  }
}
