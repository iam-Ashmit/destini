// Step 6 - import the story.dart file into this file.

// Step 5 - Create a new class called StoryBrain.
import 'package:destini/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyData = [
    Story(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'),
    Story(
        'He nods slowly, unphased by the question.',
        'At least he\'s honest. I\'ll climb in.',
        'Wait, I know how to change a tire.'),
    Story(
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'),
    Story(
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
        ''),
    Story(
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
        ''),
    Story(
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        'Restart',
        '')
  ];
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }
//Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      resetStory();
    }
  }

  void resetStory() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }

  void showAlert(BuildContext context) {
    Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.")
        .show();
  }
}

// Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

//24- Use the _storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

// Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

// Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

// Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//: Step 25 - Change the _storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (_storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//Step 16 - Create a property called _storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

// Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

// Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

// Step 21 - Using the story plan, update nextStory() to change the _storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the _storyNumber is 0, the _storyNumber should become 2.

// Step 22 - In nextStory() if the _storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the _storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
