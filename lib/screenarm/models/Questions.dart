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
        "When you fold your arms your credibility",
    "options": ['increases', 'remain unchanged', 'decreases', 'none of these'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "You may feel arm-crossing is simply comfortable but others will think you're not",
    "options": ['happy', 'excited', 'aggressive', 'approachable'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Women tend to keep their arms more open when they are around men they find",
    "options": ['rude', 'attractive', 'confused', 'none of these'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "When you see someone take the arms-crossed position, it's reasonable to assume that you may have said something with which they",
    "options": ['agree', 'disagree', 'feel excited', 'none of these'],
    "answer_index": 1,
  },

  {
    "id": 5,
    "question": "If a person has clenched fists as well as a full arm-cross, it shows",
    "options": ['dominance', 'hostility & defensiveness', 'confidence & honesty', 'sexual submissiveness'],
    "answer_index": 1,
  },

  {
    "id": 6,
    "question": "Someone who is feeling defensive but also submissive at the same time will sit in a",
    "options": ['symmetrical position', 'asymmetrical position', 'unpredictable', 'none of these'],
    "answer_index": 0,
  },






  {
    "id": 7,
    "question": "Partial arm barriers are often seen in meetings where a person may be a stranger to the group or is lacking in",
    "options": ['honesty', 'self-confidence', 'discipline', 'interest'],
    "answer_index": 1,
  },

  {
    "id": 8,
    "question": "Someone who is hesitant, unsure or negative about what they are hearing will place their cup to the _________ side of their body to form a single arm barrier.",
    "options": ['left', 'right', 'opposite', 'none of these'],
    "answer_index": 2,
  },

  {
    "id": 9,
    "question": "When someone is accepting of what they are hearing they place the cup to the ______ of their body showing an open or accepting attitude.",
    "options": ['opposite', 'side', 'below', 'none of these'],
    "answer_index": 1,
  },

  {
    "id": 10,
    "question": "Touching a person with your left hand while shaking hands with your right hand can create a ________ result.",
    "options": ['positive and powerful', 'negative', 'unpredictable', 'none of these'],
    "answer_index": 0,
  },



];
