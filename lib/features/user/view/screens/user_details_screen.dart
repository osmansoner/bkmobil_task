import 'package:bkmobile_task/features/user/model/bkm_user.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key, required this.user}) : super(key: key);
  final BKMUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildListViewPosts(),
    );
  }

  Widget buildListViewPosts() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.network(user.avatar!),
        Text('${user.name} ${user.surname}'),
        Text(user.email!),
        Text(user.phone!),
        Text('Kullanıcı ID: ${user.id}'),

      ]),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Row(
        children: [
          Image.asset('assets/images/logo.png', height: 70,),
          const SizedBox(width: 5,),
          const Text("BK Mobil Task"),
        ],
      ),
    );
  }
}
