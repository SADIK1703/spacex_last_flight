import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

class SpaceXFlightModel {
  final Fairings? fairings;
  final Links? links;
  final dynamic staticFireDateUtc;
  final dynamic staticFireDateUnix;
  final bool? net;
  final dynamic window;
  final String? rocket;
  final bool? success;
  final List<dynamic>? failures;
  final dynamic details;
  final List<String>? crew;
  final List<dynamic>? ships;
  final List<String>? capsules;
  final List<String>? payloads;
  final String? launchpad;
  final int? flightNumber;
  final String? name;
  final DateTime? dateUtc;
  final int? dateUnix;
  final DateTime? dateLocal;
  final String? datePrecision;
  final bool? upcoming;
  final List<Core>? cores;
  final bool? autoUpdate;
  final bool? tbd;
  final String? launchLibraryId;
  final String? id;

  SpaceXFlightModel({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.launchLibraryId,
    this.id,
  });

  factory SpaceXFlightModel.fromRawJson(String str) => SpaceXFlightModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SpaceXFlightModel.fromJson(Map<String, dynamic> json) => SpaceXFlightModel(
        fairings: json["fairings"],
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        staticFireDateUtc: json["static_fire_date_utc"],
        staticFireDateUnix: json["static_fire_date_unix"],
        net: json["net"],
        window: json["window"],
        rocket: json["rocket"],
        success: json["success"],
        failures: json["failures"] == null ? [] : List<dynamic>.from(json["failures"]!.map((x) => x)),
        details: json["details"],
        crew: json["crew"] == null ? [] : List<String>.from(json["crew"]!.map((x) => x)),
        ships: json["ships"] == null ? [] : List<dynamic>.from(json["ships"]!.map((x) => x)),
        capsules: json["capsules"] == null ? [] : List<String>.from(json["capsules"]!.map((x) => x)),
        payloads: json["payloads"] == null ? [] : List<String>.from(json["payloads"]!.map((x) => x)),
        launchpad: json["launchpad"],
        flightNumber: json["flight_number"],
        name: json["name"],
        dateUtc: json["date_utc"] == null ? null : DateTime.parse(json["date_utc"]),
        dateUnix: json["date_unix"],
        dateLocal: json["date_local"] == null ? null : DateTime.parse(json["date_local"]),
        datePrecision: json["date_precision"],
        upcoming: json["upcoming"],
        cores: json["cores"] == null ? [] : List<Core>.from(json["cores"]!.map((x) => Core.fromJson(x))),
        autoUpdate: json["auto_update"],
        tbd: json["tbd"],
        launchLibraryId: json["launch_library_id"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "fairings": fairings,
        "links": links?.toJson(),
        "static_fire_date_utc": staticFireDateUtc,
        "static_fire_date_unix": staticFireDateUnix,
        "net": net,
        "window": window,
        "rocket": rocket,
        "success": success,
        "failures": failures == null ? [] : List<dynamic>.from(failures!.map((x) => x)),
        "details": details,
        "crew": crew == null ? [] : List<dynamic>.from(crew!.map((x) => x)),
        "ships": ships == null ? [] : List<dynamic>.from(ships!.map((x) => x)),
        "capsules": capsules == null ? [] : List<dynamic>.from(capsules!.map((x) => x)),
        "payloads": payloads == null ? [] : List<dynamic>.from(payloads!.map((x) => x)),
        "launchpad": launchpad,
        "flight_number": flightNumber,
        "name": name,
        "date_utc": dateUtc?.toIso8601String(),
        "date_unix": dateUnix,
        "date_local": dateLocal?.toIso8601String(),
        "date_precision": datePrecision,
        "upcoming": upcoming,
        "cores": cores == null ? [] : List<dynamic>.from(cores!.map((x) => x.toJson())),
        "auto_update": autoUpdate,
        "tbd": tbd,
        "launch_library_id": launchLibraryId,
        "id": id,
      };
}

class Core {
  final String? core;
  final int? flight;
  final bool? gridfins;
  final bool? legs;
  final bool? reused;
  final bool? landingAttempt;
  final bool? landingSuccess;
  final String? landingType;
  final String? landpad;

  Core({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
    this.landingSuccess,
    this.landingType,
    this.landpad,
  });

  factory Core.fromRawJson(String str) => Core.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Core.fromJson(Map<String, dynamic> json) => Core(
        core: json["core"],
        flight: json["flight"],
        gridfins: json["gridfins"],
        legs: json["legs"],
        reused: json["reused"],
        landingAttempt: json["landing_attempt"],
        landingSuccess: json["landing_success"],
        landingType: json["landing_type"],
        landpad: json["landpad"],
      );

  Map<String, dynamic> toJson() => {
        "core": core,
        "flight": flight,
        "gridfins": gridfins,
        "legs": legs,
        "reused": reused,
        "landing_attempt": landingAttempt,
        "landing_success": landingSuccess,
        "landing_type": landingType,
        "landpad": landpad,
      };
}

class Links {
  final Patch? patch;
  final Reddit? reddit;
  final Flickr? flickr;
  final dynamic presskit;
  final String? webcast;
  final String? youtubeId;
  final dynamic article;
  final String? wikipedia;

  Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        patch: json["patch"] == null ? null : Patch.fromJson(json["patch"]),
        reddit: json["reddit"] == null ? null : Reddit.fromJson(json["reddit"]),
        flickr: json["flickr"] == null ? null : Flickr.fromJson(json["flickr"]),
        presskit: json["presskit"],
        webcast: json["webcast"],
        youtubeId: json["youtube_id"],
        article: json["article"],
        wikipedia: json["wikipedia"],
      );

  Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
        "reddit": reddit?.toJson(),
        "flickr": flickr?.toJson(),
        "presskit": presskit,
        "webcast": webcast,
        "youtube_id": youtubeId,
        "article": article,
        "wikipedia": wikipedia,
      };
}

class Flickr {
  final List<dynamic>? small;
  final List<dynamic>? original;

  Flickr({
    this.small,
    this.original,
  });

  factory Flickr.fromRawJson(String str) => Flickr.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Flickr.fromJson(Map<String, dynamic> json) => Flickr(
        small: json["small"] == null ? [] : List<dynamic>.from(json["small"]!.map((x) => x)),
        original: json["original"] == null ? [] : List<dynamic>.from(json["original"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "small": small == null ? [] : List<dynamic>.from(small!.map((x) => x)),
        "original": original == null ? [] : List<dynamic>.from(original!.map((x) => x)),
      };
}

class Patch {
  final String? small;
  final String? large;

  Patch({
    this.small,
    this.large,
  });

  factory Patch.fromRawJson(String str) => Patch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Patch.fromJson(Map<String, dynamic> json) => Patch(
        small: json["small"],
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "large": large,
      };
}

class Reddit {
  final dynamic campaign;
  final String? launch;
  final dynamic media;
  final dynamic recovery;

  Reddit({
    this.campaign,
    this.launch,
    this.media,
    this.recovery,
  });

  factory Reddit.fromRawJson(String str) => Reddit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reddit.fromJson(Map<String, dynamic> json) => Reddit(
        campaign: json["campaign"],
        launch: json["launch"],
        media: json["media"],
        recovery: json["recovery"],
      );

  Map<String, dynamic> toJson() => {
        "campaign": campaign,
        "launch": launch,
        "media": media,
        "recovery": recovery,
      };
}

@JsonSerializable()
class Fairings {
  bool? reused;
  bool? recoveryAttempt;
  List<String>? ships;

  Fairings({
    this.reused,
    this.recoveryAttempt,
    this.ships,
  });

  factory Fairings.fromJson(Map<String, dynamic> json) => FairingsFromJson(json);

  Map<String, dynamic> toJson() => FairingsToJson(this);
}

class Cores {
  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  bool? landingSuccess;
  String? landingType;
  String? landpad;

  Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad});

  factory Cores.fromJson(Map<String, dynamic> json) => CoresFromJson(json);

  Map<String, dynamic> toJson() => CoresToJson(this);
}

Fairings FairingsFromJson(Map<String, dynamic> json) {
  return Fairings(
    reused: json['reused'] as bool?,
    recoveryAttempt: json['recoveryAttempt'] as bool?,
    ships: (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recoveryAttempt': instance.recoveryAttempt,
      'ships': instance.ships,
    };

Links LinksFromJson(Map<String, dynamic> json) {
  return Links(
    patch: json['patch'] == null ? null : Patch.fromJson(json['patch'] as Map<String, dynamic>),
    reddit: json['reddit'] == null ? null : Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
    webcast: json['webcast'] as String?,
    youtubeId: json['youtubeId'] as String?,
    wikipedia: json['wikipedia'] as String?,
  );
}

Map<String, dynamic> LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'reddit': instance.reddit,
      'webcast': instance.webcast,
      'youtubeId': instance.youtubeId,
      'wikipedia': instance.wikipedia,
    };

Patch PatchFromJson(Map<String, dynamic> json) {
  return Patch(
    small: json['small'] as String?,
    large: json['large'] as String?,
  );
}

Map<String, dynamic> PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Reddit RedditFromJson(Map<String, dynamic> json) {
  return Reddit(
    campaign: json['campaign'] as String?,
    launch: json['launch'] as String?,
    recovery: json['recovery'] as String?,
  );
}

Map<String, dynamic> RedditToJson(Reddit instance) => <String, dynamic>{
      'campaign': instance.campaign,
      'launch': instance.launch,
      'recovery': instance.recovery,
    };

Cores CoresFromJson(Map<String, dynamic> json) {
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

Map<String, dynamic> CoresToJson(Cores instance) => <String, dynamic>{
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
