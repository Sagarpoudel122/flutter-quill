import 'package:flutter/services.dart';
import 'package:spell_check_on_client/spell_check_on_client.dart';

class SpellcheckUtil {
  static late SpellCheck instance;

  static Future<void> initSpellCheck() async {
    const language = 'en';
    final content =
        await rootBundle.loadString('assets/spellcheck/${language}_words.txt');
    instance = SpellCheck.fromWordsContent(
      content,
      letters: LanguageLetters.getLanguageForLanguage(language),
    );
  }
}
