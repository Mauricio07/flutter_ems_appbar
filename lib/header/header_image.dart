part of '../ems_appbar.dart';

class HeaderImage extends StatelessWidget {
  final String urlImage;
  final double height;
  final String? title;

  const HeaderImage(
      {super.key, required this.urlImage, this.title, this.height = 0.40});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      expandedHeight: size.height * height,
      pinned: true,
      backgroundColor: ColorsApp.background,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.only(bottom: 10),
        title: title != null
            ? Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.secondary,
                ),
                child: Text(
                  title!.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              )
            : Container(),
        background: Image.network(urlImage, fit: BoxFit.cover),
      ),
    );
  }
}
