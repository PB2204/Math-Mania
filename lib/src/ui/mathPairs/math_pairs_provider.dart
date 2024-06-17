import 'dart:async';
import 'package:flutter/cupertino.dart';
import '/src/data/models/math_pairs.dart';
import '/src/core/app_constant.dart';
import '/src/ui/app/game_provider.dart';

class MathPairsProvider extends GameProvider<MathPairs> {
  int first = -1;
  int second = -1;
  final DifficultyType difficultyType;

  MathPairsProvider({
    required TickerProvider vsync,
    required this.difficultyType,
  }) : super(
          vsync: vsync,
          gameCategoryType: GameCategoryType.MATH_PAIRS,
          difficultyType: difficultyType,
        ) {
    startGame();
  }

  Future<void> checkResult(Pair mathPair, int index) async {
    if (timerStatus != TimerStatus.pause) {
      if (!currentState.list[index].isActive) {
        currentState.list[index].isActive = true;
        notifyListeners();
        if (first != -1) {
          if (currentState.list[first].uid == currentState.list[index].uid) {
            currentState.list[first].isVisible = false;
            currentState.list[index].isVisible = false;
            currentState.availableItem = currentState.availableItem - 2;
            first = -1;
            oldScore = currentScore;
            currentScore = currentScore + KeyUtil.mathematicalPairsScore;
            notifyListeners();
            if (currentState.availableItem == 0) {
              await Future.delayed(Duration(milliseconds: 300));
              loadNewDataIfRequired();
              if (timerStatus != TimerStatus.pause) {
                restartTimer();
              }
              notifyListeners();
            }
          } else {
            wrongAnswer();
            currentState.list[first].isActive = false;
            currentState.list[index].isActive = false;
            first = -1;
            notifyListeners();
          }
        } else {
          first = index;
        }
      } else {
        first = -1;
        currentState.list[index].isActive = false;
        notifyListeners();
      }
    }
  }
}
