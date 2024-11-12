
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
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
            child: const FittedBox(
                child: Text(
              "Note App",
              style: TextStyle(fontSize: 1500),
            )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: const Icon(
                Icons.search,
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