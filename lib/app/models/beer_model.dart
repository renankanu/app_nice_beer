import 'package:json_annotation/json_annotation.dart';

part 'beer_model.g.dart';

@JsonSerializable()
class BeerModel {
  int id;
  String name;
  String tagline;
  @JsonKey(name: 'first_brewed')
  String firstBrewed;
  String description;
  @JsonKey(name: 'image_url')
  String imageUrl;
  double abv;
  int ibu;
  @JsonKey(name: 'target_fg')
  int targetFg;
  @JsonKey(name: 'target_og')
  int targetOg;
  double ebc;
  double srm;
  double ph;
  @JsonKey(name: 'attenuation_level')
  double attenuationLevel;
  VolumeModel volume;
  @JsonKey(name: 'boil_volume')
  VolumeModel boilVolume;
  MethodModel method;
  IngredientsModel ingredients;
  @JsonKey(name: 'food_pairing')
  List<String> foodPairing;
  @JsonKey(name: 'brewers_tips')
  String brewersTips;
  @JsonKey(name: 'contributed_by')
  String contributedBy;
  BeerModel({
    this.id,
    this.name,
    this.tagline,
    this.firstBrewed,
    this.description,
    this.imageUrl,
    this.abv,
    this.ibu,
    this.targetFg,
    this.targetOg,
    this.ebc,
    this.srm,
    this.ph,
    this.attenuationLevel,
    this.volume,
    this.boilVolume,
    this.method,
    this.ingredients,
    this.foodPairing,
    this.brewersTips,
    this.contributedBy,
  });
  factory BeerModel.fromJson(Map<String, dynamic> json) =>
      _$BeerModelFromJson(json);
  Map<String, dynamic> toJson() => _$BeerModelToJson(this);
}

@JsonSerializable()
class VolumeModel {
  dynamic value;
  String unit;

  VolumeModel({this.value, this.unit});

  factory VolumeModel.fromJson(Map<String, dynamic> json) =>
      _$VolumeModelFromJson(json);
  Map<String, dynamic> toJson() => _$VolumeModelToJson(this);
}

@JsonSerializable()
class IngredientsModel {
  List<MaltModel> malt;
  List<HopsModel> hops;
  String yeast;

  IngredientsModel({this.malt, this.hops, this.yeast});

  factory IngredientsModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientsModelFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientsModelToJson(this);
}

@JsonSerializable()
class MaltModel {
  String name;
  VolumeModel amount;

  MaltModel({this.name, this.amount});

  factory MaltModel.fromJson(Map<String, dynamic> json) =>
      _$MaltModelFromJson(json);
  Map<String, dynamic> toJson() => _$MaltModelToJson(this);
}

@JsonSerializable()
class HopsModel {
  String name;
  VolumeModel amount;
  String add;
  String attribute;

  HopsModel({this.name, this.amount, this.add, this.attribute});

  factory HopsModel.fromJson(Map<String, dynamic> json) =>
      _$HopsModelFromJson(json);
  Map<String, dynamic> toJson() => _$HopsModelToJson(this);
}

@JsonSerializable()
class MethodModel {
  List<MashTempModel> mashTemp;
  FermentationModel fermentation;
  String twist;

  MethodModel({this.mashTemp, this.fermentation, this.twist});

  factory MethodModel.fromJson(Map<String, dynamic> json) =>
      _$MethodModelFromJson(json);
  Map<String, dynamic> toJson() => _$MethodModelToJson(this);
}

@JsonSerializable()
class MashTempModel {
  VolumeModel temp;
  int duration;

  MashTempModel({this.temp, this.duration});

  factory MashTempModel.fromJson(Map<String, dynamic> json) =>
      _$MashTempModelFromJson(json);
  Map<String, dynamic> toJson() => _$MashTempModelToJson(this);
}

@JsonSerializable()
class FermentationModel {
  VolumeModel temp;

  FermentationModel({this.temp});

  factory FermentationModel.fromJson(Map<String, dynamic> json) =>
      _$FermentationModelFromJson(json);
  Map<String, dynamic> toJson() => _$FermentationModelToJson(this);
}
