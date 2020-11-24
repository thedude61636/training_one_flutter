import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:training_one/data/models/post.dart';
import 'package:training_one/ui/components/title_card.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String schoolName = "St. Xavier";

  List<Post> posts = [
    Post()
      ..schoolName = "St. Xavier"
      ..postBody =
          "oaiusdflasdhlfaldfslhaiuhdfalksjdbcpaieoaiusdflasdhlfaldfslhaiuhdfalksjdbcpaieoaiusdflasdhlfaldfslhaiuhdfalksjdbcpaie"
      ..image = "https://picsum.photos/200/200"
      ..timeAgo = "5 hours ago"
      ..schoolProfileImage = "https://picsum.photos/200/200",
    Post()
      ..schoolName = "St. Xavier"
      ..postBody =
          "oaiusdflasdhlfaldfslhaiuhdfalksjdbcpaieoaiusdflasdhlfaldfslhaiuhdfalksjdbcpaieoaiusdflasdhlfaldfslhaiuhdfalksjdbcpaie"
      ..image = "https://picsum.photos/200/200"
      ..timeAgo = "5 hours ago"
      ..schoolProfileImage = "https://picsum.photos/200/200",
    Post()
      ..schoolName = "St. Xavier"
      ..postBody =
          "oaiusdflasdhlfaldfslhaiuhdfalksjdbcpaieoaiusdflasdhlfaldfslhaiuhdfalksjdbcpaieoaiusdflasdhlfaldfslhaiuhdfalksjdbcpaie"
      ..image = "https://picsum.photos/200/200"
      ..timeAgo = "5 hours ago"
      ..schoolProfileImage = "https://picsum.photos/200/200",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("Add"),
        onPressed: () {
          setState(() {
            posts.insert(
                0,
                Post()
                  ..schoolProfileImage = "https://picsum.photos/222/222"
                  ..timeAgo = "2 hours Ago"
                  ..image = "https://picsum.photos/222/222"
                  ..schoolName = "name"
                  ..postBody =
                      "apiudhfapsuidhfpiuhfdsasapiudhfapsuidhfpiuhfdsasapiudhfapsuidhfpiuhfdsas");
          });
        },
      ),
      backgroundColor: Color(0xfff1e6e6),
      appBar: AppBar(
        title: Text("School Events"),
        centerTitle: true,
        leading: Icon(CupertinoIcons.chevron_left),
      ),
      body: ListView(
        children: [
          TitleCard(
            title: schoolName,
            address: "576 Sebastin arcade, NY, 12456",
            phoneNumber: "7634974132983",
            followerCount: 380,
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              var post = posts[index];
              return PostWidget(
                  schoolName: post.schoolName,
                  postBody: post.postBody,
                  image: post.image,
                  timeAgo: post.timeAgo,
                  schoolProfileImage: post.schoolProfileImage);
            },
          )
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String schoolName, postBody, image, timeAgo, schoolProfileImage;

  const PostWidget(
      {Key key,
      @required this.schoolName,
      @required this.postBody,
      @required this.image,
      @required this.timeAgo,
      @required this.schoolProfileImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      elevation: 0,
      margin: EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(schoolProfileImage),
                    backgroundColor: Colors.white,
                    maxRadius: 22,
                  ),
                  backgroundColor: Color(0xfff29a94),
                  maxRadius: 24,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        schoolName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(timeAgo),
                    ],
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  size: 32,
                  color: Color(0xff696b9e),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ClipRRect(
                child: Image.network(
                  image,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(postBody),
            ),
          ],
        ),
      ),
    );
  }
}
