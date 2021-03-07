import 'package:flutter/material.dart';
import 'package:hello_world/screen/Example.dart';
import 'package:hello_world/screen/Form_Screen.dart';
import 'package:hello_world/screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        //โครงสร้าง
        appBar: AppBar(
          title: Text(
            "Home Screen",
          ),
        ),
        body: Center(
          //บังคับให้อยู่ตรงกลาง
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text("dsfdskfjsdf"),
              ),
              Text("fhfiheqjfhsafashk"),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue[200], //สี
                child: Image.network(
                    'https://f.ptcdn.info/714/062/000/pnmqj94a1cCpq5Jm1kC1-o.gif'),
              ),
              ElevatedButton(
                //สร้างปุ่ม
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("กดปุ่มนี้ดู"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                  );
                },
                child: Text("Form Screen"),
              ),
              ElevatedButton(
                //สร้างปุ่ม
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Example(),
                    ),
                  );
                },
                child: Text("Example"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
