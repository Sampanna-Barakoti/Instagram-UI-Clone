import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';

class Searchscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var images = [
    {
      'img':
          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
    },
    {
      'img':
          'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
    },
    {
      'img':
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    },
    {
      'img':
          'https://st.depositphotos.com/2001755/3622/i/450/depositphotos_36220949-stock-photo-beautiful-landscape.jpg',
    },
    {
      'img':
          'https://www.befunky.com/images/prismic/1f427434-7ca0-46b2-b5d1-7d31843859b6_funky-focus-red-flower-field-after.jpeg?auto=avif,webp&format=jpg&width=863',
    },
    {
      'img':
          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
    },
    {
      'img':
          'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
    },
    {
      'img':
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    },
    {
      'img':
          'https://st.depositphotos.com/2001755/3622/i/450/depositphotos_36220949-stock-photo-beautiful-landscape.jpg',
    },
    {
      'img':
          'https://www.befunky.com/images/prismic/1f427434-7ca0-46b2-b5d1-7d31843859b6_funky-focus-red-flower-field-after.jpeg?auto=avif,webp&format=jpg&width=863',
    },
    {
      'img':
          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
    },
    {
      'img':
          'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
    },
    {
      'img':
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    },
    {
      'img':
          'https://st.depositphotos.com/2001755/3622/i/450/depositphotos_36220949-stock-photo-beautiful-landscape.jpg',
    },
    {
      'img':
          'https://www.befunky.com/images/prismic/1f427434-7ca0-46b2-b5d1-7d31843859b6_funky-focus-red-flower-field-after.jpeg?auto=avif,webp&format=jpg&width=863',
    },
    {
      'img':
          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
    },
    {
      'img':
          'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg',
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
    },
    {
      'img':
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    },
    {
      'img':
          'https://st.depositphotos.com/2001755/3622/i/450/depositphotos_36220949-stock-photo-beautiful-landscape.jpg',
    },
    {
      'img':
          'https://www.befunky.com/images/prismic/1f427434-7ca0-46b2-b5d1-7d31843859b6_funky-focus-red-flower-field-after.jpeg?auto=avif,webp&format=jpg&width=863',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 38,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              SizedBox(width: 14),
              Uihelper.customImage(imageURL: "Live.png"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 32,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                height: 32,
                width: 66,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Posts",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                height: 32,
                width: 66,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Shop",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                height: 32,
                width: 66,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Reels",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                height: 32,
                width: 66,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Others",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Image.network(
                    images[index]['img']!,
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
