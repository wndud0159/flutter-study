import 'package:flutter/material.dart';
import 'package:todo_provider01/models/todo_model.dart';

class TodoFilterState {
  final Filter filter;
  TodoFilterState({
    required this.filter,
  });

  factory TodoFilterState.initial() {
    return TodoFilterState(filter: Filter.all);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoFilterState && other.filter == filter;
  }

  @override
  int get hashCode => filter.hashCode;

  @override
  String toString() => 'TodoFilterState(filter: $filter)';

  TodoFilterState copyWith({
    Filter? filter,
  }) {
    return TodoFilterState(
      filter: filter ?? this.filter,
    );
  }
}

class TodoFilter with ChangeNotifier {
  TodoFilterState _state = TodoFilterState.initial();
  TodoFilterState get state => _state;

  void ChangeFilter(Filter newFilter) {
    _state = _state.copyWith(filter: newFilter);
    notifyListeners();
  }
}
