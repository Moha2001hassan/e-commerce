import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: AppBar(
        automaticallyImplyLeading: showBackArrow,
        title: title,
        actions: actions,
        // leading: showBackArrow
        //     ? IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Iconsax.arrow_left,
        //           color: isDarkMode ? Colors.white : Colors.black,
        //         ),
        //       )
        //     : leadingIcon != null
        //         ? IconButton(
        //             onPressed: leadingOnPressed,
        //             icon: Icon(
        //               leadingIcon,
        //               color: isDarkMode ? Colors.white : Colors.black,
        //             ),
        //           )
        //         : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
