import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBarWidget({
    super.key,
    required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.3,
            child: FittedBox(
                child: Text(
              title,
              style: const TextStyle(fontSize: 1500),
            )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon:  Icon(
                icon,
                size: 32,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
