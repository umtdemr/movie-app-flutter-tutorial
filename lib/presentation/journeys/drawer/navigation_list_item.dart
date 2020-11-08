import 'package:flutter/material.dart';

class NavigationListItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const NavigationListItem({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              blurRadius: 4,
            ),
          ],
        ),
        child: ListTile(
          title: Text(title, style: Theme.of(context).textTheme.subtitle1),
        ),
      ),
    );
  }
}
