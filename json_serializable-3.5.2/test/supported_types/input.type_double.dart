// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation_3_1_1/json_annotation.dart';

part 'input.type_double.g.dart';

@JsonSerializable()
class SimpleClass {
  final double value;

  @JsonKey(nullable: false)
  final double nullable;

  @JsonKey(defaultValue: 3.14)
  double withDefault;

  SimpleClass(
    this.value,
    this.nullable,
  );

  factory SimpleClass.fromJson(Map<String, dynamic> json) =>
      _$SimpleClassFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleClassToJson(this);
}
