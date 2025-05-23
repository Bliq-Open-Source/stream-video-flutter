//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendReactionResponse {
  /// Returns a new [SendReactionResponse] instance.
  SendReactionResponse({
    required this.duration,
    required this.reaction,
  });

  /// Duration of the request in milliseconds
  String duration;

  ReactionResponse reaction;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SendReactionResponse &&
          other.duration == duration &&
          other.reaction == reaction;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (duration.hashCode) + (reaction.hashCode);

  @override
  String toString() =>
      'SendReactionResponse[duration=$duration, reaction=$reaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'duration'] = this.duration;
    json[r'reaction'] = this.reaction;
    return json;
  }

  /// Returns a new [SendReactionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendReactionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SendReactionResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SendReactionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendReactionResponse(
        duration: mapValueOfType<String>(json, r'duration')!,
        reaction: ReactionResponse.fromJson(json[r'reaction'])!,
      );
    }
    return null;
  }

  static List<SendReactionResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SendReactionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendReactionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendReactionResponse> mapFromJson(dynamic json) {
    final map = <String, SendReactionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendReactionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendReactionResponse-objects as value to a dart map
  static Map<String, List<SendReactionResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SendReactionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendReactionResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'duration',
    'reaction',
  };
}
