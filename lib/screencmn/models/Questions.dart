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
        "Research shows that people will talk three to four times more than usual when the listener ______",
    "options": ['stares at them', 'nods their head', 'look confused', 'none of these'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Slow nodding communicates that the listener is ________ in what the speaker is saying",
    "options": ['uninterested', 'disagreeing', 'interested',],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Head nodding encourages co-operation and _______.",
    "options": ['agreement', 'disagreement', 'dominance', 'none of these'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "When you listen, put your hand on your chin and give it light strokes because, it encourages others to _______",
    "options": ['talk slowly', 'stop talking', 'look sideways','keep talking', ],
    "answer_index": 3,
  },

  {
    "id": 5,
    "question": "Tilting the head to the side is a ________",
    "options": ['submission signal', 'dominant signal','confident signal'],
    "answer_index": 0,
  },

  {
    "id": 6,
    "question": "Women will use head tilting gesture to show their ______ to men they like",
    "options": ['dominance', 'disinterest', 'interest', 'emotional state'],
    "answer_index": 2,
  },






  {
    "id": 7,
    "question": "When you listen to others, use the Head-Tilt and Head Nods and the listener will begin to feel trusting towards you because you appear ________.",
    "options": ['non-threatening', 'withdrawn', 'none of these', ],
    "answer_index": 0,
  },

  {
    "id": 8,
    "question": "When the chin is down, it signals that a negative, judgemental or _________ attitude exists.",
    "options": ['submissive', 'aggressive','none of these'],
    "answer_index": 1,
  },

  {
    "id": 9,
    "question": "Picking imaginary lint is common signal of",
    "options": ['dominance', 'threat','disapproval'],
    "answer_index": 2,
  },

  {
    "id": 10,
    "question": " Hands-on-Hips pose is a universal gesture used to communicate that a person is ready for _______ action.",
    "options": ['assertive', 'submissive', 'none of these'],
    "answer_index": 0,
  },

  {
    "id": 11,
    "question": "Thumbs tucked into the belt or into the tops of the pockets, frames the genital area and is a display used mainly by men to show a ___________ attitude.",
    "options": ['unapproachable', 'approachable', 'sexually aggressive', 'none of these'],
    "answer_index": 2,
  },


  {
    "id": 12,
    "question": "Suppose when you are presenting a proposal and if the other person were to take 'seated readiness' gesture at the end of the presentation, you could ask for ________ and would be likely to get it.",
    "options": ['agreement', 'valuable information', 'none of these'],
    "answer_index": 0,
  },



];
