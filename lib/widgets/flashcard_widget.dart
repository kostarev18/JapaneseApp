import 'package:flutter/material.dart';
import '../models/flashcard_model.dart';
import 'tts_button.dart';

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  FlashcardWidget({required this.flashcard, required this.onNext, required this.onPrevious});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 700),
      transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
      child: Card(
        key: ValueKey<String>(flashcard.kanji),
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
                children: [
                  Text(
                    flashcard.kanji,
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(flashcard.reading, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blueAccent)),
                          SizedBox(width: 8),
                          TtsButton(text: flashcard.reading),
                        ],
                      ),
                      Text(flashcard.meaning, style: TextStyle(fontSize: 18, color: Colors.black54)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Text(flashcard.example, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black87))),
                  TtsButton(text: flashcard.example),
                ],
              ),
              SizedBox(height: 8),
              Text(flashcard.exampleTranslation, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.black54)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: onPrevious,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text("Previous", style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: onNext,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text("Next", style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
