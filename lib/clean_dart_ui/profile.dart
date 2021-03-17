import 'package:flutter/material.dart';
import 'package:reso/clean_dart_ui/widgets/profiletags.dart';
import 'package:reso/clean_dart_ui/widgets/spacing.dart';

final List<String> bagde = [
  "Favorite",
  "Amazing",
  "The Best Good One",
  "Faboulus"
];

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          Column(
            children: [
              SpaceH10(),
              _buildCircleAvatar(context),
              SpaceH10(),
              Text(
                "John Doe",
                style: Theme.of(context).textTheme.headline2,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SpaceH10(),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              SpaceH10(),
              ProfileTags(profileTagsList: bagde + bagde)
            ],
          ),
        ],
      ),
    );
  }

  Center _buildCircleAvatar(BuildContext context) {
    final double halfScreenWidth = MediaQuery.of(context).size.width / 4;
    return Center(
      child: CircleAvatar(
        child: Icon(
          Icons.person,
          size: halfScreenWidth,
        ),
        radius: halfScreenWidth,
      ),
    );
  }
}
