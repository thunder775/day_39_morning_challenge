import 'dart:math';

import 'package:test/test.dart';
import '../bin/main.dart';
void main() {
  test('Test Case 1', () {
  });
  test('tower of hanoi possible moves', (){
    expect(possibleMoves([[3, 4],
      [1, 2],
      []]), [[[4], [1, 2], [3]], [[1, 3, 4], [2], []], [[3, 4], [2], [1]]]);
  });


}
