class BestsellerModel {
  final String title;
  final List<String> items;
  final List<String> images;
  final String more;
  final String category;

  BestsellerModel({
    required this.title,
    required this.items,
    required this.images,
    required this.more,
    required this.category,
  });

  factory BestsellerModel.fromJson(Map<String, dynamic> json) {
    return BestsellerModel(
      title: json['title'] ?? '',
      items: List<String>.from(json['items'] ?? []),
      images: List<String>.from(json['images'] ?? []),
      more: json['more'] ?? '',
      category: json['category'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'items': items,
      'images': images,
      'more': more,
      'category': category,
    };
  }
}
