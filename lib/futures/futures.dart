import 'package:al1_2024/futures/app_exception.dart';

void main() async {
  print('1');

  try {
    final value = await getStringFromNetwork();
    final length = await getStringLengthFromNetwork(value);
    print('Length = $length');
  } on StringValueException catch (error) {
    print('Got error getting string value : $error');
  } on LengthValueException catch (error) {
    print('Got error getting length : $error');
  } catch (error) {
    print('Got error $error');
  }

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

Future<String> getStringFromNetwork() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'coucou';
}

Future<int> getStringLengthFromNetwork(String value) async {
  await Future.delayed(const Duration(seconds: 1));
  return value.length;
}
