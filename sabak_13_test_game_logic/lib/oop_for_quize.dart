class Quize {
  Quize({required this.question, required this.answer});
  final String question;
  final bool answer;
}

Quize quize1 = Quize(question: 'Кыргызстанда 7 дубан бар', answer: true);
Quize quize2 = Quize(question: 'Крокодил бакка чыгат', answer: false);
Quize quize3 = Quize(question: 'Джеки Чан Гонг Конгдун тургуну', answer: true);
Quize quize4 =
    Quize(question: 'Dart Microsoft тарабынан иштелип чыккан', answer: false);
Quize quize5 = Quize(question: 'Кумшекер таттуу', answer: true);

List<Quize> quizeList = [
  quize1,
  quize2,
  quize3,
  quize4,
  quize5,
];
