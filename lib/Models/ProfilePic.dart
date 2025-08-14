import 'package:flutter/material.dart';

class Profilepic extends StatelessWidget {
  final String username;
  final String imageUrl;
  const Profilepic({super.key, required this.username, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 85,
          height: 70,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -20,
                left: -5,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: const Color.fromARGB(255, 19, 201, 92),
                  child: CircleAvatar(
                    radius: 42,
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    child: ClipOval(
                      child: Image.network(
                        imageUrl,
                        // 'https://images.pexels.com/photos/14653174/pexels-photo-14653174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        width: 76,
                        height: 76,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // * Username in the middle
        SizedBox(height: 8), // Space between profile and text
        SizedBox(
          width: 85,
          child: Text(
            username,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
