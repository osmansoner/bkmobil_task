import 'package:bkmobile_task/features/user/view-model/user_view_model.dart';
import 'package:bkmobile_task/features/user/view/screens/user_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class UsersScreen extends StatelessWidget {
  final _viewModel = UserViewModel();
  UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _viewModel.getAllUsers();
    return Scaffold(
      appBar: buildAppBar(),
      body: buildListViewUsers(),
    );
  }

  Center buildCenterLikeCubic() {
    return Center(child: Observer(builder: (_) {
      switch (_viewModel.pageState) {
        case PageState.LOADING:
          return const CircularProgressIndicator();
        case PageState.SUCCESS:
          return buildListViewUsers();
        case PageState.ERROR:
          return const Center(child: Text("Error"));
        default:
          return Image.asset('assets/images/logo.png');
      }
    }));
  }

  Widget buildListViewUsers() {
    return Observer(builder: (_) {
      return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _viewModel.users.length,
        itemBuilder: (context, index) => buildListTileCard(index, context),
      );
    });
  }

  ListTile buildListTileCard(int index, BuildContext context) {
    return ListTile(
      leading: Image.network(_viewModel.users[index].avatar!),
      title: Text(
          '${_viewModel.users[index].name!} ${_viewModel.users[index].surname!}'),
      subtitle: Text(
          '${_viewModel.users[index].email!}\n${_viewModel.users[index].phone!}'),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.orange),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserDetailsScreen(
                    user: _viewModel.users[index],
                  )));
        },
        child: const Text('Detay'),
        
      ),
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
      leading: Observer(builder: (_) {
        return Visibility(
          visible: _viewModel.isServiceRequestLoading,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ),
        );
      }),
    );
  }
}
