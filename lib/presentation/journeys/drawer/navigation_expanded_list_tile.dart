import 'package:flutter/material.dart';
import 'package:movieapp/presentation/journeys/drawer/navigation_sub_list_item.dart';

class NavigationExpandedListItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final List<String> children;

  const NavigationExpandedListItem({
    Key key,
    @required this.title,
    @required this.onTap,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            blurRadius: 4,
          ),
        ],
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        children: [
          for (int i = 0; i < children.length; i++)
            NavigationSubListItem(
              onTap: () => onTap(i),
              title: children[i],
            ),
        ],
      ),
    );
  }
}
