import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:video_player_360/video_player_360.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Galeria extends StatefulWidget {
  @override
  _GaleriaState createState() => _GaleriaState();
}

class _GaleriaState extends State<Galeria> {
  late bool loading;
  late List<String> ids;


  @override
  void initState() {
    loading = true;
    ids = [];
    _loadImageIds();
    super.initState();
  }

  void _loadImageIds() async {
    final response = await http.get(Uri.parse('https:/picsum.photos/v2/list'));
    final json = jsonDecode(response.body);
    List<String> _ids = [];
    for (var image in json) {
      _ids.add(image['id']);
    }
    setState(() {
      loading=false;
      ids= _ids;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(loading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(appBar: AppBar(backgroundColor: Colors.purple,),
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      ),
      itemBuilder: (Context, index) => GestureDetector(
        /*return Image.network('https:/picsum.photos/id${ids[index]}/300/300',
      );*/
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ImagePage(ids[index]),
            ),
          );
        },
        child: Image.network('https:/picsum.photos/${ids[index]}',
        ),
      ),
      itemCount: ids.length,
    )
    );
      GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      ),
      itemBuilder: (Context, index) => GestureDetector(
      /*return Image.network('https:/picsum.photos/id${ids[index]}/300/300',
      );*/
      onTap: (){
        Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ImagePage(ids[index]),
      ),
    );
  },
  child: Image.network('https:/picsum.photos/${ids[index]}',
    ),
  ),
  itemCount: ids.length,
    );
  }
}


/*class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      ),
      body: Center(
        child: IconButton(
          icon:Icon(Icons.agriculture_rounded,size: 30,color: Colors.purple,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),

      ),

    );
  }
}*/

/*
child: IconButton(
icon: Icon(Icons.ondemand_video_outlined,size: 30,color: Colors.cyan,),
),*/
class ImagePage extends  StatelessWidget{
  final String id;
  ImagePage(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.black,
    ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network('https:/picsum.photos/${id}',
        ),
      ),
    );
  }

}