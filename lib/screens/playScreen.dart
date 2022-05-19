import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

abstract class playScreen extends StatefulWidget {
  String Apikey = 'a7c5b8a26c4da2662843534f642ca25d';
}

class _playScreenState extends State<playScreen> {

 
  late YoutubePlayerController _controller;
  final String youtubeURL;

  _playScreenState(this.youtubeURL);

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayerController.convertUrlToId(youtubeURL)!,
      params: const YoutubePlayerParams(
        loop: true,
        color: 'transparent',
        desktopMode: true,
        strictRelatedVideos: true,
        showControls: true,
        showFullscreenButton: true,
        showVideoAnnotations: !kIsWeb,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return SizedBox(
        height: kIsWeb ? ScreenSize.height / 1.13 : ScreenSize.height,
        width: ScreenSize.width,
        child: YoutubePlayerControllerProvider(
          controller: _controller,
          child: YoutubePlayerIFrame(),
        ));
  }
}
