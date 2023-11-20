import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?   
     CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
       child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
         ),
     )
     :  CircleAvatar(
      radius: 38,
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
    Color(0xff220C10),
    Color(0xff506C64),
    Color(0xff77CBB9),
    Color(0xff75B8C8),
    Color(0xffCDD3D5),

  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child:  GestureDetector(
            onTap: (){
              currentIndex = index;
              setState(() {
                
              });
            }
            
            ,
            child: ColorItem(
              color: colors[index],
              isActive:currentIndex == index ,
            ),
          ),
        );
      }),
    );
  }
}