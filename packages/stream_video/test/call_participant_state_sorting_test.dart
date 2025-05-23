// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter_test/flutter_test.dart';
import 'package:stream_video/src/models/call_participant_pin.dart';
import 'package:stream_video/src/models/call_participant_state.dart';
import 'package:stream_video/src/models/call_track_state.dart';
import 'package:stream_video/src/models/viewport_visibility.dart';
import 'package:stream_video/src/sfu/data/models/sfu_connection_quality.dart';
import 'package:stream_video/src/sfu/data/models/sfu_track_type.dart';
import 'package:stream_video/src/sorting/call_participant_state_sorting.dart';

void main() {
  final participants = [
    CallParticipantState(
      name: 'A',
      userId: '1',
      sessionId: '1',
      custom: const {},
      roles: const ['admin'],
      trackIdPrefix: '123',
      publishedTracks: {
        SfuTrackType.audio: TrackState.remote(),
        SfuTrackType.video: TrackState.remote(),
      },
      connectionQuality: SfuConnectionQuality.excellent,
      isSpeaking: true,
      isDominantSpeaker: false,
      audioLevel: 0,
      viewportVisibility: ViewportVisibility.visible,
      pin: null,
    ),

    // Presenter, video, audio
    CallParticipantState(
      name: 'B',
      userId: '2',
      sessionId: '2',
      custom: const {},
      roles: const ['admin'],
      trackIdPrefix: '123',
      publishedTracks: {
        SfuTrackType.audio: TrackState.remote(),
        SfuTrackType.video: TrackState.remote(),
        SfuTrackType.screenShare: TrackState.remote(),
      },
      connectionQuality: SfuConnectionQuality.excellent,
      isSpeaking: false,
      isDominantSpeaker: false,
      audioLevel: 0,
      viewportVisibility: ViewportVisibility.visible,
      pin: null,
    ),

    // Muted
    CallParticipantState(
      name: 'C',
      userId: '3',
      sessionId: '3',
      custom: const {},
      roles: const ['admin'],
      trackIdPrefix: '123',
      publishedTracks: const {},
      connectionQuality: SfuConnectionQuality.excellent,
      isSpeaking: true,
      isDominantSpeaker: false,
      audioLevel: 0,
      viewportVisibility: ViewportVisibility.visible,
      pin: null,
    ),

    // Dominant speaker
    CallParticipantState(
      name: 'D',
      userId: '4',
      sessionId: '4',
      custom: const {},
      roles: const ['admin'],
      trackIdPrefix: '123',
      publishedTracks: {SfuTrackType.audio: TrackState.remote()},
      connectionQuality: SfuConnectionQuality.excellent,
      isSpeaking: true,
      isDominantSpeaker: true,
      audioLevel: 0,
      viewportVisibility: ViewportVisibility.visible,
      pin: null,
    ),

    // Presenter only
    CallParticipantState(
      name: 'E',
      userId: '5',
      sessionId: '5',
      custom: const {},
      roles: const ['admin'],
      trackIdPrefix: '123',
      publishedTracks: {SfuTrackType.screenShare: TrackState.remote()},
      connectionQuality: SfuConnectionQuality.excellent,
      isSpeaking: false,
      isDominantSpeaker: false,
      audioLevel: 0,
      viewportVisibility: ViewportVisibility.visible,
      pin: null,
    ),

    // pinned
    CallParticipantState(
      name: 'F',
      userId: '6',
      sessionId: '6',
      custom: const {},
      roles: const ['admin'],
      trackIdPrefix: '123',
      publishedTracks: {
        SfuTrackType.audio: TrackState.remote(),
        SfuTrackType.video: TrackState.remote(),
      },
      connectionQuality: SfuConnectionQuality.excellent,
      isSpeaking: false,
      isDominantSpeaker: false,
      audioLevel: 0,
      viewportVisibility: ViewportVisibility.visible,
      pin: CallParticipantPin(isLocalPin: true, pinnedAt: DateTime.now()),
    ),
  ];

  group('sorting', () {
    test('presenter, dominant speaker, video, audio, mute', () {
      final comparator = combineComparators([
        screenSharing,
        dominantSpeaker,
        publishingVideo,
        publishingAudio,
      ]);

      final sorted = participants..sort(comparator);
      expect(sorted.map((p) => p.name), ['B', 'E', 'D', 'A', 'F', 'C']);
    });

    test('pinned, dominant speaker, audio, video, screenshare, mute', () {
      final comparator = combineComparators([
        pinned,
        dominantSpeaker,
        publishingAudio,
        publishingVideo,
        screenSharing,
      ]);

      final sorted = participants..sort(comparator);
      expect(sorted.map((p) => p.name), ['F', 'D', 'B', 'A', 'E', 'C']);
    });

    test('conditional comparator', () {
      int byValue(int a, int b) => a.compareTo(b);
      final input = [2, 3, 1];
      expect([...input]..sort(byValue), [1, 2, 3]);

      final disableComparator = byValue.conditional((_, __) => false);
      expect([...input]..sort(disableComparator), [2, 3, 1]);
    });
  });
}
