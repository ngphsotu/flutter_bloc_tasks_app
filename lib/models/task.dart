import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {
  final String title;
  final String decription;
  final String id;
  bool? isDone;
  bool? isDeleted;

  Task({
    required this.title,
    required this.decription,
    required this.id,
    this.isDone,
    this.isDeleted,
  }) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Task copyWith({
    String? title,
    String? decription,
    String? id,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
      title: title ?? this.title,
      decription: decription ?? this.decription,
      id: id ?? this.id,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'decription': decription,
      'id': id,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'],
      decription: map['decription'],
      id: map['id'],
      isDone: map['isDone'],
      isDeleted: map['isDeleted'],
    );
  }

  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [title, decription, id, isDone, isDeleted];
}
