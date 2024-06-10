import 'package:flutter/material.dart';
import 'package:schaffen_softwares_assignment/screen_b_appbar.dart';

class ScreenA extends StatefulWidget {
  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  bool _isSearching = false;
  List<bool> _isFollowingList = List<bool>.filled(10, false);
  double opacity = 0;
  bool _lights = false;
  bool _isFollowing = false; // Add this line
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            setState(() {
              opacity =
                  (scrollNotification.metrics.pixels / 200).clamp(0.0, 1.0);
            });
          }
          return true;
        },
        child: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFFC32422),
                expandedHeight: height * 0.25 + height * 0.0975,
                pinned: true,
                title: Opacity(
                  opacity: opacity,
                  child: ScreenBAppbar(),
                ),
                flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                  children: [
                    ClipRect(
                      child: Align(
                          alignment: Alignment.topCenter,
                          heightFactor: 0.8,
                          // adjust this value as needed
                          child: Stack(
                            children: [
                              Image.asset(
                                height: height * 0.31,
                                'assets/images/weeknd_img.png',
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: height * 0.025, // adjust as needed
                                left: width * 0.055, // adjust as needed
                                child: Image.asset(
                                  'assets/images/leftt.png',
                                  height: height * 0.03,
                                  width: width * 0.066,
                                ), // replace with your desired icon
                                // adjust as needed
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: height * 0.0975,
                      color: Color(0xFFC32422),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.055,
                            right: width * 0.055,
                            top: height * 0.018,
                            bottom: height * 0.018),
                        child: Row(children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'The Weeknd',
                                  style: TextStyle(
                                    fontSize: width * 0.061,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Community • +11K Members',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.029,
                                  ),
                                )
                              ]),
                          Spacer(),
                          Image.asset(
                            'assets/images/share_icon.png',
                            fit: BoxFit.cover,
                            width: width * 0.088,
                            height: height * 0.04,
                          ),
                        ]),
                      ),
                    )
                  ],
                )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.055,
                      right: width * 0.055,
                      top: height * 0.02,
                      bottom: height * 0.02),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.044,
                            color: Colors.black, // default text color
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...',
                            ),
                            TextSpan(
                              text: 'Read more',
                              style: TextStyle(
                                  color: Color(
                                      0xFFEF456F)), // color for "Read more"
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xFFEF456F), width: 1),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.00277 * 4,
                                    right: width * 0.00277 * 4,
                                    top: 2,
                                    bottom: 2),
                                child: Text(
                                  'Outdoor',
                                  style: TextStyle(
                                      fontSize: width * 0.033,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFEF456F)),
                                )),
                          ),
                          SizedBox(width: width * 0.022),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xFFEF456F), width: 1),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.00277 * 4,
                                    right: width * 0.00277 * 4,
                                    top: 2,
                                    bottom: 2),
                                child: Text(
                                  'Outdoor',
                                  style: TextStyle(
                                      fontSize: width * 0.033,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFEF456F)),
                                )),
                          ),
                          SizedBox(width: width * 0.022),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xFFEF456F), width: 1),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.00277 * 4,
                                    right: width * 0.00277 * 4,
                                    top: 2,
                                    bottom: 2),
                                child: Text(
                                  'Outdoor',
                                  style: TextStyle(
                                      fontSize: width * 0.033,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFEF456F)),
                                )),
                          ),
                          SizedBox(width: width * 0.022),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xFFEF456F), width: 1),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.00277 * 4,
                                    right: width * 0.00277 * 4,
                                    top: 2,
                                    bottom: 2),
                                child: Text(
                                  'Outdoor',
                                  style: TextStyle(
                                      fontSize: width * 0.033,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFEF456F)),
                                )),
                          ),
                          SizedBox(width: width * 0.022),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xFFEF456F), width: 1),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.00277 * 4,
                                    right: width * 0.00277 * 4,
                                    top: 2,
                                    bottom: 2),
                                child: Text(
                                  '  +1',
                                  style: TextStyle(
                                      fontSize: width * 0.033,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFEF456F)),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.025),
                      Row(children: [
                        Text(
                          'Media, docs and links',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.044),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 24),
                      ]),
                      SizedBox(height: height * 0.00625),
                      Container(
                        height: height * 0.12125, // Set a finite height
                        child: ListView.builder(
                          scrollDirection: Axis
                              .horizontal, // Set scroll direction to horizontal
                          itemCount:
                              4, // replace with the actual number of items
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.all(3.0),
                                width: width * 0.25, // adjust width as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // adjust border radius as needed
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      5.0), // adjust the border radius as needed
                                  child: Image.asset(
                                    'assets/images/weeknd_img.png',
                                    fit: BoxFit.cover,
                                  ),
                                ));
                          },
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Row(children: [
                        Text(
                          'Mute notifications',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.044),
                        ),
                        Spacer(),
                        Switch(
                          value: _lights,
                          onChanged: (bool value) {
                            setState(() {
                              _lights = value;
                            });
                          },
                          activeColor: Color(
                              0xFFC32422), // Change the color when the switch is active
                        ),
                      ]),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/clean_chat.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: width * 0.022,
                          ),
                          Text(
                            'Clean chat',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.044),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/encryption.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: width * 0.022,
                          ),
                          Text(
                            'Encryption',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.044),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/exit_community.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: width * 0.022,
                          ),
                          Text(
                            'Exit community',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.044),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/report.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: width * 0.022,
                          ),
                          Text(
                            'Report',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.044),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: _isSearching
                            ? [
                                Expanded(
                                  child: Container(
                                    height: 32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          40.0), // Set the border radius
                                      color: Color(0xFFE9E9EB),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5, left: 5),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: '  Search member',
                                          border: InputBorder
                                              .none, // Remove the default underline border
                                          contentPadding: EdgeInsets.all(
                                              5.0), // Add some padding
                                        ),
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isSearching = false;
                                    });
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.038),
                                  ),
                                ),
                              ]
                            : [
                                Text(
                                  'Members',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.044),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isSearching = true;
                                    });
                                  },
                                  icon: Image.asset(
                                    'assets/images/search.png',
                                    height: height * 0.03,
                                    width: width * 0.066,
                                  ),
                                ),
                              ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount:
                            10, // replace with the actual number of items
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Add this line
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Change this line
                            children: [
                              Image.asset(
                                'assets/images/profile.png',
                                height: height * 0.06,
                                width: width * 0.116,
                              ),
                              SizedBox(
                                width: width * 0.033,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center, // Add this line
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Change this line
                                children: [
                                  Text(
                                    'Yashika',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.038),
                                  ),
                                  SizedBox(
                                    height: height * 0.00355,
                                  ),
                                  Text(
                                    '29, India',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.033,
                                        color: Color(0xFF494949)),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  )
                                ],
                              ),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isFollowingList[index] =
                                        !_isFollowingList[index];
                                  });
                                },
                                child: Padding(
                                  padding: _isFollowingList[index]
                                      ? EdgeInsets.only()
                                      : EdgeInsets.only(
                                          left: width * 0.044,
                                          right: width * 0.044,
                                        ),
                                  child: Text(
                                    _isFollowingList[index]
                                        ? 'Following'
                                        : 'Add',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _isFollowingList[index]
                                      ? Color(0xFFAAABAB)
                                      : Color(
                                          0xFFEF456F), // Change the background color
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
