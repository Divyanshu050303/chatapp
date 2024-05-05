import 'package:chatapp/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
        padding: const EdgeInsets.only(top: 35, left: 10),
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height * 0.15,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            color: constant.primary),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                context.pop("/home");
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/image/ch.jpg",
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Divyanshu Singh",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Active 2 minute ago",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: 10, left: mediaQueryData.size.width * 0.1),
              child: const Icon(
                Icons.video_camera_front_rounded,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
