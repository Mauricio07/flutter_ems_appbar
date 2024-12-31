part of '../ems_appbar.dart';

class HeaderApp extends StatelessWidget implements PreferredSizeWidget {
  final Widget widgetTitle;

  const HeaderApp({
    super.key,
    required this.widgetTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: AppBar(
        title: Center(child: widgetTitle),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
