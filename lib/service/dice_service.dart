class DiceService {
  var members = new List<int>();

  DiceService(List<int> numbers) {
    members.add(numbers[0]);
    members.add(numbers[1]);
    members.add(numbers[2]);
  }

  List<int> throwDice() {
    return members;
  }
}
