import 'package:inventory_app/features/items/data/models/item_master.dart';

class ListItemMaster {
  
  List<ItemsMaster> items ;
  ListItemMaster({
    required this.items,
  });
  factory ListItemMaster.fromJson(List<dynamic> json) {
    return ListItemMaster(items: json.map((e) => ItemsMaster.fromJson(e)).toList());
  }
}
