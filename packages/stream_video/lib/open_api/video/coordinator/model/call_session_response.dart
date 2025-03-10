//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CallSessionResponse {
  /// Returns a new [CallSessionResponse] instance.
  CallSessionResponse({
    this.acceptedBy = const {},
    required this.anonymousParticipantCount,
    this.endedAt,
    required this.id,
    this.liveEndedAt,
    this.liveStartedAt,
    this.missedBy = const {},
    this.participants = const [],
    this.participantsCountByRole = const {},
    this.rejectedBy = const {},
    this.startedAt,
    this.timerEndsAt,
  });

  Map<String, DateTime> acceptedBy;

  int anonymousParticipantCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endedAt;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? liveEndedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? liveStartedAt;

  Map<String, DateTime> missedBy;

  List<CallParticipantResponse> participants;

  Map<String, int> participantsCountByRole;

  Map<String, DateTime> rejectedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timerEndsAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallSessionResponse &&
    _deepEquality.equals(other.acceptedBy, acceptedBy) &&
    other.anonymousParticipantCount == anonymousParticipantCount &&
    other.endedAt == endedAt &&
    other.id == id &&
    other.liveEndedAt == liveEndedAt &&
    other.liveStartedAt == liveStartedAt &&
    _deepEquality.equals(other.missedBy, missedBy) &&
    _deepEquality.equals(other.participants, participants) &&
    _deepEquality.equals(other.participantsCountByRole, participantsCountByRole) &&
    _deepEquality.equals(other.rejectedBy, rejectedBy) &&
    other.startedAt == startedAt &&
    other.timerEndsAt == timerEndsAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (acceptedBy.hashCode) +
    (anonymousParticipantCount.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (id.hashCode) +
    (liveEndedAt == null ? 0 : liveEndedAt!.hashCode) +
    (liveStartedAt == null ? 0 : liveStartedAt!.hashCode) +
    (missedBy.hashCode) +
    (participants.hashCode) +
    (participantsCountByRole.hashCode) +
    (rejectedBy.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (timerEndsAt == null ? 0 : timerEndsAt!.hashCode);

  @override
  String toString() => 'CallSessionResponse[acceptedBy=$acceptedBy, anonymousParticipantCount=$anonymousParticipantCount, endedAt=$endedAt, id=$id, liveEndedAt=$liveEndedAt, liveStartedAt=$liveStartedAt, missedBy=$missedBy, participants=$participants, participantsCountByRole=$participantsCountByRole, rejectedBy=$rejectedBy, startedAt=$startedAt, timerEndsAt=$timerEndsAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accepted_by'] = this.acceptedBy;
      json[r'anonymous_participant_count'] = this.anonymousParticipantCount;
    if (this.endedAt != null) {
      json[r'ended_at'] = this.endedAt!.toUtc().toIso8601String();
    } else {
      json[r'ended_at'] = null;
    }
      json[r'id'] = this.id;
    if (this.liveEndedAt != null) {
      json[r'live_ended_at'] = this.liveEndedAt!.toUtc().toIso8601String();
    } else {
      json[r'live_ended_at'] = null;
    }
    if (this.liveStartedAt != null) {
      json[r'live_started_at'] = this.liveStartedAt!.toUtc().toIso8601String();
    } else {
      json[r'live_started_at'] = null;
    }
      json[r'missed_by'] = this.missedBy;
      json[r'participants'] = this.participants;
      json[r'participants_count_by_role'] = this.participantsCountByRole;
      json[r'rejected_by'] = this.rejectedBy;
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'started_at'] = null;
    }
    if (this.timerEndsAt != null) {
      json[r'timer_ends_at'] = this.timerEndsAt!.toUtc().toIso8601String();
    } else {
      json[r'timer_ends_at'] = null;
    }
    return json;
  }

  /// Returns a new [CallSessionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallSessionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CallSessionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CallSessionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallSessionResponse(
        // MANUAL_EDIT: mapCastOfType().convertValueToDateTime() instead of mapFromJson()
        acceptedBy: mapCastOfType<String, String>(json, r'accepted_by')!
            .convertValueToDateTime(),
        anonymousParticipantCount:
            mapValueOfType<int>(json, r'anonymous_participant_count')!,
        endedAt: mapDateTime(json, r'ended_at', r''),
        id: mapValueOfType<String>(json, r'id')!,
        liveEndedAt: mapDateTime(json, r'live_ended_at', r''),
        liveStartedAt: mapDateTime(json, r'live_started_at', r''),
        // MANUAL_EDIT: mapCastOfType().convertValueToDateTime() instead of mapFromJson()
        missedBy: mapCastOfType<String, String>(json, r'missed_by')!
            .convertValueToDateTime(),
        participants:
            CallParticipantResponse.listFromJson(json[r'participants']),
        participantsCountByRole:
            mapCastOfType<String, int>(json, r'participants_count_by_role')!,
        // MANUAL_EDIT: mapCastOfType().convertValueToDateTime() instead of mapFromJson()
        rejectedBy: mapCastOfType<String, String>(json, r'rejected_by')!
            .convertValueToDateTime(),
        startedAt: mapDateTime(json, r'started_at', r''),
        timerEndsAt: mapDateTime(json, r'timer_ends_at', r''),
      );
    }
    return null;
  }

  static List<CallSessionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallSessionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallSessionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallSessionResponse> mapFromJson(dynamic json) {
    final map = <String, CallSessionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallSessionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallSessionResponse-objects as value to a dart map
  static Map<String, List<CallSessionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CallSessionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallSessionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accepted_by',
    'anonymous_participant_count',
    'id',
    'missed_by',
    'participants',
    'participants_count_by_role',
    'rejected_by',
  };
}

