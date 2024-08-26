import 'dart:math';
import 'package:characters/characters.dart';

const global = 'Hello, World';

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

enum AudioState {
  playing,
  paused,
  stopped,
}

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
  if (2 > 1) {
    print('Sim');
  } //'Sim'
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  } //'Animal is not a house pet.'

  const local = 'Hello main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global);
    print(local);
    print(insideIf);
  }
  print(global);
  print(local);
  //print(insideIf); //Não é permitido

  const score = 83;

  // String message;
  // if (score >= 60) {
  //   message = 'You passed';
  // } else {
  //   message = 'You failed';
  // } //MUUUITO código

  const message12 = (score >= 60) ? 'You passed' : 'You failed';
  //pouco código
  print(message12);

  //myAge = 24
  if (myAge >= 13 && myAge <= 19) {
    print('Teenager');
  } else {
    print('Not a Teenager');
  }

  const answer = (myAge >= 13 && myAge <= 19) ? 'Teenager' : 'Not a teenager';
  print(answer);

  ///switch (variable) {
  ///  case value 1:
  ///    code
  ///break;
  ///case value2:
  ///  code
  ///break;
  ///
  ///...
  ///
  ///default:
  ///  code
  ///}

  /// ------------- if para switch --------------
  /// const number = 3;
  // if (number == 0) {
  //   print('zero');
  // } else if (number == 1) {
  //   print('one');
  // } else if (number == 2) {
  //   print('two');
  // } else if (number == 3) {
  //   print('three');
  // } else if (number == 4) {
  //   print('four');
  // } else {
  //   print('something else');
  // }

  const numberSwitch = 3;
  switch (numberSwitch) {
    case 3:
      print('TOP');
      break;
    case 2:
      print('bla');
      break;
    default:
      print('no');
  }
  const WeatherToday = Weather.cloudy;
  switch (WeatherToday) {
    case Weather.sunny:
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print('Get your skis');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella');
      break;
  }
  final index = WeatherToday.index;
  print(index);
  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.paused:
      print('Tá pausado');
      break;
    case AudioState.playing:
    case AudioState.stopped:
      print('Não tá pausado');
      break;
    default:
      print('Sla');
  }

  /// ----------------- While ------------------
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }

  /// ---------------- Do While ----------------
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 10);

  sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print(sum); //11
  do {
    sum += 4;
  } while (sum < 10);
  print(sum); //15
  sum = 1;
  while (true) {
    sum += 4;
    print(sum);
    if (sum > 10) {
      break;
    }
  }
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Não é um 6!');
  }
  print('Ufa!');

  /// --------------- for ----------------
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  /// --------------- for-in --------------
  const myString = 'I ❤ Dart ';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  /// --------------- forEach ---------------
  const myNumbers = [1, 2, 3];
  myNumbers.forEach((number) => print(number));

  /// myNumbers.forEach((number) {
  ///   print(number);
  /// }); é a mesma coisa

  ///---------------- mini-exercises -----------
  var counter = 0;

  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }
  for (var i = 1; i <= 10; i++) {
    print(i * i);
  }
  const numbers = [1, 2, 4, 7];
  for (var quadrada in numbers) {
    print(sqrt(quadrada));
  }
  numbers.forEach((number) => print(sqrt(number)));

  /// -------------- Challenges ----------------

  const firstName1 = 'Bob';
  if (firstName == 'Bob') {
    const lastName1 = 'Smith';
  } else if (firstName == 'Ray') {
    const lastName1 = 'Wenderlich';
  }
  // final fullName = '$firstName1 $lastName1'; não é local

  print(true && true); //true
  print(false || false); //false
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); //true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); //true

  const number12 = 946;
  var trial = 1;
  var times = 0;
  while (trial < number12) {
    trial = trial * 2;
    times += 1;
  }
  print('Next power of 2 >= $number12 is $trial '
      'which is 2 to the power of $times.');

  const n = 10;
  var previous = 1;
  var current = 1;
  var counter1 = 2;
  for (var i = 2; i < n; i++) {
    var next = current + previous;
    previous = current;
    current = next;
  }
  print('A Fibonacci de $n é $current');
  var sum5 = 0;
  for (var i = 0; i <= 5; i++) {
    sum5++;
  }
  print(sum5); //6

  for (var countdown = 10; countdown >= 0; countdown--) {
    print(countdown);
  }
  var sum3 = 0;
  for (var i = 0; i <= 5; i++) {
    sum3 += i;
    print(sum3);
  }
  //Print 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
  double numero = 0.0;
  for (var i = 0; i <= 10; i++) {
    String numeroFix = numero.toStringAsFixed(1);
    numero += 0.1;
    print(numeroFix);
  }

  /// ------------ Função -----------------
  // const input = 12;
  // final output = compliment(input);
  // print(output);
  print(compliment(12));

  void helloPersonAndPet(String person, String pet) {
    print('Hello, $person, and your furry friend, $pet!');
  }

  helloPersonAndPet('boy', 'girl');

  String fullName(String first, String last, [String? title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullName('Albert', 'Einstein'));
  print(fullName('Professor', 'Albert', 'Einstein'));

  // bool withinTolerance(int value, {int min = 0, int max = 10}) {
  //   return min <= value && value <= max;
  // }
  bool withinTolerance({
    required int value,
    int min = 0,
    int max = 10,
  }) {
    return min <= value && value <= max;
  }

  print(withinTolerance(value: 12)); // false
  print(withinTolerance(value: 3, min: 21, max: 55)); //false
  print(withinTolerance(value: 9, min: 7, max: 11)); // true
  String hello() {
    return 'Hello';
  }

  print(hello());
  var myPreciousData = 5782;
  String anInnocentLookingFunction(String name) {
    myPreciousData = -1;
    return 'Hello, $name. Heh, heh';
  }

  print(myPreciousData); //5782
  print(anInnocentLookingFunction('rafael'));
  print(myPreciousData); //-1

  String compliment1(number) {
    return '$number tbm é um bom número.';
  }

  /// ----------- Mini - Exercises --------------
  String youAreWonderful(String name, {int numberPeople = 30}) {
    return 'Vc tbm é lindo $name. $numberPeople tbm acham';
  }

  print(youAreWonderful('oii'));

  /// ----------------- Anonymous functions -----------
  int number212 = 4;
  String greeting = 'Hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(2, 4)); //8

  void namedFunction(Function anonymousFunction) {
    // body function
  }
  Function namedFunction1() {
    return () {
      print('hello');
    };
  }

  final multiply12 = (int a, int b) {
    return a * b;
  };
  print(multiply12(2, 3));

  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  //print(applyMultiplier(2));
  final triple = applyMultiplier(3);

  print(triple(6)); //18
  print(triple(14.0)); //42

  const numbers1 = [1, 2, 3];
  numbers1.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });
  var counter3 = 0;
  final incrementCounter = () {
    counter3 += 1;
  };
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter3);
  Function countingFunction() {
    var counter212 = 0;
    final incrementCounter = () {
      counter212 += 1;
      return counter212;
    };
    return incrementCounter;
  }

  final counter12 = countingFunction();
  final counter22 = countingFunction();
  print(counter12());
  print(counter22());
  print(counter12());
  print(counter12());
  print(counter22());

  /// -------------- Mini-Exercises -------------------
  Function wonderful = (String name, {int numberPeople = 30}) {
    return 'Vc tbm é lindo $name. $numberPeople pessoas tbm acham';
  };

  print(wonderful('Rafael', numberPeople: 123));

  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((String) => print('vc é lindo $String'));
  for (var String in people) {
    print('vc é lindo $String');
  }

  /// ----------------- Arrow Functions -------------------
  int add(int a, int b) {
    return a + b;
  }

  int add1(int a, int b) => a + b; //é a mesma coisa

  // final multiply1 = (int a, int b) {
  //  return a * b;
  // };
  final multiply1 = (int a, int b) => a * b;
  print(multiply1(2, 3)); //6

  // Function applyMultiplier(num multiplier) {
  //   return (num value) {
  //     return value * multiplier;
  //   };
  // }
  Function applyMultiplier1(num multiplier) =>
      (num value) => value * multiplier;

  /// --------------- Mini- exercise -------------------

  // Function wonderful = (String name, {int numberPeople = 30}) {
  //   return 'Vc tbm é lindo $name. $numberPeople pessoas tbm acham';
  // };
  //
  // print(wonderful('Rafael', numberPeople: 123));

  Function wonderful1 = (String name12, {int numberPeople1 = 12}) =>
      'Vc tbm é lind12 $name12. $numberPeople1 tbm acham';
  print(wonderful1('oiii'));

  /// -------------- Challenges -----------------------
  // Challenge 1: Prime time
  // Write a function that checks if a number is prime.
  String primo(int n) {
    for (var i = 2; i < n - 1; i++) {
      if (n % i == 0) {
        return 'Não é primo';
      }
    }
    return 'é Primo';
  }

  // Function primo = (int n) {
  //   for (var i = 2; i < n - 1; i++) {
  //     if (n % i == 0) {
  //       return 'Não é primo';
  //     }
  //   }
  //   return 'é Primo';
  // };
  print(primo(6));
  print(primo(13));
  print(primo(8893));

  // Write a function named repeatTask with the following definition:
  // int repeatTask(int times, int input, Function task)
  // It repeats a given task on input for times number of times.
  // Pass an anonymous function to repeatTask to square the input of 2 four times.
  // Confirm that you get the result 65536,
  // since 2 squared is 4, 4 squared is 16, 16 squared is 256, and 256 squared is 65536.
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(4, 2, (num input) {
    return pow(input, 2);
  });
  print(result);

  /// Challenge 3: Darts and arrows
  /// Update Challenge 2 to use arrow syntax.
  final result1 = repeatTask(4, 2, (num input) => pow(input, 2));
  print(result1);

  // -------------------- Classes --------------------
  final user = User();
  user.name = 'Ray';
  user.id = 42;
  print(user);
}

// Isso é da aula de classes
class User {
  int id = 0;
  String name = '';

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

//Isso é da aula de função
String compliment(int number) {
  return '$number is a very nice number';
}
