import 'package:flutter/material.dart';

class DrowerBody extends StatefulWidget {
  const DrowerBody({super.key});

  @override
  State<DrowerBody> createState() => _DrowerBodyState();
}

class _DrowerBodyState extends State<DrowerBody> {
  double _noSise = 593.2;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 190,
            color: Colors.blue,
            child: const SafeArea(
              child: Column(
                children: [PictureAndThemeButton(), NameAndDownButton()],
              ),
            ),
          ),
          SizedBox(
            height: _noSise,
            child: ListView(
              children: [
                ListTileSettings(
                  iconData: Icons.ice_skating,
                  text: 'дывдзфбдвфы',
                  colorbackground: Colors.black,
                  colorIcon: Colors.blue,
                ),
                ListTileSettings(
                  iconData: Icons.ice_skating,
                  text: 'дывдзфбдвфы',
                  colorbackground: Colors.cyan,
                  colorIcon: Colors.blue,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileSettings extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color colorbackground;
  final Color colorIcon;

  const ListTileSettings(
      {super.key, required this.colorIcon, required this.colorbackground, required this.text, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(iconData,color: colorIcon,),
        backgroundColor: colorbackground,
      ),
      title: Text(text),

    );
  }
}

class ListWtg extends StatelessWidget {
  const ListWtg({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class PictureAndThemeButton extends StatelessWidget {
  const PictureAndThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('asset/picture/IDontKnow.png'),
          radius: 30,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.sunny_snowing)),
      ],
    );
  }
}

class NameAndDownButton extends StatelessWidget {
  const NameAndDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Timur'),
            Text('+8 999-164-73-34'),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_down_sharp)),
      ],
    );
  }
}
