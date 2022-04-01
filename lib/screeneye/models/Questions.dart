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
        "Angry, negative mood causes the pupils to",
    "options": ['dilate', 'remain unchanged', 'contract', 'none of these'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "People who don't give the Eyebrow Flash on initial greeting are perceived as potentially",
    "options": ['supportive', 'excited', 'aggressive', 'none of these'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Lowering the eyebrows is how humans show",
    "options": ['dominance and aggression', 'submission and fear', 'happiness', 'confusion'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "If men trim their eyebrows they do it from the top of the eyebrow down to make their eyes appear narrower and",
    "options": ['confident', 'authoritative', 'sparkling', 'none of these'],
    "answer_index": 1,
  },

  {
    "id": 5,
    "question": "Lowering the eyelids while simultaneously raising the eyebrows, looking up and slightly parting the lips is a cluster that has been used by women to show",
    "options": ['dominance', 'authority', 'confidence', 'sexual submissiveness'],
    "answer_index": 3,
  },

  {
    "id": 6,
    "question": "Gaze alone is not a reliable signal of lying and you need to observe things like",
    "options": ['voice changes and pupil dilation', 'finger movement', 'speaking pattern', 'none of these'],
    "answer_index": 0,
  },






  {
    "id": 7,
    "question": "Sideways Glance when combined with slightly raised eyebrows or a smile, it shows",
    "options": ['aggression', 'anxiety', 'relaxation', 'interest'],
    "answer_index": 3,
  },

  {
    "id": 8,
    "question": "When you are under attack from someone, try not to blink while",
    "options": ['looking downwards', 'maintaining eye contact', 'showing hands', 'none of these'],
    "answer_index": 1,
  },

  {
    "id": 9,
    "question": "Extended gazing can create ______ feelings",
    "options": ['intimate', 'sad', 'anxious', 'strange'],
    "answer_index": 0,
  },

  {
    "id": 10,
    "question": "if a person is remembering something that they saw, their eyes will move",
    "options": ['downward', 'upward', 'left', 'right'],
    "answer_index": 1,
  },

  {
    "id": 11,
    "question": "When a person is mentally talking to themselves, they look down and to the",
    "options": ['left', 'right', 'upward direction', 'none of these'],
    "answer_index": 0,
  },

  {
    "id": 12,
    "question": "If they are recalling something they heard, they look to the ______ and tilt their head as if listening",
    "options": ['downward direction', 'upward direction', 'left', 'side'],
    "answer_index": 3,
  },

];
