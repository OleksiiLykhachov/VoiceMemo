import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:voice_memos/presentation/presentation.dart';

import 'record_widget/widgets/record_background.dart';

class EmptyHomePoster extends StatelessWidget {
  const EmptyHomePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecordBackground(
          progress: 0,
          child: Center(
            child: Text(
              'Nothing\nRecorded\nYet'.toUpperCase(),
              style: VoiceMemosTextStyles.headlineLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Gap(16),
        Text(
          'Your voice memos will live here.\nHold the button below to capture your first thought.',
          textAlign: TextAlign.center,
          style: VoiceMemosTextStyles.bodyLarge.copyWith(
            color: VoiceMemosColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
