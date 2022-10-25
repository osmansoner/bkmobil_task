// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserViewModel on MUserViewModelBase, Store {
  late final _$usersAtom =
      Atom(name: 'MUserViewModelBase.users', context: context);

  @override
  List<BKMUser> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(List<BKMUser> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$isServiceRequestLoadingAtom = Atom(
      name: 'MUserViewModelBase.isServiceRequestLoading', context: context);

  @override
  bool get isServiceRequestLoading {
    _$isServiceRequestLoadingAtom.reportRead();
    return super.isServiceRequestLoading;
  }

  @override
  set isServiceRequestLoading(bool value) {
    _$isServiceRequestLoadingAtom
        .reportWrite(value, super.isServiceRequestLoading, () {
      super.isServiceRequestLoading = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: 'MUserViewModelBase.pageState', context: context);

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  late final _$getAllUsersAsyncAction =
      AsyncAction('MUserViewModelBase.getAllUsers', context: context);

  @override
  Future<void> getAllUsers() {
    return _$getAllUsersAsyncAction.run(() => super.getAllUsers());
  }

  late final _$MUserViewModelBaseActionController =
      ActionController(name: 'MUserViewModelBase', context: context);

  @override
  void changeRequest() {
    final _$actionInfo = _$MUserViewModelBaseActionController.startAction(
        name: 'MUserViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$MUserViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users},
isServiceRequestLoading: ${isServiceRequestLoading},
pageState: ${pageState}
    ''';
  }
}
