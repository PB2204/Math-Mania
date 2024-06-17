import 'dart:async';

import 'package:flutter/cupertino.dart';
import '/src/data/models/sign.dart';
import '/src/core/app_constant.dart';
import '/src/ui/app/game_provider.dart';

class GuessSignProvider extends GameProvider<Sign> {
  final DifficultyType difficultyType;

  GuessSignProvider({
    required TickerProvider vsync,
    required this.difficultyType,
  }) : super(
          vsync: vsync,
          gameCategoryType: GameCategoryType.GUESS_SIGN,
          difficultyType: difficultyType,
        ) {
    startGame();
  }

  void checkResult(String answer) async {
    if (timerStatus != TimerStatus.pause) {
      result = answer;
      notifyListeners();
      if (result == currentState.sign) {
        await Future.delayed(Duration(milliseconds: 300));
        loadNewDataIfRequired();
        if (timerStatus != TimerStatus.pause) {
          restartTimer();
        }
        notifyListeners();
      } else {
        wrongAnswer();
      }
    }
  }
}
