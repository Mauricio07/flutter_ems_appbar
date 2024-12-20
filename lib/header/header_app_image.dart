part of '../ems_appbar.dart';

class HeaderAppImage extends StatelessWidget implements PreferredSizeWidget {
  final Widget widgetTitle;
  final String urlPath;
  final BoxFit boxFit;

  const HeaderAppImage({
    super.key,
    required this.widgetTitle,
    this.urlPath = '',
    this.boxFit = BoxFit.fill,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widgetTitle,
              AvatarWidget(urlPath: urlPath, boxFit: boxFit),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
