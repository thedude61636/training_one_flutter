import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String title, address, phoneNumber;
  final int followerCount;

  const TitleCard(
      {Key key,
      @required this.title,
      @required this.address,
      @required this.phoneNumber,
      @required this.followerCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/220/200"),
                backgroundColor: Colors.white,
                maxRadius: 32,
              ),
              backgroundColor: Color(0xfff29a94),
              maxRadius: 34,
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff696b9e)),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.location_pin),
              Text(
                address,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.phone),
              Text(
                phoneNumber,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 65,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            followerCount.toString(),
                            style: TextStyle(
                                color: Color(0xff696b9e),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Follow",
                            style: TextStyle(color: Color(0xff696b9e)),
                          )
                        ],
                      ),
                    ),
                    onPressed: null,
                    color: Color(0xff3fb65f),
                    disabledColor: Colors.grey[200],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Follow"),
                    ),
                    onPressed: () {},
                    color: Color(0xff3fb65f),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      padding: EdgeInsets.all(32),
    );
  }
}
