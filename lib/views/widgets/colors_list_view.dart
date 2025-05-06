import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 21,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 24,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xffbd9391),
    Color(0xffadbabd),
    Color(0xff91b7c7),
    Color(0xff6eb4d1),
    Color(0xff6cbeed),
    Color(0xffff66b3),
    Color(0xff084b83),
    Color(0xfff0f6f6),
    Color(0xff5b5941),
    Color(0xffb5d3a1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
