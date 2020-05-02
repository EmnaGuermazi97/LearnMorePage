import 'package:flutter/material.dart';

class ArticleLearnMore {
  String imageUrl;
  String contenu;
  String imageUrlA;
  String titleA;
  ArticleLearnMore(
      {@required this.imageUrl,
      @required this.contenu,
      @required this.imageUrlA,
      @required this.titleA});
}

List<ArticleLearnMore> articles = [
  ArticleLearnMore(
      imageUrl: "assets/images/definition.jpg",
      contenu: "aaaaaaa",
      imageUrlA: "assets/images/definitionA.jpg",
      titleA: "Sleep Definition"),
  ArticleLearnMore(
      imageUrl: "assets/images/Habits.jpg",
      contenu: "bbbbb",
      imageUrlA: "assets/images/HabitsA.png",
      titleA: "Better habits for better Sleep"),
  ArticleLearnMore(
      imageUrl: "assets/images/obstacles.jpg",
      contenu: "cccc",
      imageUrlA: "assets/images/obstaclesA.png",
      titleA: "Habits that can be the cause of your lack of sleep"),
  ArticleLearnMore(
      imageUrl: "assets/images/sleepCycle.jpg",
      contenu: "dddd",
      imageUrlA: "assets/images/stadesA.jpg",
      titleA: "Understanding your Sleep Cycles"),
];
