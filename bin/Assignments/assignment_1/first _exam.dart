void main() {
  /// list
  List<Map<String, dynamic>> student = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];
  /// storing the data
  Map<String, double> averages = {};
  /// average score
  for (var std in student) {
    String name = std["name"];
    List scores = std["scores"];
    int total= 0;
    for (int score in scores) {
      total += score;
    }
    int scoresLength= scores.length;
    double avg = total / scoresLength;
    avg = double.parse(avg.toStringAsFixed(2));
    averages[name] = avg;
  }
  /// descending order
  List<MapEntry<String, double>> sortedList = averages.entries.toList();
  sortedList.sort((a, b) {
    return b.value.compareTo(a.value);
  });
  Map<String, double> desAvgScore = {};
  for (var entry in sortedList) {
    desAvgScore[entry.key] = entry.value;
  }
  print(desAvgScore);
}
