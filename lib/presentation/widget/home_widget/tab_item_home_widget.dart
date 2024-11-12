import 'package:flutter/material.dart';

class TabItemHomeWidget extends StatelessWidget {
  const TabItemHomeWidget({
    super.key,
    required this.title,
    required this.count,
  });
  final String title;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
          count > 0
              ? Container(
                  margin: const EdgeInsetsDirectional.only(start: 5),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200, shape: BoxShape.circle),
                  child: Text(
                    count.toString(),
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                    ),
                  ),
                )
              : const SizedBox(
                  width: 0,
                  height: 0,
                )
        ],
      ),
    );
  }
}
