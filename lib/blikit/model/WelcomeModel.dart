class WelcomeModel {
  final String title;
  final String subtitle;

  WelcomeModel({required this.title, required this.subtitle});

  factory WelcomeModel.fromMap(Map<String, String> map) {
    return WelcomeModel(
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
    );
  }

  Map<String, String> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
    };
  }
}
