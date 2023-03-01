// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      firstName: json['first_name'] as String,
      lastName: json['lastName'] as String,
      age: json['age'] as int,
      birthYear: json['birth_year'] as int?,
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
      'birth_year': instance.birthYear,
    };
