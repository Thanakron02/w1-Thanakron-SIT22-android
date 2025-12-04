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
                    padding: EdgeInsets.all(4), // ขอบสีขาวรอบรูป
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
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  Text(
                    "Thanakron Punya",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
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
      backgroundColor: Colors.white, // พื้นหลังขาวสะอาด
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // ลบเงาใต้ Appbar ให้ดูเรียบ
        title: Text(
          "Xinnn_", // ชื่อด้านบน (เหมือนในรูป)
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false, // จัดชื่อชิดซ้าย
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      // ใช้ SingleChildScrollView เพื่อให้เลื่อนหน้าจอได้ถ้าข้อมูลเยอะ
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- ส่วนที่ 1: ข้อมูลส่วนตัว (รูป + สถิติ) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  // 1. รูปโปรไฟล์วงกลม
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade200, width: 2), // ขอบรูปบางๆ
                    ),
                    child: CircleAvatar(
                      radius: 45, // ขนาดรูป
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR7W7abnD_PTJXYUShd8668XnE6HixbkhEqQ&s"),
                    ),
                  ),

                  SizedBox(width: 20), // เว้นระยะห่างรูปกับสถิติ

                  // 2. ส่วนแสดงสถิติ (Expanded เพื่อให้กินพื้นที่ที่เหลือ)
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, // จัดระยะห่างเท่าๆ กัน
                      children: [
                        _buildStatColumn("5", "กำลังติดตาม"),
                        _buildStatColumn("0", "ผู้ติดตาม"),
                        _buildStatColumn("0", "ถูกใจ"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- ส่วนที่ 2: ชื่อและเครื่องหมายติ๊กถูก ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Thanakron Punya",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      // ไอคอนติ๊กถูกสีฟ้า
                      Icon(Icons.verified, color: Colors.blue, size: 20),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Thanakron", // ข้อความ Bio หรือเพลง
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            // --- ส่วนที่ 3: ปุ่มกด (Follow) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  // ปุ่มติดตาม
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0072CF), // สีฟ้าปุ่ม
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 12), // ความสูงปุ่ม
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // มุมโค้ง
                        ),
                      ),
                      child: Text("ติดตาม", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: 10),
                  // ปุ่ม Share
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.share, size: 24, color: Colors.black),
                  ),
                ],
              ),
            ),

            // --- ส่วนที่ 4: Grid รูปภาพ (2 รูปเรียงกัน) ---
            GridView.builder(
              shrinkWrap: true, // สำคัญมาก! บอกให้ Grid ใช้พื้นที่เท่าที่มี (ไม่เช่นนั้นจะ Error)
              physics: NeverScrollableScrollPhysics(), // ปิดการเลื่อนของ Grid (ให้ใช้ Scroll หลักแทน)
              itemCount: 9, // จำนวนรูป (สมมติ 6 รูป)
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // แบ่งเป็น 2 คอลัมน์
                crossAxisSpacing: 2, // ระยะห่างแนวตั้ง
                mainAxisSpacing: 2, // ระยะห่างแนวนอน
                childAspectRatio: 0.8, // สัดส่วนรูป (กว้าง/สูง) 0.8 คือแนวตั้งนิดๆ
              ),
              itemBuilder: (context, index) {
                // รายการรูปภาพ
                return Image.network(
                  // ใช้รูปแมวสลับกันเล่นๆ
                  index % 9 == 0
                      ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7-1F84dGqgA3_4yVv0y2Hh5h8f9p9q1-1wQ&s"
                      : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_pX8gA9l_J_K5w_L8z8x8n-1_0_0_0_0&s",
                  fit: BoxFit.cover, // เอารูปเต็มช่อง
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันย่อยสำหรับสร้างช่องตัวเลขสถิติ (จะได้ไม่ต้องเขียนซ้ำ 3 รอบ)
  Widget _buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}