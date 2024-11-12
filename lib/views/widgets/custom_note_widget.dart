import 'package:flutter/material.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "Flutter Tips",
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
            subtitle: const Text(
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              "lskdjfds sdlkfjds fsdlf sadf as;ldfkj asdf sadlfj saf saldfj sd;f asdf jasdlf asdfj asfd sadf aosdf sadfjoiaslfjas dsd flkasjdf adsa lfjdsaf dsalf jdslaf sd"
              "lskdjfds sdlkfjds fsdlf sadf as;ldfkj asdf sadlfj saf saldfj sd;f asdf jasdlf asdfj asfd sadf aosdf sadfjoiaslfjas dsd flkasjdf adsa lfjdsaf dsalf jdslaf sd",
              style: TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 32,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 35.0),
            child: Text(
              '2024-1-15',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
