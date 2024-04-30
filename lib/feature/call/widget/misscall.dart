import 'package:chatapp/constant/constant.dart';
import 'package:flutter/material.dart';

class MissedCall extends StatelessWidget {
  const MissedCall({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.09,
      margin: const EdgeInsets.only(left: 20, right: 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/image/virat.jpg"),
            radius: 26,
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: mediaQueryData.size.width * 0.65,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Divyanshu",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call_missed_outgoing,
                      color: Colors.red,
                    ),
                    Text(
                      "Just now",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      maxLines: 1,
                    ),
                  ],
                )
              ],
            ),
          ),
          Icon(Icons.call_outlined, color: constant.primary),
        ],
      ),
    );
  }
}
