import 'package:flutter/material.dart';
import '../models/deck_model.dart';
import '../widgets/flashcard_widget.dart';

class FlashcardScreen extends StatefulWidget {
  final Deck deck;

  FlashcardScreen({required this.deck});

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  int currentIndex = 0;

  void showNextFlashcard() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.deck.flashcards.length;
    });
  }

  void showPreviousFlashcard() {
    setState(() {
      currentIndex = (currentIndex - 1) < 0 ? widget.deck.flashcards.length - 1 : currentIndex - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(widget.deck.title),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlashcardWidget(
            flashcard: widget.deck.flashcards[currentIndex],
            onNext: showNextFlashcard,
            onPrevious: showPreviousFlashcard, 
          ),
        ),
      ),
    );
  }
}
