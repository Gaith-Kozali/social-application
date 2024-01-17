// welcome this project is coded by Gaith kozali start in 2023/1/1
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import '../../../../core/constants/app_colors.dart';

class VideoWidget extends StatefulWidget {
  VideoWidget({super.key, required this.videoPath});
  String videoPath;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> with RouteAware {
  late VideoPlayerController _videoCtrl;
  IconData icon = Icons.play_arrow;
  double visible = 1;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
    print(
        "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIINNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNIIITTT");
    _videoCtrl = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((value) => setState(() {}));
    _videoCtrl.addListener(() {
      setState(() {
        _sliderValue = _videoCtrl.value.position.inSeconds.toDouble();
      });
    });
  }

  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value;
    });
    final Duration duration = Duration(seconds: value.toInt());
    _videoCtrl.seekTo(duration);
  }

  @override
  void dispose() {
    super.dispose();
    _videoCtrl.pause();
    _videoCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _videoCtrl.value.isInitialized
        ? GestureDetector(
            onTap: () {
              setState(() {
                if (_videoCtrl.value.isPlaying) {
                  _videoCtrl.pause();
                  visible = 1;
                  icon = Icons.play_arrow;
                } else {
                  _videoCtrl.play();
                  visible = 0;
                  icon = Icons.pause;
                }
              });
            },
            child: Stack(alignment: Alignment.center, children: [
              Opacity(
                opacity: 1,
                child: VideoPlayer(_videoCtrl),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    opacity: visible == 1 ? 0 : 1,
                    duration: const Duration(seconds: 1),
                    child: SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 4.0, // Adjust the height of the track
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 4.0,
                        ), // Adjust the size of the thumb
                        overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 1), // Adjust the size of the overlay
                        activeTrackColor:
                            Colors.red, // Set the active track color
                        inactiveTrackColor:
                            AppColors.silver, // Set the inactive track color
                        thumbColor: AppColors.red, // Set the thumb color
                        overlayColor: Colors.red.withOpacity(0.2),
                      ),
                      child: Slider(
                        min: 0.0,
                        max: _videoCtrl.value.duration.inSeconds.toDouble(),
                        value: _sliderValue,
                        onChanged: _onSliderChanged,
                      ),
                    ),
                  )),
              AnimatedOpacity(
                opacity: visible,
                duration: const Duration(milliseconds: 500),
                child: Icon(icon,
                    color: Colors.white.withOpacity(0.9), size: 50.r),
              )
            ]),
          )
        : const SizedBox();
  }
}
