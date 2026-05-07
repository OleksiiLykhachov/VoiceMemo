import 'package:flutter/material.dart';

import 'package:voice_memos/presentation/presentation.dart';

class RecordTitle extends StatelessWidget {
  final String text;
  const RecordTitle(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: VoiceMemosTextStyles.titleLarge,
    );
  }
}
