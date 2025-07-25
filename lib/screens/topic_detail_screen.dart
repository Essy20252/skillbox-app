import 'package:flutter/foundation.dart'; // for kIsWeb
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Only import dart:html and dart:ui for web builds
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

class TopicDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String videoUrl;

  const TopicDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? '';

    Widget videoWidget;

    if (kIsWeb) {
      final viewId = 'youtube-video-$videoId';

      // Only register the view factory once
      if (!_iframeViewFactories.contains(viewId)) {
        html.IFrameElement iframeElement = html.IFrameElement()
          ..width = '100%'
          ..height = '315'
          ..src = 'https://www.youtube.com/embed/$videoId'
          ..style.border = 'none';

        // ignore: undefined_prefixed_name
        ui.platformViewRegistry.registerViewFactory(
          viewId,
          (int viewId) => iframeElement,
        );

        _iframeViewFactories.add(viewId);
      }

      videoWidget = SizedBox(
        height: 315,
        child: HtmlElementView(viewType: viewId),
      );
    } else {
      final controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );

      videoWidget = YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                description,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            videoWidget,
          ],
        ),
      ),
    );
  }
}

// Keep track of registered view IDs to avoid multiple registrations
final Set<String> _iframeViewFactories = {};
