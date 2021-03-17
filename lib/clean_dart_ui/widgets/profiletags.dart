import 'package:flutter/material.dart';

class ProfileTags extends StatelessWidget {
  final List<String> profileTagsList;

  const ProfileTags({Key key, @required this.profileTagsList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 5,
        runSpacing: 10,
        children: [
          for (var tag in profileTagsList) Chip(label: Text(tag)),
        ],
      ),
    );
  }

  Iterable<Chip> textToChip(List<String> tags) sync* {
    for (var tag in tags) {
      yield Chip(label: Text(tag));
    }
  }
}
