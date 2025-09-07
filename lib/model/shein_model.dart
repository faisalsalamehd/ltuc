class SheInModel {
  bool? error;
  String? message;
  String? minPrice;
  String? maxPrice;
  List<Data>? data;

  SheInModel(
      {this.error, this.message, this.minPrice, this.maxPrice, this.data});

  SheInModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    minPrice = json['min_price'];
    maxPrice = json['max_price'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    data['min_price'] = minPrice;
    data['max_price'] = maxPrice;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? title;
  String? slug;
  String? shortDescription;
  String? style;
  String? productIds;
  String? rowOrder;
  String? categories;
  String? productType;
  dynamic seoPageTitle;
  dynamic seoMetaKeywords;
  dynamic seoMetaDescription;
  dynamic seoOgImage;
  String? dateAdded;
  String? total;
  List<Filters>? filters;
  List<ProductDetails>? productDetails;

  Data(
      {this.id,
      this.title,
      this.slug,
      this.shortDescription,
      this.style,
      this.productIds,
      this.rowOrder,
      this.categories,
      this.productType,
      this.seoPageTitle,
      this.seoMetaKeywords,
      this.seoMetaDescription,
      this.seoOgImage,
      this.dateAdded,
      this.total,
      this.filters,
      this.productDetails});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    shortDescription = json['short_description'];
    style = json['style'];
    productIds = json['product_ids'];
    rowOrder = json['row_order'];
    categories = json['categories'];
    productType = json['product_type'];
    seoPageTitle = json['seo_page_title'];
    seoMetaKeywords = json['seo_meta_keywords'];
    seoMetaDescription = json['seo_meta_description'];
    seoOgImage = json['seo_og_image'];
    dateAdded = json['date_added'];
    total = json['total'];
    if (json['filters'] != null) {
      filters = <Filters>[];
      json['filters'].forEach((v) {
        filters!.add(Filters.fromJson(v));
      });
    }
    if (json['product_details'] != null) {
      productDetails = <ProductDetails>[];
      json['product_details'].forEach((v) {
        productDetails!.add(ProductDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['slug'] = slug;
    data['short_description'] = shortDescription;
    data['style'] = style;
    data['product_ids'] = productIds;
    data['row_order'] = rowOrder;
    data['categories'] = categories;
    data['product_type'] = productType;
    data['seo_page_title'] = seoPageTitle;
    data['seo_meta_keywords'] = seoMetaKeywords;
    data['seo_meta_description'] = seoMetaDescription;
    data['seo_og_image'] = seoOgImage;
    data['date_added'] = dateAdded;
    data['total'] = total;
    if (filters != null) {
      data['filters'] = filters!.map((v) => v.toJson()).toList();
    }
    if (productDetails != null) {
      data['product_details'] =
          productDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Filters {
  String? attributeValues;
  String? attributeValuesId;
  String? name;
  String? swatcheType;
  String? swatcheValue;

  Filters(
      {this.attributeValues,
      this.attributeValuesId,
      this.name,
      this.swatcheType,
      this.swatcheValue});

  Filters.fromJson(Map<String, dynamic> json) {
    attributeValues = json['attribute_values'];
    attributeValuesId = json['attribute_values_id'];
    name = json['name'];
    swatcheType = json['swatche_type'];
    swatcheValue = json['swatche_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['attribute_values'] = attributeValues;
    data['attribute_values_id'] = attributeValuesId;
    data['name'] = name;
    data['swatche_type'] = swatcheType;
    data['swatche_value'] = swatcheValue;
    return data;
  }
}

class ProductDetails {
  String? sales;
  String? stockType;
  String? isPricesInclusiveTax;
  String? type;
  String? lowStockLimit;
  String? attrValueIds;
  String? sellerRating;
  String? sellerSlug;
  String? sellerSeoPageTitle;
  String? sellerSeoMetaKeywords;
  String? sellerSeoMetaDescription;
  String? sellerSeoOgImage;
  dynamic caregorySeoPageTitle;
  dynamic caregorySeoMetaKeywords;
  dynamic caregorySeoMetaDescription;
  dynamic caregorySeoOgImage;
  String? productSeoPageTitle;
  String? productSeoMetaKeywords;
  String? productSeoMetaDescription;
  String? productSeoOgImage;
  String? sellerNoOfRatings;
  String? sellerProfile;
  String? storeName;
  String? storeDescription;
  String? sellerId;
  String? sellerName;
  String? id;
  String? stock;
  String? productVariantStock;
  String? name;
  String? specialPrice;
  String? categoryId;
  String? attributeOrder;
  String? shortDescription;
  String? slug;
  String? description;
  String? extraDescription;
  String? totalAllowedQuantity;
  String? status;
  String? deliverableType;
  String? isAttachmentRequired;
  String? deliverableZipcodes;
  String? deliverableCities;
  String? deliverableCityType;
  String? minimumOrderQuantity;
  String? sku;
  String? quantityStepSize;
  String? codAllowed;
  String? rowOrder;
  String? rating;
  String? noOfRatings;
  String? image;
  String? isReturnable;
  String? isCancelable;
  String? cancelableTill;
  String? indicator;
  List<String>? otherImages;
  String? videoType;
  String? video;
  List<String>? tags;
  String? warrantyPeriod;
  String? guaranteePeriod;
  String? madeIn;
  String? hsnCode;
  String? downloadAllowed;
  String? downloadType;
  String? downloadLink;
  String? pickupLocation;
  String? productBrand;
  String? brandId;
  String? brand;
  String? brandImage;
  String? availability;
  String? productSlug;
  String? brandSlug;
  String? categoryName;
  String? categorySlug;
  String? taxPercentage;
  String? taxIds;
  String? taxId;
  String? minPrice;
  num? totalTaxPercentage;
  List<Variants>? variants;
  String? totalStock;
  MinMaxPrice? minMaxPrice;
  String? relativePath;
  String? deliverableZipcodesIds;
  bool? isDeliverable;
  String? isFavorite;
  String? imageMd;
  String? imageSm;
  List<String>? otherImagesMd;
  List<String>? otherImagesSm;

  ProductDetails(
      {this.sales,
      this.stockType,
      this.isPricesInclusiveTax,
      this.type,
      this.lowStockLimit,
      this.attrValueIds,
      this.sellerRating,
      this.sellerSlug,
      this.sellerSeoPageTitle,
      this.sellerSeoMetaKeywords,
      this.sellerSeoMetaDescription,
      this.sellerSeoOgImage,
      this.caregorySeoPageTitle,
      this.caregorySeoMetaKeywords,
      this.caregorySeoMetaDescription,
      this.caregorySeoOgImage,
      this.productSeoPageTitle,
      this.productSeoMetaKeywords,
      this.productSeoMetaDescription,
      this.productSeoOgImage,
      this.sellerNoOfRatings,
      this.sellerProfile,
      this.storeName,
      this.storeDescription,
      this.sellerId,
      this.sellerName,
      this.id,
      this.stock,
      this.productVariantStock,
      this.name,
      this.specialPrice,
      this.categoryId,
      this.attributeOrder,
      this.shortDescription,
      this.slug,
      this.description,
      this.extraDescription,
      this.totalAllowedQuantity,
      this.status,
      this.deliverableType,
      this.isAttachmentRequired,
      this.deliverableZipcodes,
      this.deliverableCities,
      this.deliverableCityType,
      this.minimumOrderQuantity,
      this.sku,
      this.quantityStepSize,
      this.codAllowed,
      this.rowOrder,
      this.rating,
      this.noOfRatings,
      this.image,
      this.isReturnable,
      this.isCancelable,
      this.cancelableTill,
      this.indicator,
      this.otherImages,
      this.videoType,
      this.video,
      this.tags,
      this.warrantyPeriod,
      this.guaranteePeriod,
      this.madeIn,
      this.hsnCode,
      this.downloadAllowed,
      this.downloadType,
      this.downloadLink,
      this.pickupLocation,
      this.productBrand,
      this.brandId,
      this.brand,
      this.brandImage,
      this.availability,
      this.productSlug,
      this.brandSlug,
      this.categoryName,
      this.categorySlug,
      this.taxPercentage,
      this.taxIds,
      this.taxId,
      this.minPrice,
      this.totalTaxPercentage,
      this.variants,
      this.totalStock,
      this.minMaxPrice,
      this.relativePath,
      this.deliverableZipcodesIds,
      this.isDeliverable,
      this.isFavorite,
      this.imageMd,
      this.imageSm,
      this.otherImagesMd,
      this.otherImagesSm});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    sales = json['sales'];
    stockType = json['stock_type'];
    isPricesInclusiveTax = json['is_prices_inclusive_tax'];
    type = json['type'];
    lowStockLimit = json['low_stock_limit'];
    attrValueIds = json['attr_value_ids'];
    sellerRating = json['seller_rating'];
    sellerSlug = json['seller_slug'];
    sellerSeoPageTitle = json['seller_seo_page_title'];
    sellerSeoMetaKeywords = json['seller_seo_meta_keywords'];
    sellerSeoMetaDescription = json['seller_seo_meta_description'];
    sellerSeoOgImage = json['seller_seo_og_image'];
    caregorySeoPageTitle = json['caregory_seo_page_title'];
    caregorySeoMetaKeywords = json['caregory_seo_meta_keywords'];
    caregorySeoMetaDescription = json['caregory_seo_meta_description'];
    caregorySeoOgImage = json['caregory_seo_og_image'];
    productSeoPageTitle = json['product_seo_page_title'];
    productSeoMetaKeywords = json['product_seo_meta_keywords'];
    productSeoMetaDescription = json['product_seo_meta_description'];
    productSeoOgImage = json['product_seo_og_image'];
    sellerNoOfRatings = json['seller_no_of_ratings'];
    sellerProfile = json['seller_profile'];
    storeName = json['store_name'];
    storeDescription = json['store_description'];
    sellerId = json['seller_id'];
    sellerName = json['seller_name'];
    id = json['id'];
    stock = json['stock'];
    productVariantStock = json['product_variant_stock'];
    name = json['name'];
    specialPrice = json['special_price'];
    categoryId = json['category_id'];
    attributeOrder = json['attribute_order'];
    shortDescription = json['short_description'];
    slug = json['slug'];
    description = json['description'];
    extraDescription = json['extra_description'];
    totalAllowedQuantity = json['total_allowed_quantity'];
    status = json['status'];
    deliverableType = json['deliverable_type'];
    isAttachmentRequired = json['is_attachment_required'];
    deliverableZipcodes = json['deliverable_zipcodes'];
    deliverableCities = json['deliverable_cities'];
    deliverableCityType = json['deliverable_city_type'];
    minimumOrderQuantity = json['minimum_order_quantity'];
    sku = json['sku'];
    quantityStepSize = json['quantity_step_size'];
    codAllowed = json['cod_allowed'];
    rowOrder = json['row_order'];
    rating = json['rating'];
    noOfRatings = json['no_of_ratings'];
    image = json['image'];
    isReturnable = json['is_returnable'];
    isCancelable = json['is_cancelable'];
    cancelableTill = json['cancelable_till'];
    indicator = json['indicator'];
    otherImages = json['other_images'].cast<String>();
    videoType = json['video_type'];
    video = json['video'];
    tags = json['tags'].cast<String>();
    warrantyPeriod = json['warranty_period'];
    guaranteePeriod = json['guarantee_period'];
    madeIn = json['made_in'];
    hsnCode = json['hsn_code'];
    downloadAllowed = json['download_allowed'];
    downloadType = json['download_type'];
    downloadLink = json['download_link'];
    pickupLocation = json['pickup_location'];
    productBrand = json['product_brand'];
    brandId = json['brand_id'];
    brand = json['brand'];
    brandImage = json['brand_image'];
    availability = json['availability'];
    productSlug = json['product_slug'];
    brandSlug = json['brand_slug'];
    categoryName = json['category_name'];
    categorySlug = json['category_slug'];
    taxPercentage = json['tax_percentage'];
    taxIds = json['tax_ids'];
    taxId = json['tax_id'];
    minPrice = json['min_price'];
    totalTaxPercentage = json['total_tax_percentage'];
    if (json['variants'] != null) {
      variants = <Variants>[];
      json['variants'].forEach((v) {
        variants!.add(Variants.fromJson(v));
      });
    }
    totalStock = json['total_stock'];
    minMaxPrice = json['min_max_price'] != null
        ? MinMaxPrice.fromJson(json['min_max_price'])
        : null;
    relativePath = json['relative_path'];
    deliverableZipcodesIds = json['deliverable_zipcodes_ids'];
    isDeliverable = json['is_deliverable'];
    isFavorite = json['is_favorite'];
    imageMd = json['image_md'];
    imageSm = json['image_sm'];
    otherImagesMd = json['other_images_md'].cast<String>();
    otherImagesSm = json['other_images_sm'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sales'] = sales;
    data['stock_type'] = stockType;
    data['is_prices_inclusive_tax'] = isPricesInclusiveTax;
    data['type'] = type;
    data['low_stock_limit'] = lowStockLimit;
    data['attr_value_ids'] = attrValueIds;
    data['seller_rating'] = sellerRating;
    data['seller_slug'] = sellerSlug;
    data['seller_seo_page_title'] = sellerSeoPageTitle;
    data['seller_seo_meta_keywords'] = sellerSeoMetaKeywords;
    data['seller_seo_meta_description'] = sellerSeoMetaDescription;
    data['seller_seo_og_image'] = sellerSeoOgImage;
    data['caregory_seo_page_title'] = caregorySeoPageTitle;
    data['caregory_seo_meta_keywords'] = caregorySeoMetaKeywords;
    data['caregory_seo_meta_description'] = caregorySeoMetaDescription;
    data['caregory_seo_og_image'] = caregorySeoOgImage;
    data['product_seo_page_title'] = productSeoPageTitle;
    data['product_seo_meta_keywords'] = productSeoMetaKeywords;
    data['product_seo_meta_description'] = productSeoMetaDescription;
    data['product_seo_og_image'] = productSeoOgImage;
    data['seller_no_of_ratings'] = sellerNoOfRatings;
    data['seller_profile'] = sellerProfile;
    data['store_name'] = storeName;
    data['store_description'] = storeDescription;
    data['seller_id'] = sellerId;
    data['seller_name'] = sellerName;
    data['id'] = id;
    data['stock'] = stock;
    data['product_variant_stock'] = productVariantStock;
    data['name'] = name;
    data['special_price'] = specialPrice;
    data['category_id'] = categoryId;
    data['attribute_order'] = attributeOrder;
    data['short_description'] = shortDescription;
    data['slug'] = slug;
    data['description'] = description;
    data['extra_description'] = extraDescription;
    data['total_allowed_quantity'] = totalAllowedQuantity;
    data['status'] = status;
    data['deliverable_type'] = deliverableType;
    data['is_attachment_required'] = isAttachmentRequired;
    data['deliverable_zipcodes'] = deliverableZipcodes;
    data['deliverable_cities'] = deliverableCities;
    data['deliverable_city_type'] = deliverableCityType;
    data['minimum_order_quantity'] = minimumOrderQuantity;
    data['sku'] = sku;
    data['quantity_step_size'] = quantityStepSize;
    data['cod_allowed'] = codAllowed;
    data['row_order'] = rowOrder;
    data['rating'] = rating;
    data['no_of_ratings'] = noOfRatings;
    data['image'] = image;
    data['is_returnable'] = isReturnable;
    data['is_cancelable'] = isCancelable;
    data['cancelable_till'] = cancelableTill;
    data['indicator'] = indicator;
    data['other_images'] = otherImages;
    data['video_type'] = videoType;
    data['video'] = video;
    data['tags'] = tags;
    data['warranty_period'] = warrantyPeriod;
    data['guarantee_period'] = guaranteePeriod;
    data['made_in'] = madeIn;
    data['hsn_code'] = hsnCode;
    data['download_allowed'] = downloadAllowed;
    data['download_type'] = downloadType;
    data['download_link'] = downloadLink;
    data['pickup_location'] = pickupLocation;
    data['product_brand'] = productBrand;
    data['brand_id'] = brandId;
    data['brand'] = brand;
    data['brand_image'] = brandImage;
    data['availability'] = availability;
    data['product_slug'] = productSlug;
    data['brand_slug'] = brandSlug;
    data['category_name'] = categoryName;
    data['category_slug'] = categorySlug;
    data['tax_percentage'] = taxPercentage;
    data['tax_ids'] = taxIds;
    data['tax_id'] = taxId;
    data['min_price'] = minPrice;
    data['total_tax_percentage'] = totalTaxPercentage;
    if (variants != null) {
      data['variants'] = variants!.map((v) => v.toJson()).toList();
    }
    data['total_stock'] = totalStock;
    if (minMaxPrice != null) {
      data['min_max_price'] = minMaxPrice!.toJson();
    }
    data['relative_path'] = relativePath;
    data['deliverable_zipcodes_ids'] = deliverableZipcodesIds;
    data['is_deliverable'] = isDeliverable;
    data['is_favorite'] = isFavorite;
    data['image_md'] = imageMd;
    data['image_sm'] = imageSm;
    data['other_images_md'] = otherImagesMd;
    data['other_images_sm'] = otherImagesSm;
    return data;
  }
}

class Variants {
  String? id;
  String? productId;
  String? attributeValueIds;
  String? attributeSet;
  String? price;
  String? specialPrice;
  String? sku;
  String? stock;
  String? weight;
  String? height;
  String? breadth;
  String? length;
  List<dynamic>? images;
  String? availability;
  String? status;
  String? dateAdded;
  String? finalTaxedPrice;
  String? variantIds;
  String? attrName;
  String? variantValues;
  String? swatcheType;
  String? swatcheValue;
  List<dynamic>? imagesMd;
  List<dynamic>? imagesSm;
  List<dynamic>? variantRelativePath;
  String? orignalPrice;
  String? orignalSpecialPrice;
  String? cartCount;

  Variants(
      {this.id,
      this.productId,
      this.attributeValueIds,
      this.attributeSet,
      this.price,
      this.specialPrice,
      this.sku,
      this.stock,
      this.weight,
      this.height,
      this.breadth,
      this.length,
      this.images,
      this.availability,
      this.status,
      this.dateAdded,
      this.finalTaxedPrice,
      this.variantIds,
      this.attrName,
      this.variantValues,
      this.swatcheType,
      this.swatcheValue,
      this.imagesMd,
      this.imagesSm,
      this.variantRelativePath,
      this.orignalPrice,
      this.orignalSpecialPrice,
      this.cartCount});

  Variants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    attributeValueIds = json['attribute_value_ids'];
    attributeSet = json['attribute_set'];
    price = json['price'];
    specialPrice = json['special_price'];
    sku = json['sku'];
    stock = json['stock'];
    weight = json['weight'];
    height = json['height'];
    breadth = json['breadth'];
    length = json['length'];
    availability = json['availability'];
    status = json['status'];
    dateAdded = json['date_added'];
    finalTaxedPrice = json['final_taxed_price'];
    variantIds = json['variant_ids'];
    attrName = json['attr_name'];
    variantValues = json['variant_values'];
    swatcheType = json['swatche_type'];
    swatcheValue = json['swatche_value'];
    orignalPrice = json['orignal_price'];
    orignalSpecialPrice = json['orignal_special_price'];
    cartCount = json['cart_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_id'] = productId;
    data['attribute_value_ids'] = attributeValueIds;
    data['attribute_set'] = attributeSet;
    data['price'] = price;
    data['special_price'] = specialPrice;
    data['sku'] = sku;
    data['stock'] = stock;
    data['weight'] = weight;
    data['height'] = height;
    data['breadth'] = breadth;
    data['length'] = length;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['availability'] = availability;
    data['status'] = status;
    data['date_added'] = dateAdded;
    data['final_taxed_price'] = finalTaxedPrice;
    data['variant_ids'] = variantIds;
    data['attr_name'] = attrName;
    data['variant_values'] = variantValues;
    data['swatche_type'] = swatcheType;
    data['swatche_value'] = swatcheValue;
    if (imagesMd != null) {
      data['images_md'] = imagesMd!.map((v) => v.toJson()).toList();
    }
    if (imagesSm != null) {
      data['images_sm'] = imagesSm!.map((v) => v.toJson()).toList();
    }
    if (variantRelativePath != null) {
      data['variant_relative_path'] =
          variantRelativePath!.map((v) => v.toJson()).toList();
    }
    data['orignal_price'] = orignalPrice;
    data['orignal_special_price'] = orignalSpecialPrice;
    data['cart_count'] = cartCount;
    return data;
  }
}

class MinMaxPrice {
  num? minPrice;
  num? maxPrice;
  num? specialPrice;
  num? maxSpecialPrice;
  num? discountInPercentage;

  MinMaxPrice(
      {this.minPrice,
      this.maxPrice,
      this.specialPrice,
      this.maxSpecialPrice,
      this.discountInPercentage});

  MinMaxPrice.fromJson(Map<String, dynamic> json) {
    minPrice = json['min_price'];
    maxPrice = json['max_price'];
    specialPrice = json['special_price'];
    maxSpecialPrice = json['max_special_price'];
    discountInPercentage = json['discount_in_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min_price'] = minPrice;
    data['max_price'] = maxPrice;
    data['special_price'] = specialPrice;
    data['max_special_price'] = maxSpecialPrice;
    data['discount_in_percentage'] = discountInPercentage;
    return data;
  }
}
