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
        "When someone begins to open up or be truthful, they will likely expose",
    "options": ['knuckles', 'All or part of their palms', 'front of head', 'chest with shoulders'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When children are lying or concealing something, they'll often",
    "options": ['stutter continuously', 'Hide their palms behind the back', 'nod their heads left-right', 'become anxious for a moment'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "When women lie they prefer to look",
    "options": ['sad', 'anxious', 'busy', 'confused'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "If someone feel defensive, they will likely to",
    "options": ['start looking down', 'get anxious', 'speak in a heavy tone', 'cross his arms across his chest'],
    "answer_index": 3,
  },

  {
    "id": 5,
    "question": "Most powerful body signals is given by the human palm when giving someone",
    "options": ['advice about relationship', 'commands and in handshaking.', 'financial advice', 'suggestions'],
    "answer_index": 1,
  },

  {
    "id": 6,
    "question": "If the person who gives you Double-Hander doesn't have a personal connection with you, look for their",
    "options": ['hidden agenda', 'face expression', 'speaking pattern', 'none of these'],
    "answer_index": 0,
  },






  {
    "id": 7,
    "question": "Dominance is transmitted by turning your hand so that your palm faces",
    "options": ['up in the handshake', 'in any direction', 'down in the handshake', 'sideways'],
    "answer_index": 2,
  },

  {
    "id": 8,
    "question": "The palm facing up is used as a",
    "options": [' submissive, non-threatening gesture', 'impressive gesture', 'manipulative tool', 'dominant gesture'],
    "answer_index": 0,
  },

  {
    "id": 9,
    "question": "Double-Hander should never be used in greetings where a",
    "options": ['personal bond does not exist', 'stranger is talking', 'non-formal talk', 'none of these'],
    "answer_index": 0,
  },

  {
    "id": 10,
    "question": "Keeping the palms held vertical and matching the other person's ______ is usually perceived as a perfect handshake.",
    "options": ['distance', 'grip', 'height', 'speaking tone'],
    "answer_index": 1,
  },

];
