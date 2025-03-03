import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: FlashcardScreen(),
    );
  }
}

class FlashcardScreen extends StatefulWidget {
  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
    final List<Map<String, String>> flashcards = [
    {"kanji": "日", "meaning": "Sun / Day"},
    {"kanji": "月", "meaning": "Moon / Month"},
    {"kanji": "火", "meaning": "Fire"},
    {"kanji": "水", "meaning": "Water"},
    {"kanji": "木", "meaning": "Tree / Wood"},
    {"kanji": "金", "meaning": "Gold / Money"},
    {"kanji": "土", "meaning": "Earth / Ground"},
    {"kanji": "山", "meaning": "Mountain"},
    {"kanji": "川", "meaning": "River"},
    {"kanji": "田", "meaning": "Rice Field"},
    {"kanji": "人", "meaning": "Person"},
    {"kanji": "子", "meaning": "Child"},
    {"kanji": "女", "meaning": "Woman"},
    {"kanji": "男", "meaning": "Man"},
    {"kanji": "母", "meaning": "Mother"},
    {"kanji": "父", "meaning": "Father"},
    {"kanji": "友", "meaning": "Friend"},
    {"kanji": "先", "meaning": "Before / Ahead"},
    {"kanji": "生", "meaning": "Life / Birth"},
    {"kanji": "学", "meaning": "Study / Learning"},
    {"kanji": "校", "meaning": "School"},
    {"kanji": "年", "meaning": "Year"},
    {"kanji": "時", "meaning": "Time / Hour"},
    {"kanji": "今", "meaning": "Now"},
    {"kanji": "午", "meaning": "Noon"},
    {"kanji": "前", "meaning": "Before"},
    {"kanji": "後", "meaning": "After / Behind"},
    {"kanji": "間", "meaning": "Interval / Between"},
    {"kanji": "東", "meaning": "East"},
    {"kanji": "西", "meaning": "West"},
    {"kanji": "南", "meaning": "South"},
    {"kanji": "北", "meaning": "North"},
    {"kanji": "左", "meaning": "Left"},
    {"kanji": "右", "meaning": "Right"},
    {"kanji": "大", "meaning": "Big"},
    {"kanji": "小", "meaning": "Small"},
    {"kanji": "高", "meaning": "Tall / Expensive"},
    {"kanji": "安", "meaning": "Cheap / Safe"},
    {"kanji": "新", "meaning": "New"},
    {"kanji": "古", "meaning": "Old"},
    {"kanji": "白", "meaning": "White"},
    {"kanji": "青", "meaning": "Blue"},
    {"kanji": "赤", "meaning": "Red"},
    {"kanji": "黒", "meaning": "Black"},
    {"kanji": "多", "meaning": "Many / Much"},
    {"kanji": "少", "meaning": "Few / Little"},
    {"kanji": "早", "meaning": "Early / Fast"},
    {"kanji": "行", "meaning": "Go / Carry Out"},
    {"kanji": "来", "meaning": "Come"},
    {"kanji": "帰", "meaning": "Return"},
    {"kanji": "食", "meaning": "Eat"},
    {"kanji": "飲", "meaning": "Drink"},
    {"kanji": "見", "meaning": "See / Look"},
    {"kanji": "聞", "meaning": "Hear / Listen"},
    {"kanji": "書", "meaning": "Write"},
    {"kanji": "話", "meaning": "Speak / Talk"},
    {"kanji": "読", "meaning": "Read"},
    {"kanji": "買", "meaning": "Buy"},
    {"kanji": "休", "meaning": "Rest / Break"},
    {"kanji": "入", "meaning": "Enter / Put In"},
    {"kanji": "出", "meaning": "Exit / Take Out"},
    {"kanji": "立", "meaning": "Stand"},
    {"kanji": "座", "meaning": "Sit"},
    {"kanji": "作", "meaning": "Make / Produce"},
    {"kanji": "使", "meaning": "Use"},
    {"kanji": "持", "meaning": "Hold / Have"},
    {"kanji": "知", "meaning": "Know"},
    {"kanji": "住", "meaning": "Live / Reside"},
    {"kanji": "売", "meaning": "Sell"},
    {"kanji": "買", "meaning": "Buy"},
    {"kanji": "話", "meaning": "Talk"},
    {"kanji": "言", "meaning": "Say"},
    {"kanji": "語", "meaning": "Language / Word"},
    {"kanji": "聞", "meaning": "Listen / Ask"},
    {"kanji": "読", "meaning": "Read"},
    {"kanji": "書", "meaning": "Write"},
    {"kanji": "見", "meaning": "See"},
    {"kanji": "聞", "meaning": "Hear"},
    {"kanji": "思", "meaning": "Think"},
    {"kanji": "知", "meaning": "Know"},
    {"kanji": "分", "meaning": "Minute / Understand"},
    {"kanji": "半", "meaning": "Half"},
    {"kanji": "毎", "meaning": "Every"},
    {"kanji": "週", "meaning": "Week"},
    {"kanji": "曜", "meaning": "Day of the Week"},
    {"kanji": "午", "meaning": "Noon"},
    {"kanji": "前", "meaning": "Before"},
    {"kanji": "後", "meaning": "After"},
    {"kanji": "何", "meaning": "What"},
    {"kanji": "百", "meaning": "Hundred"},
    {"kanji": "千", "meaning": "Thousand"},
    {"kanji": "万", "meaning": "Ten Thousand"},
    {"kanji": "円", "meaning": "Yen / Circle"},
    {"kanji": "時", "meaning": "Time / Hour"},
    {"kanji": "間", "meaning": "Interval / Between"},
    {"kanji": "南", "meaning": "South"},
    {"kanji": "東", "meaning": "East"},
    {"kanji": "西", "meaning": "West"},
    {"kanji": "北", "meaning": "North"},
    {"kanji": "左", "meaning": "Left"},
    {"kanji": "右", "meaning": "Right"},
    {"kanji": "外", "meaning": "Outside"},
    {"kanji": "内", "meaning": "Inside"},
    {"kanji": "男", "meaning": "Man / Male"},
    {"kanji": "女", "meaning": "Woman / Female"},
    {"kanji": "子", "meaning": "Child"},
    {"kanji": "父", "meaning": "Father"},
    {"kanji": "母", "meaning": "Mother"},
    {"kanji": "兄", "meaning": "Older Brother"},
    {"kanji": "姉", "meaning": "Older Sister"},
    {"kanji": "弟", "meaning": "Younger Brother"},
    {"kanji": "妹", "meaning": "Younger Sister"},
    {"kanji": "家", "meaning": "House / Home"},
    {"kanji": "友", "meaning": "Friend"},
    {"kanji": "名", "meaning": "Name"},
    ];


  int currentIndex = 0; 

  void showNextFlashcard() {
    setState(() {
      currentIndex = (currentIndex + 1) % flashcards.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's learn Japanese"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Container(
          width: 300, 
          height: 400,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), 
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Text(
                    "${flashcards[currentIndex]["kanji"]}",
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold), 
                  ),
                  SizedBox(height: 20), 
                  Text(
                    "${flashcards[currentIndex]["meaning"]}",
                    style: TextStyle(fontSize: 34), 
                  ),
                  SizedBox(height: 40), 
                  ElevatedButton(
                    onPressed: showNextFlashcard,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
                      textStyle: TextStyle(fontSize: 20), 
                    ),
                    child: Text("Next"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}