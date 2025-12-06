import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิดป้าย Debug มุมขวาบน
      title: 'Profile App',
      theme: ThemeData(
        fontFamily: 'Kanit', // ถ้าในโปรเจคยังไม่ได้ลงฟอนต์ Kanit มันจะใช้ฟอนต์ปกติแทนครับ
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //background
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity, // ความกว้างเต็มจอ
              decoration: BoxDecoration(
                color: Color(0xFF0072CF), // สีฟ้าหลัก
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),

                  //กรอบรูป
                  Container(
                    padding: EdgeInsets.all(2), // ขอบสีขาวรอบรูป
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle, // รูปทรงวงกลม
                      boxShadow: [ // เพิ่มเงาให้รูปลอยขึ้นมานิดนึง
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR7W7abnD_PTJXYUShd8668XnE6HixbkhEqQ&s",
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  //ชื่อ
                  Text(
                    "Thanakron Punya",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                  //เมล
                  Text(
                    "thanakron.punya@e-tech.ac.th",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0), // เว้นระยะห่างจากขอบจอ
              child: Column(
                children: [

                  //เบอร์โทรศัพท์
                  Container(
                    margin: EdgeInsets.only(bottom: 15), // เว้นระยะห่างจากด้านล่างของกล่องนี้
                    child: Row(
                      children: [
                        // กล่อง Icon
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50, // สีพื้นหลัง icon
                            borderRadius: BorderRadius.circular(12), // ขอบมน
                          ),
                          child: Icon(
                            Icons.phone,
                            size: 28,
                            color: Color(0xFF0072CF), // สี icon
                          ),
                        ),
                        SizedBox(width: 15), // เว้นยะห่างIcon ข้อความ

                        // ข้อความ
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "เบอร์โทรศัพท์",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "093-449-8886",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //วันเกิด
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.cake,
                            size: 28,
                            color: Color(0xFF0072CF),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "วันเกิด",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "25 กรกฎาคม 2005",
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //ที่อยู่
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            size: 28,
                            color: Color(0xFF0072CF),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ที่อยู่",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "ชลบุรี",
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //การศึกษา
                  Container(
                    margin: EdgeInsets.only(bottom: 30), //เว้นก่อนถึงปุ่ม
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.school,
                            size: 28,
                            color: Color(0xFF0072CF),
                          ),
                        ),
                        SizedBox(width: 15),
                        // ใช้ Expanded เพื่อให้ข้อความยาวๆ ไม่ดันจอจน error
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "การศึกษา",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)",
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //ปุ่มกด
                  SizedBox(
                    width: double.infinity, // ให้ปุ่มกว้างเต็มแนวนอน
                    height: 50, // กำหนดความสูงปุ่ม
                    child: ElevatedButton(
                      onPressed: () {
                        // กดแล้วไปหน้า '/second'
                        Navigator.pushNamed(context, '/second');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0072CF), // สีปุ่ม
                        foregroundColor: Colors.white, // สีตัวหนังสือในปุ่ม
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // ปุ่มขอบมน
                        ),
                        elevation: 5, // เพิ่มเงาให้ปุ่ม
                      ),
                      child: Text(
                        "ไปหน้าถัดไป",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

// สร้าง class page 2
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Xinnn_", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black), // เปลี่ยนสีไอคอนทั้งหมดในบาร์
      ),
      // ใช้ ListView แทน Column เพื่อให้เลื่อนได้และเขียนสั้นลง
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // --- ส่วนที่ 1: รูปโปรไฟล์ + สถิติ ---
          Row(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR7W7abnD_PTJXYUShd8668XnE6HixbkhEqQ&s"),
              ),
              const SizedBox(width: 20),
              // ยอดฟอล
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, //แถวกำลังตต.
                  children: const [
                    Text("10\nกำลังติดตาม", textAlign: TextAlign.center),
                    Text("10.0M \nผู้ติดตาม", textAlign: TextAlign.center),
                    Text("0\nถูกใจ", textAlign: TextAlign.center),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          // --- ส่วนที่ 2: ชื่อ ---
          const Text("Younggu", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text("เมียมึงรู้พิกัด", style: TextStyle(color: Colors.grey)),

          const SizedBox(height: 20),

          // --- ส่วนที่ 3: ปุ่มฟอล---
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), //สีปุ่ม
                  onPressed: () {}, //เมื่อกดแล้สจะให้ไปไหน
                  child: const Text("ติดตาม", style: TextStyle(color: Colors.white)), //คำในปุ่ม
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // --- ส่วนที่ 4: ตารางรูปภาพ ---
          GridView.count(
            shrinkWrap: true, // ให้ Grid ใช้พื้นที่เท่าที่มี
            crossAxisCount: 2, // แบ่งคอลัมน์
            mainAxisSpacing: 2, // ระยะห่างแนวนอน
            crossAxisSpacing: 2, // ระยะห่างแนวตั้ง

            children: [
              // รูปที่ 1
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPu9xNiVrNQAXMw10S2DIIiZCMwlPTfWHYfQ&s",
                fit: BoxFit.cover,
              ),

              // รูปที่ 2
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_2PjyaeNWohX1S83Oh-DRbwkb0Hj-j2wU_w&s",
                fit: BoxFit.cover,
              ),

              // รูปที่ 3
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbCVfiQs3MHNNEiAf8S8gia2qNmqGOWjnKew&s",
                fit: BoxFit.cover,
              ),

              // รูปที่ 4
              Image.network(
                "https://today-obs.line-scdn.net/0hlozeIv8vM0BHHC2vLvxMF39KPzF0eilJZXkuIWJPb3Y4MHxBLilgI2MbPmw6KnNEZ3N7L2YZPiBrJHVDeA/w280",
                fit: BoxFit.cover,
              ),

              // รูปที่ 5
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdk2CHlEOlq4MY3raKp8W2gcfoa3dKdjwDNQ&s",
                fit: BoxFit.cover,
              ),

              // รูปที่ 6
              Image.network(
                "https://musicstation.kapook.com/files_music2008/picture/6/30109.jpg",
                fit: BoxFit.cover,
              ),

            ],
          )
        ],
      ),
    );
  }
}
