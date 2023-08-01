part of '../user_view.dart';

class _AvatarButton extends StatelessWidget {
  const _AvatarButton(this.viewModel);
  final UserViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        offset: const Offset(0, 50),
        child: Observer(builder: (_) {
          return const CircleAvatar(
            // backgroundImage: NetworkImage(viewModel.userModel?.fotoUrl ?? AppConstant.DEFAULT_PROFILE_IMAGE),
            backgroundImage: NetworkImage(AppConstant.DEFAULT_PROFILE_IMAGE),
            backgroundColor: Colors.transparent,
          );
        }),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: const Text(AppConstant.CIKIS_YAP),
              onTap: () => viewModel.logout(),
            ),
          ];
        },
      ),
    );
  }
}
