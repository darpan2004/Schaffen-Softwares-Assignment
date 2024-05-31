import 'package:flutter/material.dart';

class ScreenBAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: <Widget>[
        SizedBox(height: height * 0.04),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFC32422),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/left_arrow.png',
            width: width * 0.066,
            height: height * 0.03,
          ),
        ),
        SizedBox(width: width * 0.0277),
        ClipOval(
          child: Image.asset('assets/images/weeknd_img.png',
              width: width * 0.1188, // Set the width and height to be equal
              height: height * 0.0525,
              fit: BoxFit.cover
              // Set the width and height to be equal
              ),
        ),
        SizedBox(width: width * 0.022),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The Weeknd',
              style: TextStyle(
                color: Colors.white,
                fontSize: width * 0.055,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Communuity · +11k Members',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.033,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: Wrap(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 2 -
                                width * 0.154),
                        child: Container(
                          width: width * 0.244,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Color(0xFF494949),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/invite.png',
                            width: 24, height: 24),
                        title: Text(
                          'Invite',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.044),
                        ),
                        onTap: () => {},
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/add_member.png',
                            width: 24, height: 24),
                        title: Text(
                          'Add member',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.044),
                        ),
                        onTap: () => {},
                      ),
                      ListTile(
                        leading: Image.asset('assets/images/add_group.png',
                            width: 24, height: 24),
                        title: Text(
                          'Add Group',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.044),
                        ),
                        onTap: () => {},
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: Image.asset(
            'assets/images/three_dots.png',
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
