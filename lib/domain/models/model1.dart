class Model1 {
  const Model1({
    this.id,
    required this.name,
  });

  final int? id;
  final String name;

  Map<String, Object?> toJson() => {
        '_id': id,
        'name': name,
      };

  Model1 copy({
    int? id,
    String? name,
  }) =>
      Model1(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  static Model1 fromJson(Map<String, Object?> json) => Model1(
        id: json['_id'] as int?,
        name: json['name'] as String,
      );
}
