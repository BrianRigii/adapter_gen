import 'package:hive/hive.dart';

part 'stock_item.g.dart';

@HiveType(typeId: 181)
class StockItem {
  @HiveField(0)
  int productId;

  @HiveField(1)
  int stockId;

  @HiveField(2)
  String productName;

  @HiveField(3)
  String productDesc;

  @HiveField(4)
  String unit;

  @HiveField(5)
  int packagingId;

  @HiveField(6)
  String batchnumber;

  @HiveField(7)
  num quantity;

  @HiveField(8)
  double price;

  @HiveField(9)
  int crtQnty;

  StockItem({
    this.productId,
    this.productName,
    this.productDesc,
    this.unit,
    this.quantity,
    this.stockId,
    this.batchnumber,
    this.packagingId,
    this.price,
    this.crtQnty,
  });

  StockItem.fromMap(Map<String, dynamic> json) {
    productId = json['product_id'];
    stockId = json['stock_id'];
    productName = json['product_name'];
    packagingId = json['packaging_id'];
    productDesc = json['product_desc'];
    batchnumber = json['batchnumber'];
    unit = json['unit'];
    quantity = json['quantity'];
    price = json['price'];
    crtQnty = json['crt_qnty'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['packaging_id'] = this.packagingId;
    data['product_desc'] = this.productDesc;
    data['batchnumber'] = this.batchnumber;
    data['unit'] = this.unit;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['crt_qnty'] = this.crtQnty;
    return data;
  }
}
