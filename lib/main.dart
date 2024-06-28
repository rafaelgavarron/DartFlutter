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
  const StringGrande = '''Sou lindo 
as
ad
wsdf
''';
  print(StringGrande);
  const DuasLinhas = 'sou \nlindo';
  print(DuasLinhas);

  ///sou
  ///lindo
  const rawString = r'My name \n is $name.'; //começar com r é uma raw string,
  // onde vai ser tudo convertido para string padrão, independente do que for armazenadao de caractere
  print(rawString);
  print('Eu \u2764 Dart\u0021');
  print('Eu amo \u{1F3AF}');

  ///----------------Mini - exercises ------------------
  /// Create a string constant called firstName and initialize it to your first name.
  /// Also create a string constant called lastName and initialize it to your last name.

  const firstName = 'Rafael';
  const lastName = 'Gavarron';
  const nomeInteiro = '$firstName $lastName'; // dessa forma há interpolação
  print(nomeInteiro);

  ///Create a string constant called fullName
  ///by adding the firstName and lastName constants together separated by a space.
  ///(Já feito acima)
  /// Using interpolation, create a string constant called myDetails
  /// that uses the fullName constant to create a string introducing yourself.
  /// For example, Ray Wenderlich’s string would read: Hello, my name is Ray Wenderlich.

  const myDetails = 'Olá, meu nome é $nomeInteiro e eu sou incrível';
  print(myDetails);

  ///---------------------Challenge---------------------
  ///You’re a teacher, and in your class, attendance is worth 20% of the grade, the homework is worth 30% and the exam is worth 50%.
  ///Your student got 90 points for her attendance, 80 points for her homework and 94 points on her exam.
  ///Calculate her grade as an integer percentage rounded down.
  const presenca = 90 * 0.20;
  const homework = 80 * 0.30;
  const prova = 94 * 0.50;

  final nota = 'a nota é de: ${(presenca + homework + prova).toInt()}';
  print(nota);
  const twoCountries = '🇷🇴🇹🇩';
  print(twoCountries.runes);
  //primeiro é Romania e segundo é Chad

  const vote = 'Thumbs up! 👍🏿';

  ///How many UTF-16 code units are there?
  // How many Unicode code points are there?
  // How many Unicode grapheme clusters are there?

  print(vote.codeUnits.length); //15
  print(vote.runes.length); // 13
  print(vote.characters.length); // 12

  ///What is wrong with the following code?
  // const name = 'Ray';
  // name += ' Wenderlich';

  var name1 = 'Ray';
  name1 += ' Wenderlich';
  print(name1); //não tava juntando pq era constante, const nn pode ser alterada

  //What’s the type of value?
  //const value = 10 / 2;

  const value = 10 / 2; //double
  var valueInt = value.toInt(); //int
  print(valueInt); //5

  /// What is the value of the constant named summary?
  // const number = 10;
  // const multiplier = 5;
  // final summary = '$number \u00D7 $multiplier = ${number * multiplier}';

  const number = 10;
  const multiplier = 5;
  const summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary); // 10 x 5 = 50

  ///--------------- Chapter 4 - Control flow ---------------
  const yes = true;
  const no = false;
  const doesOneEqualTwo = 1 == 2;
  print(doesOneEqualTwo);
  print(1 != 2); //true
  print(!(1 == 2)); //false
  const maiorQue = 1 > 2;
  const menorQue = 1 < 2;
  print(maiorQue);
  print(menorQue);
  const maiorOuIgual = 1 >= 2; //false
  const menorOuIgual = 1 <= 2; //true
  const operadorE = maiorOuIgual &&
      menorOuIgual; //false, pq os dois necessitam ser verdadeiro
  print(operadorE);
  const operadorOU = maiorOuIgual ||
      menorOuIgual; //true, pois necessita que somente um seja verdadeiro
  print(operadorOU);
  const andTrue = 1 < 2 && 4 > 3; //true
  const andFalse = 1 < 2 && 3 > 4; //false
  const orTrue = 1 < 2 || 3 > 4; //true
  const orFalse = 1 == 2 || 3 == 4; //false
  const true1 = 3 > 4 && 1 < 2 || 1 < 4; //true
  print(true1);
  const meTeenager = myAge >= 13 && myAge <= 19;
  print('é adolescente: $meTeenager');
  const maryAge = 30;
  const maryTeenager = maryAge >= 13 && maryAge <= 19;
  const bothTeenagers = meTeenager && maryTeenager;
  print(bothTeenagers);
  const reader = 'Rafael Gavarron';
  const ray = 'Ray Wenderlich';
  const rayIsReader = reader == ray;
  print(rayIsReader);

  ///----------------If Statement----------------
}
