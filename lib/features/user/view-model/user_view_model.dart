import 'dart:io';

import 'package:bkmobile_task/features/user/model/bkm_user.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
part 'user_view_model.g.dart';

// ignore: constant_identifier_names
enum PageState { LOADING, ERROR, SUCCESS, NORMAL }

class UserViewModel = MUserViewModelBase with _$UserViewModel;

abstract class MUserViewModelBase with Store {
  @observable
  List<BKMUser> users = [];

  final url = 'https://63582909c26aac906f3d3275.mockapi.io/api/users';
  
  @observable
  bool isServiceRequestLoading = false;

  @observable
  PageState pageState = PageState.NORMAL;

  @action
  Future<void> getAllUsers() async {
    changeRequest();
    final response = await Dio().get(url);

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      users = responseData.map((e) => BKMUser.fromJson(e)).toList();
    }

    changeRequest();
  }

  @action
  void changeRequest() {
    isServiceRequestLoading = !isServiceRequestLoading;
  }

}