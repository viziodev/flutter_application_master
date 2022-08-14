import 'dart:convert';

class CategorieModel {
  final int id;
  final String name;
  bool isActive = false;
  CategorieModel({
    required this.id,
    required this.name,
    required this.isActive,
  });

  CategorieModel copyWith({
    int? id,
    String? name,
    bool? isActive,
  }) {
    return CategorieModel(
      id: id ?? this.id,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isActive': isActive,
    };
  }

  factory CategorieModel.fromMap(Map<String, dynamic> map) {
    return CategorieModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      isActive: map['isActive'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategorieModel.fromJson(String source) => CategorieModel.fromMap(json.decode(source));

  @override
  String toString() => 'CategorieModel(id: $id, name: $name, isActive: $isActive)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CategorieModel &&
      other.id == id &&
      other.name == name &&
      other.isActive == isActive;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ isActive.hashCode;
}
