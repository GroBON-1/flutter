import 'package:ebay.dart/ebay.script/ebay2.dart';
import 'package:flutter/material.dart';

class TelegramApp extends StatefulWidget {
  TelegramApp({super.key});

  @override
  State<TelegramApp> createState() => _TelegramAppState();
}

void call() {}

class _TelegramAppState extends State<TelegramApp> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
      drawer: const DrowerBody(),
//
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Telegram',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                        appBar: AppBar(
                          title: const Text('Next page'),
                          backgroundColor: Colors.blue,
                        ),
                        body: ListView(
                          children: [
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.blueGrey,
                              child: Row(
                                children: [SearchBox()],
                              ),
                            )
                          ],
                        ));
                  },
                ));
              },
              icon: Icon(Icons.settings))
        ],
      ),
//
      body: ListView(
        children: [
          ListSettings(
              height2: 100,
              color: Colors.cyan,
              colorbackground2: Colors.black,
              text2: 'dsad',
              iconData2: Icons.dangerous),
          //1 Container
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.green,
            child: const Row(
              //Ряд
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/picture/Pacman.png'),
                  radius: 35,
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  //Столбец
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pacman',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'я ем свет',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  width: 135,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '14:55',
                      style: TextStyle(fontSize: 20),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '23',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          //2 Container
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.green,
            child: const Row(
              //Ряд
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/picture/Sun.jpg'),
                  radius: 40,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  //Столбец
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Лунтик',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Ура, новая серия "Лунтика"!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '14:10',
                      style: TextStyle(fontSize: 20),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          //3 Container
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.green,
            child: const Row(
              //Ряд
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/picture/Grobon.png'),
                  radius: 35,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  //Столбец
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'grobon',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Я зелёный, сплю!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  width: 83,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '02:14',
                      style: TextStyle(fontSize: 20),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListSettings extends StatelessWidget {
  final String text2;
  final IconData iconData2;
  final Color colorbackground2;
  final Color color;
  final double height2;

  const ListSettings(
      {super.key,
      required this.height2,
      required this.color,
      required this.colorbackground2,
      required this.text2,
      required this.iconData2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height2,
      width: double.infinity,
      color: color,
      child: const Row(
        //Ряд
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/picture/Pacman.png'),
            radius: 35,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            //Столбец
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: call,
                child: Text(
                  'Группа',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Pacman and his group',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          SizedBox(
            width: 43,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '14:55',
                style: TextStyle(fontSize: 20),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Text(
                  '23',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget SearchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20, minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey)
      ),
    ),
  );
}
