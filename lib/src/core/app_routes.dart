import 'package:flutter/material.dart';
import '/src/core/app_constant.dart';
import '/src/data/models/dashboard.dart';
import '/src/ui/calculator/calculator_view.dart';
import '/src/ui/correctAnswer/correct_answer_view.dart';
import '/src/ui/dashboard/dashboard_view.dart';
import '/src/ui/home/home_view.dart';
// import '/src/ui/home/home_view1.dart';
import '/src/ui/magicTriangle/magic_triangle_view.dart';
import '/src/ui/mathGrid/math_grid_view.dart';
import '/src/ui/mathPairs/math_pairs_view.dart';
import '/src/ui/mentalArithmetic/mental_arithmetic_view.dart';
import '/src/ui/picturePuzzle/picture_puzzle_view.dart';
import '/src/ui/numberPyramid/number_pyramid_view.dart';
import '/src/ui/quickCalculation/quick_calculation_view.dart';
import '/src/ui/splash/splash_view.dart';
import '/src/ui/squareRoot/square_root_view.dart';
import '/src/ui/guessTheSign/guess_sign_view.dart';
import 'package:tuple/tuple.dart';

var appRoutes = {
  KeyUtil.dashboard: (context) => DashboardView(),
  KeyUtil.splash: (context) => SplashView(),
  KeyUtil.home: (context) => HomeView(
      tuple2: ModalRoute.of(context)?.settings.arguments
          as Tuple2<Dashboard, double>),
  KeyUtil.calculator: (context) => CalculatorView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.guessSign: (context) => GuessSignView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.correctAnswer: (context) => CorrectAnswerView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.quickCalculation: (context) => QuickCalculationView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.mentalArithmetic: (context) => MentalArithmeticView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.squareRoot: (context) => SquareRootView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.mathPairs: (context) => MathPairsView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.magicTriangle: (context) => MagicTriangleView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.mathGrid: (context) => MathGridView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.picturePuzzle: (context) => PicturePuzzleView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
  KeyUtil.numberPyramid: (context) => NumberPyramidView(
      colorTuple:
          ModalRoute.of(context)?.settings.arguments as Tuple2<Color, Color>),
};
