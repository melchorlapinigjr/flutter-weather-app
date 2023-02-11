import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onLogoutPressed;
  final bool? showLogout;

  const MyAppBar(
      {Key? key,
      required this.title,
      this.onLogoutPressed,
      this.showLogout = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: const Icon(
        Icons.cloud,
        size: 36,
      ),
      actions: !showLogout!
          ? []
          : [
              TextButton(
                  onPressed: onLogoutPressed!,
                  child: const Text(
                    'Logout',
                  ))
            ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
