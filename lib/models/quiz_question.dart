class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);   // final only ensure the values are not changing but doesnt care about internal orientation
    shuffledList.shuffle();
    return shuffledList;
  }
}


/* models are actually the blue print of the data which we going to store . This model is for the Question and answers.

*/