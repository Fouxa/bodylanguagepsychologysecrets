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
        "A person can look composed and in control while their foot is repetitively tapping, revealing their frustration at not being able to",
    "options": ['escape', 'talk', 'none of these'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "A woman who is not interested in a man will fold her arms on her chest and cross her legs _____ from him",
    "options": ['apart', 'away', 'side',],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Open or uncrossed leg positions show an open or _______ attitude",
    "options": ['rude', 'submissive', 'dominant', 'none of these'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "In a group situation, we point our lead foot at the most __________ person",
    "options": ['interesting/attractive', 'talkative', 'introvert',],
    "answer_index": 0,
  },

  {
    "id": 5,
    "question": "Open legs show male ______",
    "options": ['behaviour', 'confidence','sexual submissiveness'],
    "answer_index": 1,
  },

  {
    "id": 6,
    "question": "when someone feels defensive or insecure, crossed arms and legs feel comfortable because it matches their",
    "options": ['eyes position', 'face', 'physical state', 'emotional state'],
    "answer_index": 3,
  },






  {
    "id": 7,
    "question": "When a person crosses both legs and arms they have emotionally ________ from the conversation",
    "options": ['benefiting', 'withdrawn', 'none of these', ],
    "answer_index": 1,
  },

  {
    "id": 8,
    "question": "Studies also show that most people make most of their final decision to do something when both feet are on the ",
    "options": ['left', 'table', 'ground', 'none of these'],
    "answer_index": 2,
  },

  {
    "id": 9,
    "question": "If you're trying to persuade someone who sits in any of these positions you should attempt to get them to _______ arms and legs before continuing.",
    "options": ['uncross', 'cross','none of these'],
    "answer_index": 0,
  },

  {
    "id": 10,
    "question": "Asking positive questions about their feelings can often get others to _______ their ankles.",
    "options": ['lock', 'unlock', 'none of these'],
    "answer_index": 1,
  },

  {
    "id": 11,
    "question": "Mini-skirts can give a woman the appearance that she's",
    "options": ['unapproachable', 'approachable', 'none of these'],
    "answer_index": 0,
  },


  {
    "id": 12,
    "question": "Our _____ tell others where we want to go and who we do or don't like.",
    "options": ['tongue', 'nose', 'feet'],
    "answer_index": 2,
  },



];
