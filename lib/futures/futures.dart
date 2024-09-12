void main() {
  print('1');

  // getStringFromNetwork().then((stringValue) {
  //   getStringLengthFromNetwork(stringValue).then((length) {
  //     print('Length: $length');
  //   }).catchError((error) {
  //     print('An error occured: $error');
  //   });
  // }).catchError((error) {
  //   print('An error occured: $error');
  // });

  print('3');
}

Future<String> getStringFromNetwork() {
  return Future.delayed(const Duration(seconds: 1), () {
    //throw Exception('Oups');
    return 'Coucou';
  });
}

Future<int> getStringLengthFromNetwork(String value) {
  return Future.delayed(const Duration(seconds: 1), () {
    return value.length;
  });
}
