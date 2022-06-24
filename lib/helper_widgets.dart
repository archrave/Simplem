import 'package:flutter/material.dart';

class ProfileContentTile extends StatelessWidget {
  const ProfileContentTile({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.color,
    @required this.content,
  }) : super(key: key);

  final Icon icon;
  final Color color;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CircleAvatar(
                    radius: 20,
                    child: icon,
                    backgroundColor: color,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'SFPro',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        content,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.65),
                          fontFamily: 'SFPro',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key key,
    @required this.img,
    @required this.name,
    @required this.location,
  }) : super(key: key);

  final String name;
  final String location;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(1000),
        //     child: SizedBox(
        //       // width: 100,
        //       // height: 100,
        //       child: Image.asset(
        //         img,
        //       ),
        //       // decoration: BoxDecoration(
        //       // borderRadius: BorderRadius.circular(360),
        //     ),
        //   ),
        // ),
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 60,
          backgroundImage: AssetImage(img),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Ubuntu',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.amber,
                    fontFamily: 'Ubuntu',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
