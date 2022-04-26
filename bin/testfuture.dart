// import 'dart:io';

void main(List<String> args) async {
  String result = await sayTwo();
  print(result);
}

Future<String> sayTwo() async {
  Duration waitme = Duration(seconds: 5);
  String name = 'one';
  await Future.delayed(waitme, (() {
    name = 'Two';
    print ('too late');
  }));
  return name;
}
