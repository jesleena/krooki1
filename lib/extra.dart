import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki1/midcontent.dart';
import 'package:video_player/video_player.dart';
//import 'package:chewie/chewie.dart';
class Photos extends StatefulWidget {
  static const String id ='photos';

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  double get randHeight => Random().nextInt(100).toDouble();
  int pageindex=0;
  final PageController controller = PageController(initialPage: 0);
  /* List<Widget> indicatorSetup(BuildContext context,int pageNumber) {
    List<Widget> indicatorElements = [];
    for (int i = 0; i < 3; i++) {
      if (pageNumber == i) {
        indicatorElements.add(indicatorElement(context, true));
      }
      else
        indicatorElements.add(indicatorElement(context, false));
    }
    return indicatorElements;
  }
  Widget indicatorElement(BuildContext context, bool isActive)
  {
    return AnimatedContainer(
      margin: EdgeInsets.all(6),
      width:20,
      height: 20,
      decoration: new BoxDecoration(
        color: isActive
            ? Theme.of(context).primaryColorDark
            :Theme.of(context).primaryColorLight,
        shape: BoxShape.circle));

  }*/
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://jsoncompare.org/LearningContainer/SampleFiles/Video/MP4/Sample-MP4-Video-File-Download.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });


    //  final chewieController = ChewieController(
    // videoPlayerController: _controller,
    //  autoPlay: true,
    // looping: true,
    //);

    // final playerWidget = Chewie(
    //   controller: chewieController,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: Colors.orange[50],
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
                /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                /// Use [Axis.vertical] to scroll vertically.
                controller: controller,
                onPageChanged: (int index)
                {
                  setState(()
                  {
                    pageindex=index;
                  });
                },
                children:  <Widget>[

                  Image.asset('images/photos/bg2.png',
                    fit: BoxFit.cover,
                  ),
                  //  ),

                  Container(
                    width: 400,
                    height: 200,
                    child: GestureDetector(
                      onTap: () {
                        setState((){
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      child:AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  ),

                  Image.asset('images/photos/map.png',
                      fit: BoxFit.cover),
                ],
              ),),





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
                      controller.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.ease);
                    },
                    style:ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: const Size(130, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Row(
                      children: <Widget>[

                        Image.asset('images/photos/photos.png',height: 50,width: 30,),
                        Text("photos",style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
                    },
                    style:ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: const Size(130, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Row(
                      children: <Widget>[

                        Image.asset('images/photos/video.png'),
                        Text("videos",style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      controller.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
                    },style:

                  ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.green;
                        return Colors.orange; // Use the component's default.
                      },
                    ),
                  ),

                    //style:ElevatedButton.styleFrom(
                      //  primary: Colors.white,
                       // fixedSize: const Size(130, 30),
                       // shape: RoundedRectangleBorder(
                       //     borderRadius: BorderRadius.circular(50))),
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/photos/location.png'),
                        Text("mapview",style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ),

                ],),
            ),


            MidcontentWidget(),



            Container(
              width: 480,
              height: 40,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),
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
            // ),


            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),

                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset she"),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
                    child:  Text("Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummyLorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem IVof the printing and typesetting industry. Lorem I text of the printing and typesetting industry. Lorem Iof the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset she"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
                    child: Text("Lorem Ipsum is simply dummy "),),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
                    child:   Text("Lorem Ipsum is simply dummy "),
                  ),
                ],
              ),
            ),],),),);
  }
}
