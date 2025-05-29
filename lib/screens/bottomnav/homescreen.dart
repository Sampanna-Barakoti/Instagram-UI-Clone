import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  // const Homescreen({super.key});
  var arrcontent = [
    {
      'img':
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
      'name': 'Your story',
    },
    {
      'img':
          'https://media.istockphoto.com/id/1448167415/photo/smiling-indian-businessman-in-suit-and-glasses-with-laptop-near-office-building.jpg?s=612x612&w=0&k=20&c=vuUgcc-IlZewhnRm7yNOIuEfAvTnyJdMsPbnvkAnZjc=',
      'name': 'Yugesh',
    },
    {
      'img':
          'https://i.pinimg.com/736x/0b/db/c7/0bdbc7e1f21b705d25b7f81873810086.jpg',
      'name': 'Ninisha',
    },
    {
      'img':
          'https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg',
      'name': 'Ether',
    },

    {
      'img':
          'https://media.istockphoto.com/id/1448167415/photo/smiling-indian-businessman-in-suit-and-glasses-with-laptop-near-office-building.jpg?s=612x612&w=0&k=20&c=vuUgcc-IlZewhnRm7yNOIuEfAvTnyJdMsPbnvkAnZjc=',
      'name': 'Yugesh',
    },
    {
      'img':
          'https://i.pinimg.com/736x/0b/db/c7/0bdbc7e1f21b705d25b7f81873810086.jpg',
      'name': 'Ninisha',
    },
    {
      'img':
          'https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg',
      'name': 'Ether',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: Uihelper.customImage(imageURL: "camera.png"),
        title: Uihelper.customImage(imageURL: "inst.png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Uihelper.customImage(imageURL: "IGTV.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Uihelper.customImage(imageURL: "msg.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 110,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ListView.builder(
                itemCount: arrcontent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            arrcontent[index]['img']!,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          arrcontent[index]['name']!,
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          // Container(
          //   height: 74,
          //   width: double.infinity,
          //   color: Colors.black12,
          //   child: ListTile(
          //     contentPadding: EdgeInsets.symmetric(horizontal: 16),
          //     leading: Uihelper.customImage(imageURL: "Oval.png"),
          //     title: Text(
          //       "sampanna B.",
          //       style: TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.w600,
          //         color: Colors.white,
          //       ),
          //     ),
          //     subtitle: Text(
          //       "Chitwan, Nepal",
          //       style: TextStyle(
          //         fontSize: 12,
          //         color: const Color.fromARGB(255, 101, 101, 101),
          //       ),
          //     ),
          //     trailing: Uihelper.customImage(imageURL: "trail.png"),
          //   ),
          // ),
          // Container(
          //   clipBehavior: Clip.antiAlias,
          //   height: 375,
          //   width: double.infinity,
          //   decoration: BoxDecoration(),
          //   child: Image.network(
          //     "https://st2.depositphotos.com/1591133/8812/i/450/depositphotos_88120646-stock-photo-idyllic-summer-landscape-with-clear.jpg",
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // SizedBox(height: 10),
          // Row(
          //   children: [
          //     Uihelper.customImage(imageURL: "like.png"),
          //     Uihelper.customImage(imageURL: "comment.png"),
          //     Uihelper.customImage(imageURL: "share.png"),
          //   ],
          // ),
        ],
      ),
    );
  }
}
