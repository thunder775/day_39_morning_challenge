// Tower of Hanoi
// https://www.ocf.berkeley.edu/~shidi/cs61a/w/images/f/f8/Hanoi0.png
// Find possible moves for the given state of Hanoi towers
// input: [[3,4],[1,2],[]]
// output: [[[1,3,4],[2],[]], [[3,4],[2],[1]], [[4],[1,2],[3]]]

List<List<List<int>>> possibleMoves(List<List<int>> input) {
  List<List<List<int>>> output = [];
  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < input.length; j++) {
      if (i != j && input[i].isNotEmpty) {
        if (canBeStacked(input[i], input[j])) {
          input[j].insert(0, input[i].removeAt(0));
          addToOutputList(output, input);
          input[i].insert(0, input[j].removeAt(0));
        }
      }
    }
  }
  print(output);
  return output;
}

void addToOutputList(List<List<List<int>>> output, List<List<int>> source) {
  List<List<int>> temp = [];
  for (List outer in source) {
    List<int> innerList = [];
    for (int i = 0; i < outer.length; i++) {
      innerList.add(outer[i]);
    }
    temp.add(innerList);
  }
  output.add(temp);
}

bool canBeStacked(List<int> tower1, List<int> tower2) =>
    ((tower2.isEmpty) || (tower1[0] < tower2[0]));

main() {
  possibleMoves([
    [2,3, 4],
    [1],
    []
  ]);
}
