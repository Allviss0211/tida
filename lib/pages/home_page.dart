import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImagePicker _picker = ImagePicker();
  late VideoPlayerController _controller;
  String fileName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TiDa App')),
      body: Center(
        child: Column(children: [
          Column(
            children: [
              const Icon(Icons.upload_file),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  TextButton(
                      onPressed: () async {
                        final file = await _picker.pickVideo(
                            source: ImageSource.gallery);
                        fileName = file!.name.toString();
                        _controller =
                            VideoPlayerController.file(File(file.path))
                              // ignore: unawaited_futures
                              ..initialize().then((value) => setState(() {}));
                      },
                      child: const Text('Upload here')),
                  const SizedBox(width: 16.0),
                  Text(fileName),
                ],
              ),
              fileName.isNotEmpty
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ],
          )
        ]),
      ),
    );
  }
}
