import 'package:flutter/material.dart';
import 'package:sopo/btn/actionbtn.dart';
import 'package:sopo/btn/story.dart';
import 'package:sopo/btn/feed.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Color bgBlack = Color(0xFF1a1a1a);
  Color mainBlack = Color(0xFF262626);
  Color fbBlue = Color(0xFF2D88FF);
  Color mainGrey = Color(0xFF505050);

  List<String> avatarUrl = [
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
    "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  ];
  List<String> storyUrl = [
    "https://images.unsplash.com/photo-1600055882386-5d18b02a0d51?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=621&q=80",
    "https://images.unsplash.com/photo-1600174297956-c6d4d9998f14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1600008646149-eb8835bd979d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80",
    "https://images.unsplash.com/photo-1502920313556-c0bbbcd00403?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //First of all we need to creat the post editor
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: mainBlack,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage('img/pas.png'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 25.0),
                              hintText: "Post something...",
                              filled: true,
                              fillColor: mainGrey,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: mainGrey,
                    thickness: 1.5,
                  ),
                  //Now we will create a Row of three button
                  Row(
                    children: [
                      actionButton(Icons.live_tv, "Live", Color(0xFFF23E5C)),
                      actionButton(Icons.image, "Picture", Color(0xFF58C472)),
                      actionButton(
                          Icons.insert_emoticon, "Activity", Color(0xFFF8C03E)),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 160.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyTile(('img/pas.png'), storyUrl[0], "Al Faisal Darmawan"),
                storyTile(avatarUrl[1], storyUrl[1], "Muhammad Irgi"),
                storyTile(avatarUrl[2], storyUrl[2], "Muhammad Luthfi"),
              ],
            ),
          ),
          Container(
            height: 520.0,
            width: double.infinity,
            child: Scrollbar(
              thumbVisibility: true,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
            height: 10.0,
          ),
          feedBox(('img/pas.png'), "Al Faisal Darmawan", "6 min",
              "numpang Kopi Paste", ""),
              SizedBox(
            height: 10.0,
          ),
          feedBox(('img/pas.png'), "Al Faisal Darmawan", "6 min",
              "numpang Kopi Paste", ""),
              SizedBox(
            height: 10.0,
          ),
          feedBox(('img/pas.png'), "Al Faisal Darmawan", "6 min",
              "numpang Kopi Paste", ""),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
