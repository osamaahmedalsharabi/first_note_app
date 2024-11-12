import 'package:flutter/material.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      height: MediaQuery.sizeOf(context).height * 0.21,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Flutter tips",
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width * 0.65,
                      maxHeight: MediaQuery.sizeOf(context).height * 0.15,
                    ),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      "dkslfjsdlfkj sdjflksda flasdf saldkf asld d skjdf sldfj dslfkj s dkslfjsdlfkj sdjflksda flasdf saldkf asld d skjdf sldfj dslfkj sd",
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(0.5)),
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 32,
                    color: Colors.black,
                  ))
            ],
          ),
          const Spacer(),
          Text(
            "2024-1-15",
            style:
                TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}
