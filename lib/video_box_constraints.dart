import 'package:flutter/rendering.dart' show BoxConstraints;

class VideoBoxConstraints extends BoxConstraints {
  const VideoBoxConstraints({
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    required this.videoHeight,
  });

  VideoBoxConstraints.tight(super.size, {required this.videoHeight})
    : super.tight();

  const VideoBoxConstraints.tightFor({
    super.width,
    super.height,
    required this.videoHeight,
  }) : super.tightFor();

  const VideoBoxConstraints.tightForFinite({
    super.width,
    super.height,
    required this.videoHeight,
  }) : super.tightForFinite();

  VideoBoxConstraints.loose(super.size, {required this.videoHeight})
    : super.loose();

  const VideoBoxConstraints.expand({
    super.width,
    super.height,
    required this.videoHeight,
  }) : super.expand();

  VideoBoxConstraints.fromViewConstraints(
    super.constraints, {
    required this.videoHeight,
  }) : super.fromViewConstraints();

  final double videoHeight;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is VideoBoxConstraints &&
        other.videoHeight == videoHeight &&
        other.minWidth == minWidth &&
        other.maxWidth == maxWidth &&
        other.minHeight == minHeight &&
        other.maxHeight == maxHeight;
  }

  @override
  int get hashCode =>
      Object.hash(videoHeight, minWidth, maxWidth, minHeight, maxHeight);

  @override
  String toString() {
    return 'VideoBoxConstraints(videoHeight=$videoHeight), ${super.toString()}';
  }
}
