class GiftModel {
  final String personName;
  final String? gift;
  final String? date;
  final double? budget;
  final String? message;
  final String gender;

  GiftModel({
    required this.personName,
    required this.gender,
    this.gift,
    this.date,
    this.budget,
    this.message,
  });
}
