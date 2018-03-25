import 'dart:math';

class DiceService {
  var members = new List<String>();

  DiceService(List<String> figures) {
    members.addAll(figures);
  }

  List<String> roll() {
    return _rollRandomly();
  }

  List<String> _rollRandomly() {
    var rand = new Random();
    int maxMember = members.length;
    // Get the highest number from the list
    print(maxMember.toString());
    var randMembers = new List<String>();
    for (var i = 0; i < members.length; i++) {
      var random = rand.nextInt(maxMember);
      // find an element that havent beed added to the new list
      while (randMembers.indexOf(members[random]) > -1) {
        random = rand.nextInt(maxMember);
      }
      randMembers.add(members[random]);
    }
    return randMembers;
  }
}
