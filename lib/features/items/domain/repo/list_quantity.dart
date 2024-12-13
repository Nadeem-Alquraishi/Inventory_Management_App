import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:inventory_app/features/items/data/models/quantity.dart';

class ListQuantity {
  List<Quantity>? quantity;
  ListQuantity({
    this.quantity,
  });

  ListQuantity copyWith({
    List<Quantity>? quantity,
  }) {
    return ListQuantity(
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantity': quantity!.map((x) => x.toMap()).toList(),
    };
  }

  factory ListQuantity.fromMap(Map<String, dynamic> map) {
    return ListQuantity(
      quantity: map['quantity'] != null
          ? List<Quantity>.from(
              (map['quantity'] as List<int>).map<Quantity?>(
                (x) => Quantity.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListQuantity.fromJson(String source) =>
      ListQuantity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ListQuantity(quantity: $quantity)';

  @override
  bool operator ==(covariant ListQuantity other) {
    if (identical(this, other)) return true;

    return listEquals(other.quantity, quantity);
  }

  @override
  int get hashCode => quantity.hashCode;
}