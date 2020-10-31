// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeerModel _$BeerModelFromJson(Map<String, dynamic> json) {
  return BeerModel(
    id: json['id'] as int,
    name: json['name'] as String,
    tagline: json['tagline'] as String,
    firstBrewed: json['first_brewed'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    abv: (json['abv'] as num)?.toDouble(),
    ibu: json['ibu'] as int,
    targetFg: json['target_fg'] as int,
    targetOg: json['target_og'] as int,
    ebc: (json['ebc'] as num)?.toDouble(),
    srm: (json['srm'] as num)?.toDouble(),
    ph: (json['ph'] as num)?.toDouble(),
    attenuationLevel: (json['attenuation_level'] as num)?.toDouble(),
    volume: json['volume'] == null
        ? null
        : VolumeModel.fromJson(json['volume'] as Map<String, dynamic>),
    boilVolume: json['boil_volume'] == null
        ? null
        : VolumeModel.fromJson(json['boil_volume'] as Map<String, dynamic>),
    method: json['method'] == null
        ? null
        : MethodModel.fromJson(json['method'] as Map<String, dynamic>),
    ingredients: json['ingredients'] == null
        ? null
        : IngredientsModel.fromJson(
            json['ingredients'] as Map<String, dynamic>),
    foodPairing:
        (json['food_pairing'] as List)?.map((e) => e as String)?.toList(),
    brewersTips: json['brewers_tips'] as String,
    contributedBy: json['contributed_by'] as String,
  );
}

Map<String, dynamic> _$BeerModelToJson(BeerModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagline': instance.tagline,
      'first_brewed': instance.firstBrewed,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'abv': instance.abv,
      'ibu': instance.ibu,
      'target_fg': instance.targetFg,
      'target_og': instance.targetOg,
      'ebc': instance.ebc,
      'srm': instance.srm,
      'ph': instance.ph,
      'attenuation_level': instance.attenuationLevel,
      'volume': instance.volume,
      'boil_volume': instance.boilVolume,
      'method': instance.method,
      'ingredients': instance.ingredients,
      'food_pairing': instance.foodPairing,
      'brewers_tips': instance.brewersTips,
      'contributed_by': instance.contributedBy,
    };

VolumeModel _$VolumeModelFromJson(Map<String, dynamic> json) {
  return VolumeModel(
    value: json['value'],
    unit: json['unit'] as String,
  );
}

Map<String, dynamic> _$VolumeModelToJson(VolumeModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

IngredientsModel _$IngredientsModelFromJson(Map<String, dynamic> json) {
  return IngredientsModel(
    malt: (json['malt'] as List)
        ?.map((e) =>
            e == null ? null : MaltModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hops: (json['hops'] as List)
        ?.map((e) =>
            e == null ? null : HopsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    yeast: json['yeast'] as String,
  );
}

Map<String, dynamic> _$IngredientsModelToJson(IngredientsModel instance) =>
    <String, dynamic>{
      'malt': instance.malt,
      'hops': instance.hops,
      'yeast': instance.yeast,
    };

MaltModel _$MaltModelFromJson(Map<String, dynamic> json) {
  return MaltModel(
    name: json['name'] as String,
    amount: json['amount'] == null
        ? null
        : VolumeModel.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MaltModelToJson(MaltModel instance) => <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };

HopsModel _$HopsModelFromJson(Map<String, dynamic> json) {
  return HopsModel(
    name: json['name'] as String,
    amount: json['amount'] == null
        ? null
        : VolumeModel.fromJson(json['amount'] as Map<String, dynamic>),
    add: json['add'] as String,
    attribute: json['attribute'] as String,
  );
}

Map<String, dynamic> _$HopsModelToJson(HopsModel instance) => <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'add': instance.add,
      'attribute': instance.attribute,
    };

MethodModel _$MethodModelFromJson(Map<String, dynamic> json) {
  return MethodModel(
    mashTemp: (json['mashTemp'] as List)
        ?.map((e) => e == null
            ? null
            : MashTempModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    fermentation: json['fermentation'] == null
        ? null
        : FermentationModel.fromJson(
            json['fermentation'] as Map<String, dynamic>),
    twist: json['twist'] as String,
  );
}

Map<String, dynamic> _$MethodModelToJson(MethodModel instance) =>
    <String, dynamic>{
      'mashTemp': instance.mashTemp,
      'fermentation': instance.fermentation,
      'twist': instance.twist,
    };

MashTempModel _$MashTempModelFromJson(Map<String, dynamic> json) {
  return MashTempModel(
    temp: json['temp'] == null
        ? null
        : VolumeModel.fromJson(json['temp'] as Map<String, dynamic>),
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$MashTempModelToJson(MashTempModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'duration': instance.duration,
    };

FermentationModel _$FermentationModelFromJson(Map<String, dynamic> json) {
  return FermentationModel(
    temp: json['temp'] == null
        ? null
        : VolumeModel.fromJson(json['temp'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FermentationModelToJson(FermentationModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };
