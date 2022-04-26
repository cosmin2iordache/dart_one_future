Future<void> main(List<String> arguments) async {
  sayOne();
  sayTwo().then(
    (value) {
      print(value);
    },
  );
  sayThree();

  String John = await sayTwo();

  print(John);
}

void sayOne() {
  print('One');
}

Future<String> sayTwo() async {
  Duration waitForMe = Duration(seconds: 3);
  String two = 'nothing';
  await Future.delayed(waitForMe, (() {
    two = 'Two';
  }));
  return two;
}

void sayThree() {
  print('Three');
}
