part of 'uis.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      height: 80,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigasi(
            title: "Kamus",
            img: "assets/image/kamus.png",
            active: true,
          ),
          BottomNavigasi(
            title: "Percakapan",
            img: "assets/image/perckapan.png",
          ),
          // BottomNavigasi(
          //   title: "Kamus",
          //   img: "assets/image/kamus.png",
          // ),
        ],
      ),
    );
  }
}

class BottomNavigasi extends StatelessWidget {
  final String title;
  final String img;
  final Function button;
  final bool active;

  const BottomNavigasi({
    Key key,
    this.title,
    this.img,
    this.button,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: button,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(img, height: 40,),
          Text(
            title,
            style: TextStyle(color: active ? Colors.yellow[900] : Colors.grey[700])
          )
        ],
      ),
    );
  }
}
