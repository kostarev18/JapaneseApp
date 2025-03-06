import 'package:flutter/material.dart';
import '../services/tts_service.dart';

class TtsButton extends StatelessWidget {
  final String text;
  final TtsService ttsService = TtsService();

  TtsButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.volume_up, color: Colors.blueAccent),
      onPressed: () => ttsService.speak(text),
    );
  }
}
