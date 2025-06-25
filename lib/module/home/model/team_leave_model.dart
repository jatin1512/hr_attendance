class TeamLeaveModel {
  final String name;
  final String date;

  TeamLeaveModel({
    required this.name,
    required this.date,
  });
}

final List<TeamLeaveModel> teamLeaveList = [
  TeamLeaveModel(name: "Jane Cooper", date: "Apr 15,2025 - Apr 18,2025"),
  TeamLeaveModel(
      name: "Leslie Alexander", date: "Apr 10,2025 - Apr 12,2025"),
  TeamLeaveModel(name: "Jenny Wilson", date: "May 08,2025 - May 12,2025"),
  TeamLeaveModel(name: "Jane Cooper", date: "Apr 15,2025 - Apr 18,2025"),
  TeamLeaveModel(
      name: "Leslie Alexander", date: "Apr 10,2025 - Apr 12,2025"),
  TeamLeaveModel(name: "Jenny Wilson", date: "May 08,2025 - May 12,2025"),
];
