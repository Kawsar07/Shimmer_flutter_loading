// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:shimmer/shimmer.dart';
//
// class StaggeredGridViewExample extends StatefulWidget {
//   @override
//   _StaggeredGridViewExampleState createState() => _StaggeredGridViewExampleState();
// }
//
// class _StaggeredGridViewExampleState extends State<StaggeredGridViewExample> {
//   List<String> _images = [
//     'https://picsum.photos/200/300',
//     'https://picsum.photos/300/300',
//     'https://picsum.photos/400/300',
//     'https://picsum.photos/200/400',
//     'https://picsum.photos/300/200',
//     'https://picsum.photos/400/400',
//     'https://picsum.photos/200/500',
//     'https://picsum.photos/500/500',
//     'https://picsum.photos/600/400',
//     'https://picsum.photos/400/600',
//     'https://picsum.photos/500/300',
//     'https://picsum.photos/300/500',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Staggered Grid View Example'),
//       ),
//       body: Shimmer(child:  StaggeredGridView.countBuilder(
//         crossAxisCount: 4,
//         itemCount: _images.length,
//         itemBuilder: (BuildContext context, int index) => Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.network(
//               _images[index],
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 3 : 2),
//         mainAxisSpacing: 8.0,
//         crossAxisSpacing: 8.0,
//       ),
//
//           gradient: gradient)
//
//
//     );
//   }
// }
// void main (){
//   runApp(MaterialApp(
//     home: StaggeredGridViewExample(),
//   ));
// }
//
//


import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Nature> natureList = [
    Nature("Sea View", "Sea view resort",
        "https://images.unsplash.com/photo-1589779677460-a15b5b5790ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"),
    Nature("Awesome Nature", "Orange color fish with attractive look & fill",
        "https://images.unsplash.com/photo-1520301255226-bf5f144451c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80"),
    Nature("Yellow Fish", "Yellow Fish in blue water",
        "https://images.unsplash.com/photo-1504472478235-9bc48ba4d60f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"),
    Nature("Orange Fish", "Orange Fish in blue water",
        "https://images.unsplash.com/photo-1535591273668-578e31182c4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Nature 1", "Nice tree in the nature",
        "https://images.unsplash.com/photo-1624964562918-0b8cf87deee6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Sea Nature", "Nice beach nature",
        "https://images.unsplash.com/photo-1597499216184-b56bf75f84c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Awesome Beach", "Beach with trees",
        "https://images.unsplash.com/photo-1509057095372-215f8cc53d1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80"),
    Nature("Blue Nature", "Beach with blue water",
        "https://images.unsplash.com/photo-1558102822-da570eb113ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    Nature("Sea Nature 2", "Awesome beach with trees",
        "https://images.unsplash.com/photo-1545579133-99bb5ab189bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
  ];

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        isLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Shimmer Loading"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: natureList.map((Nature nature) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            height: 70.0,
            child: isLoaded ? getListItem(nature) : getShimmerLoading(),
          );
        }).toList(),
      ),
    );
  }

  Row getListItem(Nature nature) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image.network(
          nature.url,
          height: 100,
          width: 100,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 18.0,
                child: Text(nature.name),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 14.0,
                child: Text(nature.description),
              ),
            ],
          ),
        )
      ],
    );
  }

  Shimmer getShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 18.0,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 14.0,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class Nature {
  final String name;

  final String description;

  final String url;

  Nature(
      this.name,
      this.description,
      this.url,
      );
}