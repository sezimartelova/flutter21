class CountriesModel {
  final String question;
  final String capitalImage;
  final List<Answer> answer;

  CountriesModel(
    this.answer, {
    required this.question,
    required this.capitalImage,
  });
}

class Answer {
  final String answer;
  final bool isTrue;

  Answer({required this.answer, required this.isTrue});
}
