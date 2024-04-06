import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechService {
  FlutterTts flutterTts = FlutterTts();

  Future<void> init() async {
    // Set the desired language
    await flutterTts.setLanguage('hi-IN');
    // Set any other required settings
  }

  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }

  Future<void> stop() async {
    await flutterTts.stop();
  }
}
