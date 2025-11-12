class News {
  final int id;
  final String title;
  final String content;
  final String category;
  final String thumbnail;
  final bool isFeatured;
  final String author;
  final DateTime createdAt;

  News({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.thumbnail,
    required this.isFeatured,
    required this.author,
    required this.createdAt,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      category: json['category'],
      thumbnail: json['thumbnail'] ?? '',
      isFeatured: json['is_featured'] ?? false,
      author: json['author'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'category': category,
      'thumbnail': thumbnail,
      'is_featured': isFeatured,
      'author': author,
      'created_at': createdAt.toIso8601String(),
    };
  }
}