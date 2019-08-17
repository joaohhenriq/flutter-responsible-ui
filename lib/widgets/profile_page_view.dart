import 'package:flutter/material.dart';
import 'package:flutter_responsible_ui/model/profile.dart';

class ProfilePageView extends StatefulWidget {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  _ProfilePageViewState createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget._pageController,
      pageSnapping: true,
      onPageChanged: null,
      scrollDirection: Axis.horizontal,
      itemCount: profiles.length,
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              profiles[index].imagePath,
              fit: BoxFit.cover,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 25,
              right: 25,
              child: ProfileDetails(index: index,),
            ),
          ],
        );
      },
    );
  }
}


class ProfileDetails extends StatelessWidget {

  final int index;

  ProfileDetails({this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        itemColumn(profiles[index].followers.toString(), "Followers", CrossAxisAlignment.start),
        itemColumn(profiles[index].posts.toString(), "Posts", CrossAxisAlignment.center),
        itemColumn(profiles[index].following.toString(), "Following", CrossAxisAlignment.end),
      ],
    );
  }

  Widget itemColumn(String firstText, String secondText, CrossAxisAlignment crossAxisAlignment) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          firstText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        Text(
          secondText,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
