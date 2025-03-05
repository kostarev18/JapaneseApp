import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: FlashcardScreen(),
      theme: ThemeData(
        brightness: Brightness.light, 
        primaryColor: Colors.redAccent,
      ),
    );
  }
}

class FlashcardScreen extends StatefulWidget {
  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {

  final FlutterTts flutterTts = FlutterTts();

  final List<Map<String, String>> flashcards = [
  {"kanji": "日", "reading": "にち", "meaning": "Sun / Day", "example": "今日はいい天気ですね。", "example_translation": "The weather is nice today."},
  {"kanji": "月", "reading": "げつ", "meaning": "Moon / Month", "example": "来月、日本へ行きます。", "example_translation": "Next month, I will go to Japan."},
  {"kanji": "火", "reading": "か", "meaning": "Fire", "example": "火をつけないでください。", "example_translation": "Please don’t start a fire."},
  {"kanji": "水", "reading": "みず", "meaning": "Water", "example": "水を飲みたいです。", "example_translation": "I want to drink water."},
  {"kanji": "木", "reading": "き", "meaning": "Tree / Wood", "example": "公園には大きな木があります。", "example_translation": "There is a big tree in the park."},
  {"kanji": "金", "reading": "きん", "meaning": "Gold / Money", "example": "金曜日に映画を見ます。", "example_translation": "I will watch a movie on Friday."},
  {"kanji": "土", "reading": "ど", "meaning": "Earth / Ground", "example": "土曜日は友達と遊びます。", "example_translation": "I will hang out with my friends on Saturday."},
  {"kanji": "山", "reading": "やま", "meaning": "Mountain", "example": "富士山は日本で一番高い山です。", "example_translation": "Mount Fuji is the tallest mountain in Japan."},
  {"kanji": "川", "reading": "かわ", "meaning": "River", "example": "この川はとても長いです。", "example_translation": "This river is very long."},
  {"kanji": "田", "reading": "た", "meaning": "Rice Field", "example": "田んぼで米を作っています。", "example_translation": "They grow rice in the fields."},
  {"kanji": "人", "reading": "ひと", "meaning": "Person", "example": "あの人は先生です。", "example_translation": "That person is a teacher."},
  {"kanji": "子", "reading": "こ", "meaning": "Child", "example": "この子はかわいいですね。", "example_translation": "This child is cute, isn’t it?"},
  {"kanji": "女", "reading": "おんな", "meaning": "Woman", "example": "あの女の人は誰ですか？", "example_translation": "Who is that woman?"},
  {"kanji": "男", "reading": "おとこ", "meaning": "Man", "example": "彼は背が高い男です。", "example_translation": "He is a tall man."},
  {"kanji": "母", "reading": "はは", "meaning": "Mother", "example": "母は料理が上手です。", "example_translation": "My mother is good at cooking."},
  {"kanji": "父", "reading": "ちち", "meaning": "Father", "example": "父は毎朝新聞を読みます。", "example_translation": "My father reads the newspaper every morning."},
  {"kanji": "友", "reading": "とも", "meaning": "Friend", "example": "友達と公園で遊びました。", "example_translation": "I played with my friend in the park."},
  {"kanji": "先", "reading": "さき", "meaning": "Before / Ahead", "example": "先生は教室にいます。", "example_translation": "The teacher is in the classroom."},
  {"kanji": "生", "reading": "せい", "meaning": "Life / Birth", "example": "私は学生です。", "example_translation": "I am a student."},
  {"kanji": "学", "reading": "がく", "meaning": "Study / Learning", "example": "日本語を勉強しています。", "example_translation": "I am studying Japanese."},
  {"kanji": "校", "reading": "こう", "meaning": "School", "example": "学校は楽しいです。", "example_translation": "School is fun."},
  {"kanji": "年", "reading": "ねん", "meaning": "Year", "example": "今年は2025年です。", "example_translation": "This year is 2025."},
  {"kanji": "時", "reading": "じ", "meaning": "Time / Hour", "example": "今は何時ですか？", "example_translation": "What time is it now?"},
  {"kanji": "一", "reading": "いち", "meaning": "One", "example": "一つください。", "example_translation": "Please give me one."},
  {"kanji": "二", "reading": "に", "meaning": "Two", "example": "りんごを二つ買いました。", "example_translation": "I bought two apples."},
  {"kanji": "三", "reading": "さん", "meaning": "Three", "example": "三人で旅行します。", "example_translation": "We will travel with three people."},
  {"kanji": "四", "reading": "し", "meaning": "Four", "example": "四月に桜が咲きます。", "example_translation": "Cherry blossoms bloom in April."},
  {"kanji": "五", "reading": "ご", "meaning": "Five", "example": "五時に会いましょう。", "example_translation": "Let's meet at five o'clock."},
  {"kanji": "六", "reading": "ろく", "meaning": "Six", "example": "六つのボールがあります。", "example_translation": "There are six balls."},
  {"kanji": "七", "reading": "しち", "meaning": "Seven", "example": "七月は暑いです。", "example_translation": "July is hot."},
  {"kanji": "八", "reading": "はち", "meaning": "Eight", "example": "八人のグループです。", "example_translation": "It's a group of eight people."},
  {"kanji": "九", "reading": "きゅう", "meaning": "Nine", "example": "九時に学校へ行きます。", "example_translation": "I go to school at nine o’clock."},
  {"kanji": "十", "reading": "じゅう", "meaning": "Ten", "example": "りんごを十個買いました。", "example_translation": "I bought ten apples."},
  {"kanji": "百", "reading": "ひゃく", "meaning": "Hundred", "example": "この本は百円です。", "example_translation": "This book costs 100 yen."},
  {"kanji": "千", "reading": "せん", "meaning": "Thousand", "example": "千人がイベントに来ました。", "example_translation": "A thousand people came to the event."},
  {"kanji": "万", "reading": "まん", "meaning": "Ten Thousand", "example": "日本には一億二千万の人がいます。", "example_translation": "There are 120 million people in Japan."},
  {"kanji": "円", "reading": "えん", "meaning": "Yen / Circle", "example": "この時計は五千円です。", "example_translation": "This watch costs 5,000 yen."},
  {"kanji": "今", "reading": "いま", "meaning": "Now", "example": "今何をしていますか？", "example_translation": "What are you doing now?"},
  {"kanji": "午", "reading": "ご", "meaning": "Noon", "example": "午前9時に出発します。", "example_translation": "I will leave at 9 AM."},
  {"kanji": "後", "reading": "あと", "meaning": "After / Behind", "example": "授業の後でカフェに行きます。", "example_translation": "I will go to a café after class."},
  {"kanji": "前", "reading": "まえ", "meaning": "Before / In Front", "example": "駅の前で会いましょう。", "example_translation": "Let's meet in front of the station."},
  {"kanji": "間", "reading": "あいだ", "meaning": "Between", "example": "駅と学校の間に公園があります。", "example_translation": "There is a park between the station and the school."},
  {"kanji": "東", "reading": "ひがし", "meaning": "East", "example": "東京は日本の東にあります。", "example_translation": "Tokyo is in the east of Japan."},
  {"kanji": "西", "reading": "にし", "meaning": "West", "example": "西の空がきれいです。", "example_translation": "The western sky is beautiful."},
  {"kanji": "南", "reading": "みなみ", "meaning": "South", "example": "南の島へ旅行します。", "example_translation": "I will travel to a southern island."},
  {"kanji": "北", "reading": "きた", "meaning": "North", "example": "北海道は日本の北にあります。", "example_translation": "Hokkaido is in the north of Japan."},
  {"kanji": "外", "reading": "そと", "meaning": "Outside", "example": "外で遊びましょう。", "example_translation": "Let's play outside."},
  {"kanji": "中", "reading": "なか", "meaning": "Inside", "example": "部屋の中にいます。", "example_translation": "I am inside the room."},
  {"kanji": "左", "reading": "ひだり", "meaning": "Left", "example": "左に曲がってください。", "example_translation": "Please turn left."},
  {"kanji": "右", "reading": "みぎ", "meaning": "Right", "example": "右手で書きます。", "example_translation": "I write with my right hand."},
  {"kanji": "名", "reading": "な", "meaning": "Name", "example": "あなたの名前は何ですか？", "example_translation": "What is your name?"},
  {"kanji": "白", "reading": "しろ", "meaning": "White", "example": "白いシャツを着ています。", "example_translation": "I am wearing a white shirt."},
  {"kanji": "黒", "reading": "くろ", "meaning": "Black", "example": "黒い猫が好きです。", "example_translation": "I like black cats."},
  {"kanji": "青", "reading": "あお", "meaning": "Blue", "example": "青い空がきれいです。", "example_translation": "The blue sky is beautiful."},
  {"kanji": "赤", "reading": "あか", "meaning": "Red", "example": "赤い花を買いました。", "example_translation": "I bought red flowers."},
  {"kanji": "行", "reading": "いく", "meaning": "To Go", "example": "学校へ行きます。", "example_translation": "I am going to school."},
  {"kanji": "来", "reading": "くる", "meaning": "To Come", "example": "明日、友達が来ます。", "example_translation": "My friend is coming tomorrow."},
  {"kanji": "食", "reading": "たべる", "meaning": "To Eat", "example": "昼ごはんを食べました。", "example_translation": "I ate lunch."},
  {"kanji": "飲", "reading": "のむ", "meaning": "To Drink", "example": "水を飲みます。", "example_translation": "I drink water."},
  {"kanji": "見", "reading": "みる", "meaning": "To See / Watch", "example": "映画を見ます。", "example_translation": "I watch movies."},
  {"kanji": "聞", "reading": "きく", "meaning": "To Listen", "example": "音楽を聞きます。", "example_translation": "I listen to music."},
  {"kanji": "言", "reading": "いう", "meaning": "To Say", "example": "先生が「静かにしてください」と言いました。", "example_translation": "The teacher said, 'Please be quiet.'"},
  {"kanji": "買", "reading": "かう", "meaning": "To Buy", "example": "本を買いました。", "example_translation": "I bought a book."},
  {"kanji": "書", "reading": "かく", "meaning": "To Write", "example": "手紙を書きます。", "example_translation": "I will write a letter."},
  {"kanji": "読", "reading": "よむ", "meaning": "To Read", "example": "新聞を読みます。", "example_translation": "I read the newspaper."},
  {"kanji": "会", "reading": "あう", "meaning": "To Meet", "example": "友達に会いました。", "example_translation": "I met a friend."},
  {"kanji": "話", "reading": "はなす", "meaning": "To Speak", "example": "日本語で話しましょう。", "example_translation": "Let's speak in Japanese."},
  {"kanji": "出", "reading": "でる", "meaning": "To Leave / Exit", "example": "家を出ました。", "example_translation": "I left the house."},
  {"kanji": "入", "reading": "はいる", "meaning": "To Enter", "example": "部屋に入りました。", "example_translation": "I entered the room."}
];


  int currentIndex = 0; 

  void showNextFlashcard() {
    setState(() {
      currentIndex = (currentIndex + 1) % flashcards.length;
    });
  }


  Future<void> speak(String text) async {
    await flutterTts.setLanguage("ja-JP"); 
    await flutterTts.setPitch(1.0);  
    await flutterTts.setSpeechRate(0.5); 
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    final flashcard = flashcards[currentIndex];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Let's learn Japanese", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 700), 
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);  
            },
            child: Card(
              key: ValueKey<int>(currentIndex),  
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 8,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          flashcard["kanji"]!,
                          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  flashcard["reading"]!,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blueAccent),
                                ),
                                SizedBox(width: 8),
                                IconButton(
                                  icon: Icon(Icons.volume_up, color: Colors.blueAccent),
                                  onPressed: () => speak(flashcard["reading"]!),
                                ),
                              ],
                            ),
                            Text(
                              flashcard["meaning"]!,
                              style: TextStyle(fontSize: 18, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            flashcard["example"]!,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.volume_up, color: Colors.blueAccent),
                          onPressed: () => speak(flashcard["example"]!),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      flashcard["example_translation"]!,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.black54),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: showNextFlashcard,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        child: Text("Next", style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}