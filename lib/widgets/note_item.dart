import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 29,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 16),
              child: Text(
                "Build your career with Mostafa Ragab",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  size: 22,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "May22,2025",
              style: TextStyle(
                  color: Colors.black.withValues(alpha: .4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
