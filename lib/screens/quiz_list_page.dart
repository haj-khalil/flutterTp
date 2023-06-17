import 'package:flutter/material.dart';
import '../widgets/quiz_question_widget.dart';
import 'quiz_page.dart';

class QuizListPage extends StatelessWidget {
  const QuizListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('la Liste des Questions'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Premier Type '),
            subtitle: const Text('Projet des Questions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(
                    quizTitle: 'Question pour repondre',
                    quizDescription: "C'est quoi la capitale de la france",
                    questions: [
                      Question(
                        type: QuestionType.textField,
                        questionText: "C'est quoi la capitale de la france ?",
                        correctAnswer: 'paris',
                      ),
                      Question(
                        type: QuestionType.textField,
                        questionText:  "C'est quoi la capitale de la jabon ?",
                        correctAnswer: 'tokio',
                      ),
                      Question(
                        type: QuestionType.textField,
                        questionText: "C'est quoi la capitale de l\'allemagne ?",
                        correctAnswer: 'berlin',
                      ),
                      Question(
                        type: QuestionType.textField,
                        questionText:
                                      "C'est quoi la capitale de la syrie ?",
                        correctAnswer: 'damas',
                      ),
                      Question(
                        type: QuestionType.textField,
                        questionText:
                                    "c'est quoi la capitale de la grec ?",
                        correctAnswer: 'athenes',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Deusiéme Type '),
            subtitle: const Text('Question avec multiple choix'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(
                    quizTitle: 'MCQ',
                    quizDescription: 'Choisir la Bonne choix',
                    questions: [
                      Question(
                        type: QuestionType.options,
                        questionText: 'pour qoui le train est important ?',
                        correctAnswer: 'il y a deux lines dessous',
                        options: ['je sais pas', 'il y a deux lines dessous', 'c\'est comme ca'],
                      ),
                      Question(
                        type: QuestionType.options,
                        questionText:
                            'Où se trouvent les mers sans eau ?',
                        correctAnswer: 'dans la plan',
                        options: ['dans la plan', 'en france', 'n\'existe pas'],
                      ),
                      Question(
                        type: QuestionType.options,
                        questionText: 'Qu\'est ce qu\il a au milieu de paris',
                        correctAnswer: 'R',
                        options: ['R', 'mur de Berlin', 'big ben'],
                      ),
                      Question(
                        type: QuestionType.options,
                        questionText:
                            'Il a deux pied mais il peut pas marcher ?',
                        correctAnswer: 'pantalon',
                        options: ['telephone', 'pantalon', 'voiture'],
                      ),
                      Question(
                        type: QuestionType.options,
                        questionText:
                            'Pourquoi le zebre est un animale encien ?',
                        correctAnswer: 'angela merkel',
                        options: [
                          'c\'est comme ca',
                          'ja sais pas',
                          'parce que il est en blanc et noir'
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          // Add more quizzes here
        ],
      ),
    );
  }
}
