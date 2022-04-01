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
        "The least dependable signs of lying are the ones over which a person has the most control, such as ",
    "options": ['legs', 'arms', 'eyes', 'words'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Women tell more ______ lies than men,",
    "options": ['simpler', 'complicated', 'none of these',],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "The difficulty with lying is that the ________ mind acts automatically and independently of our verbal lie",
    "options": ['conscious', 'subconscious', 'none of these'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "To lie successfully, you need to have your body _______",
    "options": ['visible', 'hidden/out of sight', 'none of these', ],
    "answer_index": 1,
  },

  {
    "id": 5,
    "question": "Some people try to disguise the 'Mouth Cover' gesture by giving a _______",
    "options": ['fake cough', 'eye blink','none of these'],
    "answer_index": 0,
  },

  {
    "id": 6,
    "question": "The Ear Grab can also be a signal that the person has heard enough or may want to _____.",
    "options": ['speak', 'dominate', 'shout', 'none of these'],
    "answer_index": 0,
  },






  {
    "id": 7,
    "question": "Neck scratch gesture is a signal of doubt or _______",
    "options": ['anger', 'uncertainty', 'none of these', ],
    "answer_index": 1,
  },

  {
    "id": 8,
    "question": "_______ cause a tingling sensation in the delicate facial and neck tissues, and a rub or scratch was required to satisfy it.",
    "options": ['Excitement', 'Truth','Sorrow','Lies'],
    "answer_index": 3,
  },

  {
    "id": 9,
    "question": "When the listener begins to use his hand to support his head, it is a signal that he is getting _______",
    "options": ['happy', 'excited','bored'],
    "answer_index": 2,
  },

  {
    "id": 10,
    "question": "Drumming the fingers on the table and continual tapping of the feet on the floor are often misinterpreted by speakers as boredom signals, but in fact signal _______.",
    "options": ['impatience', 'distrust', 'deceit','none of these'],
    "answer_index": 0,
  },

  {
    "id": 11,
    "question": "This reaction causes the tingling feeling you experience on the back of your neck when you feel frustrated or _______.",
    "options": ['sad', 'angry', 'fearful', 'none of these'],
    "answer_index": 2,
  },


  {
    "id": 12,
    "question": "Genuine interest is shown when the hand lightly rests on the cheek and is not used for ________",
    "options": ['head support', 'writing', 'none of these'],
    "answer_index": 0,
  },



];
