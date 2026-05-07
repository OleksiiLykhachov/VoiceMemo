import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:voice_memos/presentation/presentation.dart';

class NoMicrophoneAccessDialog extends StatelessWidget {
  const NoMicrophoneAccessDialog({super.key});

  static Future<void> show(BuildContext context) {
    return BaseDialog.show(
      context: context,
      builder: (context) => const NoMicrophoneAccessDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      child: DialogContent(
        icon: CircleIcon(
          icon: CupertinoIcons.mic_off,
          background: VoiceMemosColors.red,
          foreground: VoiceMemosColors.white,
        ),
        title: Text('MICROPHONE\nACCESS OFF'),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'We need your mic to record memos. Turn it on in ',
                  ),
                  TextSpan(
                    text: 'Settings → Voice Memos → Microphone',
                    style: TextStyle(
                      color: VoiceMemosColors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  AppSettings.openAppSettings();
                  Navigator.of(context).pop();
                },
                child: Text('OPEN SETTINGS'),
              ),
            ),
            const Gap(12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('NOT NOW'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
