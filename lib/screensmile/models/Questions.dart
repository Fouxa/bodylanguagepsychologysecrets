class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "In humans, smiling serves much the same purpose as with other primates. It tells another person you are",
    "options": ['non-threatening', 'manipulative', 'clever', 'none of these'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "A liar's smile comes more ______ than a genuine smile and is held much longer, almost as if the liar is wearing a mask.",
    "options": ['slowly', 'quickly', 'loudly', 'none of these'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "False facial emotions are more pronounced on the left side of the face than the right.",
    "options": ['True', 'False', 'Depends on the situation', 'None of these'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "The lips are stretched tight across the face to form a straight line and the teeth are concealed. It sends the message that the smiler has a",
    "options": ['confidence', 'authority/concern', 'secret or a withheld opinion', 'none of these'],
    "answer_index": 2,
  },

  {
    "id": 5,
    "question": "With the head turned down and away while looking up with a Tight-Lipped Smile, the smiler looks juvenile, playful and secretive. when a woman does it, it give rise to",
    "options": ['dominance', 'parental male feelings', 'confidence', 'sexual submissiveness'],
    "answer_index": 1,
  },

  {
    "id": 6,
    "question": "The basis of most jokes is that, at the punch line, something ______________ happens to someone.",
    "options": ['disastrous or painful', 'uplifting', 'motivating', 'none of these'],
    "answer_index": 0,
  },






  {
    "id": 7,
    "question": "Laughter has less to do with jokes and funny stories and more to do with",
    "options": ['looking good', 'dominance', 'relaxation', ' building relationships'],
    "answer_index": 3,
  },

  {
    "id": 8,
    "question": "Adding humour to advertisements increases sales because humour makes it more likely that consumers will accept an advertiser's",
    "options": ['claims', 'personality', 'importance', 'none of these'],
    "answer_index": 0,
  },

  {
    "id": 9,
    "question": "Extra smiling can make women look less",
    "options": ['attractive', 'authoritative', 'honest', 'none of these'],
    "answer_index": 1,
  },

  {
    "id": 10,
    "question": "When you smile at another person they will almost always return the smile, which causes ________ feelings in both you and them, because of cause and effect.",
    "options": ['negative', 'positive', 'strange', 'none of these'],
    "answer_index": 1,
  },



];
