// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_flight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceXFlightModel _$SpaceXFlightModelFromJson(Map<String, dynamic> json) {
  return SpaceXFlightModel(
    fairings: json['fairings'],
    links: json['links'],
    tbd: json['tbd'] as bool?,
    net: json['net'] as bool?,
    window: json['window'] as int?,
    rocket: json['rocket'] as String?,
    success: json['success'] as bool?,
    details: json['details'] as String?,
    ships: (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
    payloads:
        (json['payloads'] as List<dynamic>?)?.map((e) => e as String).toList(),
    launchpad: json['launchpad'] as String?,
    autoUpdate: json['autoUpdate'] as bool?,
    launchLibraryId: json['launchLibraryId'] as String?,
    flightNumber: json['flightNumber'] as int?,
    name: json['name'] as String?,
    dateUtc: json['dateUtc'] as String?,
    dateUnix: json['dateUnix'] as int?,
    dateLocal: json['dateLocal'] as String?,
    datePrecision: json['datePrecision'] as String?,
    upcoming: json['upcoming'] as bool?,
    cores: (json['cores'] as List<dynamic>?)
        ?.map((e) => Cores.fromJson(e as Map<String, dynamic>))
        .toList(),
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$SpaceXFlightModelToJson(SpaceXFlightModel instance) =>
    <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'tbd': instance.tbd,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'details': instance.details,
      'ships': instance.ships,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'autoUpdate': instance.autoUpdate,
      'launchLibraryId': instance.launchLibraryId,
      'flightNumber': instance.flightNumber,
      'name': instance.name,
      'dateUtc': instance.dateUtc,
      'dateUnix': instance.dateUnix,
      'dateLocal': instance.dateLocal,
      'datePrecision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores,
      'id': instance.id,
    };

Fairings _$FairingsFromJson(Map<String, dynamic> json) {
  return Fairings(
    reused: json['reused'] as bool?,
    recoveryAttempt: json['recoveryAttempt'] as bool?,
    ships: (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recoveryAttempt': instance.recoveryAttempt,
      'ships': instance.ships,
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    patch: json['patch'] == null
        ? null
        : Patch.fromJson(json['patch'] as Map<String, dynamic>),
    reddit: json['reddit'] == null
        ? null
        : Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
    webcast: json['webcast'] as String?,
    youtubeId: json['youtubeId'] as String?,
    wikipedia: json['wikipedia'] as String?,
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'reddit': instance.reddit,
      'webcast': instance.webcast,
      'youtubeId': instance.youtubeId,
      'wikipedia': instance.wikipedia,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) {
  return Patch(
    small: json['small'] as String?,
    large: json['large'] as String?,
  );
}

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Reddit _$RedditFromJson(Map<String, dynamic> json) {
  return Reddit(
    campaign: json['campaign'] as String?,
    launch: json['launch'] as String?,
    recovery: json['recovery'] as String?,
  );
}

Map<String, dynamic> _$RedditToJson(Reddit instance) => <String, dynamic>{
      'campaign': instance.campaign,
      'launch': instance.launch,
      'recovery': instance.recovery,
    };

Cores _$CoresFromJson(Map<String, dynamic> json) {
  return Cores(
    core: json['core'] as String?,
    flight: json['flight'] as int?,
    gridfins: json['gridfins'] as bool?,
    legs: json['legs'] as bool?,
    reused: json['reused'] as bool?,
    landingAttempt: json['landingAttempt'] as bool?,
    landingSuccess: json['landingSuccess'] as bool?,
    landingType: json['landingType'] as String?,
    landpad: json['landpad'] as String?,
  );
}

Map<String, dynamic> _$CoresToJson(Cores instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landingAttempt': instance.landingAttempt,
      'landingSuccess': instance.landingSuccess,
      'landingType': instance.landingType,
      'landpad': instance.landpad,
    };
