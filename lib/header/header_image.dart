part of '../ems_appbar.dart';

class HeaderImage extends StatelessWidget {
  final String urlImage;
  final String title;
  final double height;

  const HeaderImage(
      {super.key,
      required this.urlImage,
      required this.title,
      this.height = 0.40});

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
        title: Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsApp.secondary,
          ),
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        background: Image.network(urlImage, fit: BoxFit.cover),
      ),
    );
  }
}
