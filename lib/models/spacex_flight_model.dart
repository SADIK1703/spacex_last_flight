import 'package:json_annotation/json_annotation.dart';
part 'spacex_flight_model.g.dart';

@JsonSerializable()
class SpaceXFlightModel {
  Fairings? fairings;
  Links? links;
  bool? tbd;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  String? details;
  List<String>? ships;
  List<String>? payloads;
  String? launchpad;
  bool? autoUpdate;
  String? launchLibraryId;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  String? id;

  SpaceXFlightModel({
    fairings,
    links,
    this.tbd,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.details,
    this.ships,
    this.payloads,
    this.launchpad,
    this.autoUpdate,
    this.launchLibraryId,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.id,
  }) {
    this.fairings = fairings != null ? Fairings.fromJson(fairings) : null;
    this.links = links != null ? Links.fromJson(links) : null;
    print(links);
    cores = cores;
  }

  factory SpaceXFlightModel.fromJson(Map<String, dynamic> json) =>
      _$SpaceXFlightModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceXFlightModelToJson(this);

  String? get getImageUrl => links!.patch!.large;
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

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);
}

@JsonSerializable()
class Links {
  Patch? patch;
  Reddit? reddit;
  String? webcast;
  String? youtubeId;
  String? wikipedia;

  Links({
    this.patch,
    this.reddit,
    this.webcast,
    this.youtubeId,
    this.wikipedia,
  }) {
    print(youtubeId);
  }

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Patch {
  String? small;
  String? large;

  Patch({this.small, this.large});

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);
}

@JsonSerializable()
class Reddit {
  String? campaign;
  String? launch;
  String? recovery;

  Reddit({
    this.campaign,
    this.launch,
    this.recovery,
  });

  factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);

  Map<String, dynamic> toJson() => _$RedditToJson(this);
}

@JsonSerializable()
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

  factory Cores.fromJson(Map<String, dynamic> json) => _$CoresFromJson(json);

  Map<String, dynamic> toJson() => _$CoresToJson(this);
}
