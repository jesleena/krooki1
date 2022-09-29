import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki1/midcontent.dart';
import 'package:krooki1/tabbarexp.dart';
import 'package:video_player/video_player.dart';



class Photos extends StatefulWidget {
  static const String id ='photos';

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  double get randHeight => Random().nextInt(100).toDouble();
  int pageindex=0;
  final PageController controller = PageController(initialPage: 0);
  late VideoPlayerController _controller;
  bool _flag1 = true;
  bool _flag2 = true;
  bool _flag3 = true;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(' https://jsoncompare.org/LearningContainer/SampleFiles/Video/MP4/Sample-MP4-Video-File-Download.mp4')
   // _controller = VideoPlayerController.network(' https://www.vecteezy.com/video/5018340-3d-render-animation-scene-living-room-interior-design-scandinavian-boho-style')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });

  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        extendBodyBehindAppBar: true,
      appBar: AppBar(
      leading:
      const Icon(
      Icons.arrow_back,
      color: Colors.white,
    ),
    title: const Text('property details'),
    actions: const [ Icon(
    Icons.more_vert,
    color: Colors.white,
    ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    ),

    body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
    children:[
          SizedBox(
          width: 411,
          height: 200,
          child:
    PageView(
      controller: controller,
      onPageChanged: (int index)
      { setState(()
            {pageindex=index;
            });
      },

      children:  <Widget>[
        Image.asset('images/photos/bg2.png',fit: BoxFit.cover ),

        SizedBox(
          width: 400,
          height: 200,
         child: GestureDetector(
            onTap: () {
              setState((){
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              }); },
            child:AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ), ), ),

        Image.asset('images/photos/map.png', fit: BoxFit.cover),
      ],),),




     Container(
       width: 480,
       height: 100,
       decoration: BoxDecoration(
         color: Colors.orange[50],
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            ElevatedButton(
              onPressed: () {
                controller.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.ease);
                _flag1 = !_flag1;
                _flag2 = true;
                _flag3 = true;
                },
              style:ElevatedButton.styleFrom(
                  //primary: Colors.white,
                  primary: _flag1 ? Colors.white : Colors.orange,
                  fixedSize: const Size(110, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                children: <Widget>[
                  Image.asset('images/photos/photos.png',height: 50,width: 30,),
                  Text(" photos",style: Theme.of(context).textTheme.bodyText2),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.ease);
                _flag1 = true;
                _flag2 = !_flag2;
                _flag3 = true;
              },
              style:ElevatedButton.styleFrom(
               primary: _flag2 ? Colors.white : Colors.orange,
                  fixedSize: const Size(110, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                children: <Widget>[
                  Image.asset('images/photos/video.png'),
                  Text(" videos",
                      style: Theme.of(context).textTheme.bodyText2
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.ease);
                _flag1 = true;
                _flag2 = true;
                _flag3 = !_flag3;
                },
              style:ElevatedButton.styleFrom(
                  //primary: Colors.white,
                  primary: _flag3 ? Colors.white : Colors.orange,
                  fixedSize: const Size(110, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                children: <Widget>[
                  Image.asset('images/photos/loc.png'),
                  Text(" mapview",style: Theme.of(context).textTheme.bodyText2),
                ],), ), ],),),

      MidcontentWidget(),

      Container(
        width: 480,
        height: 40,

        decoration: const BoxDecoration(
         color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: .15),
          ],),
        child:

        const TabBar(

            labelColor: Colors.orange, //<-- selected text color
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.orange,//Change background color from here

            tabs: [

                  Tab(child: Text('basic info', style: TextStyle(color: Colors.black))),
                  Tab(child: Text('more info', style: TextStyle(color: Colors.black))),
                  Tab(child: Text('amenties', style: TextStyle(color: Colors.black))),
                  Tab(child: Text('activities', style: TextStyle(color: Colors.black)))
                ],
              ),
          ),
      TabbarexpWidget(),

        ],),),);
  }
}
