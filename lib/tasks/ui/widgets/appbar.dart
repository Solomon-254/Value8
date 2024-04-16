import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  const CommonAppBar({
    
    super.key, required this.title,
  });

  @override
  _CommonAppBarState createState() => _CommonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 16, top: 25),
            child: Text(
              '${widget.title}!',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                  //access user data
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/value8.jpg'),
                      radius: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// Navigate to notifications screen with custom transition
                    // Navigator.of(context).push(
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation, secondaryAnimation) =>
                    //         const NotificationPageScreen(), // Replace NotificationScreen with your actual notifications screen
                    //     transitionsBuilder:
                    //         (context, animation, secondaryAnimation, child) {
                    //       const begin = Offset(1.0, 0.0);
                    //       const end = Offset.zero;
                    //       const curve = Curves.ease;
                    //       var tween = Tween(begin: begin, end: end)
                    //           .chain(CurveTween(curve: curve));
                    //       var offsetAnimation = animation.drive(tween);

                    //       return SlideTransition(
                    //         position: offsetAnimation,
                    //         child: child,
                    //       );
                    //     },
                    //   ),
                    // );
