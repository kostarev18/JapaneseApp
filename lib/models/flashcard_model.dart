class Flashcard {
  final String kanji;
  final String reading;
  final String meaning;
  final String example;
  final String exampleTranslation;

  Flashcard({
    required this.kanji,
    required this.reading,
    required this.meaning,
    required this.example,
    required this.exampleTranslation,
  });

  factory Flashcard.fromMap(Map<String, String> map) {
    return Flashcard(
      kanji: map["kanji"]!,
      reading: map["reading"]!,
      meaning: map["meaning"]!,
      example: map["example"]!,
      exampleTranslation: map["example_translation"]!,
    );
  }
}
