import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:video_player/video_player.dart';

class HighlightDetail extends StatefulWidget {
  final Map highlight;

  const HighlightDetail({
    Key? key,
    required this.highlight,
  }) : super(key: key);

  @override
  State<HighlightDetail> createState() => _HighlightDetailState();
}

class _HighlightDetailState extends State<HighlightDetail> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.highlight['video'],
    )..initialize().then((_) {
        // Memastikan Inisialisasi Frame Pertama Dari Video
        setState(() {});
      });
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Highlight',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            _controller.setVolume(0);
            _controller.play();
            return ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(12),
              children: <Widget>[
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    constraints: BoxConstraints(
                        minWidth: 200,
                        maxWidth: MediaQuery.of(context).size.width * 0.90),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(widget.highlight['title'],
                            overflow: TextOverflow.ellipsis,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                            padding: const EdgeInsetsDirectional.only(top: 10),
                            child: _controller.value.isInitialized
                                ? AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller),
                                  )
                                : Container()),
                        Container(
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 200),
                          padding: const EdgeInsetsDirectional.only(top: 10),
                          child: Text(
                            widget.highlight['desc'],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
