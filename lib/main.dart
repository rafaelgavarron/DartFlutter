import 'dart:math';
import 'package:characters/characters.dart';

void main() {
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));
  print(350 ~/ (5 + 2)); // ~/ = divide, mas retorna somente o Inteiro

  print(sin(45 * pi / 180)); //0.7071...
  print(cos(135 * pi / 180)); //-0.7071...
  print(sqrt(4));
  print(min(2, 10));
  print(max(-5, -10));
  print(max(sqrt(93), pi * pi));

  /// ------------- mini-EXERCISE 1 --------------
  ///

  print(1 / sqrt(2));
  print(sin(45 * pi / 180));
  final Horas = DateTime.now().hour;
  // Horas = 10;
  // print(Horas);

  /// -------------- mini-EXERCISE 2 ----------------
  ///
  const int myAge = 24;
  double averageAge = 24;
  // var MediaIdade = (averageAge + 23.2) ~/ 2;
  // const TestNumber = 123;
  // const EvenOdd = TestNumber % 2;
  // TestNumber = 124;
//  for
  //print(myAge);
  var age = 16;
  print(age);
  age = 30;
  print(age);
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);
  print('answer1: $answer1, answer2: $answer2, answer3: $answer3');

  ///Declare three constants called rating1, rating2 and rating3 of type double and assign each a value.
  ///Calculate the average of the three and store the result in a constant named averageRating.
  const rating1 = 12;
  const rating2 = 14;
  const rating3 = 16;
  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  ///A quadratic equation is something of the form
  //
  // a⋅x² + b⋅x + c = 0.
  //
  // The values of x which satisfy this can be solved by using the equation
  //
  // x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a).
  //
  // Declare three constants named a, b and c of type double.
  // Then calculate the two values for x using the equation above (noting that the ± means plus or minus, so one value of x for each).
  // Store the results in constants called root1 and root2 of type double.
  //
  const double a = 2;
  const double b = 3;
  const double c = 1;
  final double root1 = (-b + sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
  final double root2 = (-b - sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
  print('root1: $root1 , root2: $root2');

  /// Chapter 3 ---- Types and Operations
  ///
  ///
  num myNumber = 3.14;
  print(myNumber is int);
  print(myNumber is double);
  print(myNumber.runtimeType); //verifica qual o tipo da variavel
  final integer = myNumber.toInt();
  print(integer);
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  //const totalCost = hourlyRate * hoursWorked; //multiplicação de int e double
  final totalCost =
      (hourlyRate * hoursWorked).toInt(); // caso queira mudar para int
  print(totalCost); // retorna double
  num someNumber = 3;
  print(someNumber);
  final someInt = someNumber as int;
  print(someNumber.isEven); //.isEven verifica se é par
  print(someInt);

  ///Mini exercises ----
  ///
  /// Create a constant called age1 and set it equal to 42. Create another constant called age2 and set it equal to 21.
  /// Check that the type for both constants has been inferred correctly as int
  /// by hovering your mouse pointer over the variable names in VS Code.

  const age1 = 42;
  const age2 = 21;
  // deu int

  ///Create a constant called averageAge and set it equal to the average of age1 and age2 using the operation (age1 + age2) / 2.
  /// Hover your mouse pointer over averageAge to check the type.
  ///Then check the result of averageAge. Why is it a double if the components are all int?

  const averageAge1 = (age1 + age2) / 2;
  print(averageAge1);
  var salutation = 'Hello!';
  print(salutation
      .codeUnits); // valores decimais de cada caractere, armazenados em um array
  const dart = '🎯';
  print(dart.codeUnits); // retorna valores substitutos
  print(dart.runes); // retorna o valor em unicode diretamente
  const family = '👨‍👩‍👧‍👦';
  print(family.characters.length); // 1
  var message = 'Hello' ' my name is ';
  const name = 'Ray';
  message += name;
  print(message); // 'Hello my name is Ray'
  final message1 =
      StringBuffer(); //cria um buffer vazio de string e vai armazenando
  message1.write('Hello');
  message1.write(' my name is ');
  message1.write('Rafael');
  message1.toString();
  print(message1);
// "Hello my name is Rafael"
  const divisao = 1 / 3;
  final sentence = 'A divisão de 1/3 é ${divisao.toStringAsFixed(2)}';
  print(sentence);
}
