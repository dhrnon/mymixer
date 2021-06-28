// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mixin_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Addresse extends DataClass implements Insertable<Addresse> {
  final String addressId;
  final String type;
  final String assetId;
  final String? publicKey;
  final String? label;
  final DateTime updatedAt;
  final String reserve;
  final String fee;
  final String? accountName;
  final String? accountTag;
  final String? dust;
  Addresse(
      {required this.addressId,
      required this.type,
      required this.assetId,
      this.publicKey,
      this.label,
      required this.updatedAt,
      required this.reserve,
      required this.fee,
      this.accountName,
      this.accountTag,
      this.dust});
  factory Addresse.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Addresse(
      addressId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address_id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      assetId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}asset_id'])!,
      publicKey: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}public_key']),
      label: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}label']),
      updatedAt: Addresses.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']))!,
      reserve: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reserve'])!,
      fee: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fee'])!,
      accountName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}account_name']),
      accountTag: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}account_tag']),
      dust: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dust']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['address_id'] = Variable<String>(addressId);
    map['type'] = Variable<String>(type);
    map['asset_id'] = Variable<String>(assetId);
    if (!nullToAbsent || publicKey != null) {
      map['public_key'] = Variable<String?>(publicKey);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String?>(label);
    }
    {
      final converter = Addresses.$converter0;
      map['updated_at'] = Variable<int>(converter.mapToSql(updatedAt)!);
    }
    map['reserve'] = Variable<String>(reserve);
    map['fee'] = Variable<String>(fee);
    if (!nullToAbsent || accountName != null) {
      map['account_name'] = Variable<String?>(accountName);
    }
    if (!nullToAbsent || accountTag != null) {
      map['account_tag'] = Variable<String?>(accountTag);
    }
    if (!nullToAbsent || dust != null) {
      map['dust'] = Variable<String?>(dust);
    }
    return map;
  }

  AddressesCompanion toCompanion(bool nullToAbsent) {
    return AddressesCompanion(
      addressId: Value(addressId),
      type: Value(type),
      assetId: Value(assetId),
      publicKey: publicKey == null && nullToAbsent
          ? const Value.absent()
          : Value(publicKey),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      updatedAt: Value(updatedAt),
      reserve: Value(reserve),
      fee: Value(fee),
      accountName: accountName == null && nullToAbsent
          ? const Value.absent()
          : Value(accountName),
      accountTag: accountTag == null && nullToAbsent
          ? const Value.absent()
          : Value(accountTag),
      dust: dust == null && nullToAbsent ? const Value.absent() : Value(dust),
    );
  }

  factory Addresse.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Addresse(
      addressId: serializer.fromJson<String>(json['address_id']),
      type: serializer.fromJson<String>(json['type']),
      assetId: serializer.fromJson<String>(json['asset_id']),
      publicKey: serializer.fromJson<String?>(json['public_key']),
      label: serializer.fromJson<String?>(json['label']),
      updatedAt: serializer.fromJson<DateTime>(json['updated_at']),
      reserve: serializer.fromJson<String>(json['reserve']),
      fee: serializer.fromJson<String>(json['fee']),
      accountName: serializer.fromJson<String?>(json['account_name']),
      accountTag: serializer.fromJson<String?>(json['account_tag']),
      dust: serializer.fromJson<String?>(json['dust']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'address_id': serializer.toJson<String>(addressId),
      'type': serializer.toJson<String>(type),
      'asset_id': serializer.toJson<String>(assetId),
      'public_key': serializer.toJson<String?>(publicKey),
      'label': serializer.toJson<String?>(label),
      'updated_at': serializer.toJson<DateTime>(updatedAt),
      'reserve': serializer.toJson<String>(reserve),
      'fee': serializer.toJson<String>(fee),
      'account_name': serializer.toJson<String?>(accountName),
      'account_tag': serializer.toJson<String?>(accountTag),
      'dust': serializer.toJson<String?>(dust),
    };
  }

  Addresse copyWith(
          {String? addressId,
          String? type,
          String? assetId,
          String? publicKey,
          String? label,
          DateTime? updatedAt,
          String? reserve,
          String? fee,
          String? accountName,
          String? accountTag,
          String? dust}) =>
      Addresse(
        addressId: addressId ?? this.addressId,
        type: type ?? this.type,
        assetId: assetId ?? this.assetId,
        publicKey: publicKey ?? this.publicKey,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt,
        reserve: reserve ?? this.reserve,
        fee: fee ?? this.fee,
        accountName: accountName ?? this.accountName,
        accountTag: accountTag ?? this.accountTag,
        dust: dust ?? this.dust,
      );
  @override
  String toString() {
    return (StringBuffer('Addresse(')
          ..write('addressId: $addressId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('publicKey: $publicKey, ')
          ..write('label: $label, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('reserve: $reserve, ')
          ..write('fee: $fee, ')
          ..write('accountName: $accountName, ')
          ..write('accountTag: $accountTag, ')
          ..write('dust: $dust')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      addressId.hashCode,
      $mrjc(
          type.hashCode,
          $mrjc(
              assetId.hashCode,
              $mrjc(
                  publicKey.hashCode,
                  $mrjc(
                      label.hashCode,
                      $mrjc(
                          updatedAt.hashCode,
                          $mrjc(
                              reserve.hashCode,
                              $mrjc(
                                  fee.hashCode,
                                  $mrjc(
                                      accountName.hashCode,
                                      $mrjc(accountTag.hashCode,
                                          dust.hashCode)))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Addresse &&
          other.addressId == this.addressId &&
          other.type == this.type &&
          other.assetId == this.assetId &&
          other.publicKey == this.publicKey &&
          other.label == this.label &&
          other.updatedAt == this.updatedAt &&
          other.reserve == this.reserve &&
          other.fee == this.fee &&
          other.accountName == this.accountName &&
          other.accountTag == this.accountTag &&
          other.dust == this.dust);
}

class AddressesCompanion extends UpdateCompanion<Addresse> {
  final Value<String> addressId;
  final Value<String> type;
  final Value<String> assetId;
  final Value<String?> publicKey;
  final Value<String?> label;
  final Value<DateTime> updatedAt;
  final Value<String> reserve;
  final Value<String> fee;
  final Value<String?> accountName;
  final Value<String?> accountTag;
  final Value<String?> dust;
  const AddressesCompanion({
    this.addressId = const Value.absent(),
    this.type = const Value.absent(),
    this.assetId = const Value.absent(),
    this.publicKey = const Value.absent(),
    this.label = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.reserve = const Value.absent(),
    this.fee = const Value.absent(),
    this.accountName = const Value.absent(),
    this.accountTag = const Value.absent(),
    this.dust = const Value.absent(),
  });
  AddressesCompanion.insert({
    required String addressId,
    required String type,
    required String assetId,
    this.publicKey = const Value.absent(),
    this.label = const Value.absent(),
    required DateTime updatedAt,
    required String reserve,
    required String fee,
    this.accountName = const Value.absent(),
    this.accountTag = const Value.absent(),
    this.dust = const Value.absent(),
  })  : addressId = Value(addressId),
        type = Value(type),
        assetId = Value(assetId),
        updatedAt = Value(updatedAt),
        reserve = Value(reserve),
        fee = Value(fee);
  static Insertable<Addresse> custom({
    Expression<String>? addressId,
    Expression<String>? type,
    Expression<String>? assetId,
    Expression<String?>? publicKey,
    Expression<String?>? label,
    Expression<DateTime>? updatedAt,
    Expression<String>? reserve,
    Expression<String>? fee,
    Expression<String?>? accountName,
    Expression<String?>? accountTag,
    Expression<String?>? dust,
  }) {
    return RawValuesInsertable({
      if (addressId != null) 'address_id': addressId,
      if (type != null) 'type': type,
      if (assetId != null) 'asset_id': assetId,
      if (publicKey != null) 'public_key': publicKey,
      if (label != null) 'label': label,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (reserve != null) 'reserve': reserve,
      if (fee != null) 'fee': fee,
      if (accountName != null) 'account_name': accountName,
      if (accountTag != null) 'account_tag': accountTag,
      if (dust != null) 'dust': dust,
    });
  }

  AddressesCompanion copyWith(
      {Value<String>? addressId,
      Value<String>? type,
      Value<String>? assetId,
      Value<String?>? publicKey,
      Value<String?>? label,
      Value<DateTime>? updatedAt,
      Value<String>? reserve,
      Value<String>? fee,
      Value<String?>? accountName,
      Value<String?>? accountTag,
      Value<String?>? dust}) {
    return AddressesCompanion(
      addressId: addressId ?? this.addressId,
      type: type ?? this.type,
      assetId: assetId ?? this.assetId,
      publicKey: publicKey ?? this.publicKey,
      label: label ?? this.label,
      updatedAt: updatedAt ?? this.updatedAt,
      reserve: reserve ?? this.reserve,
      fee: fee ?? this.fee,
      accountName: accountName ?? this.accountName,
      accountTag: accountTag ?? this.accountTag,
      dust: dust ?? this.dust,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (addressId.present) {
      map['address_id'] = Variable<String>(addressId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (publicKey.present) {
      map['public_key'] = Variable<String?>(publicKey.value);
    }
    if (label.present) {
      map['label'] = Variable<String?>(label.value);
    }
    if (updatedAt.present) {
      final converter = Addresses.$converter0;
      map['updated_at'] = Variable<int>(converter.mapToSql(updatedAt.value)!);
    }
    if (reserve.present) {
      map['reserve'] = Variable<String>(reserve.value);
    }
    if (fee.present) {
      map['fee'] = Variable<String>(fee.value);
    }
    if (accountName.present) {
      map['account_name'] = Variable<String?>(accountName.value);
    }
    if (accountTag.present) {
      map['account_tag'] = Variable<String?>(accountTag.value);
    }
    if (dust.present) {
      map['dust'] = Variable<String?>(dust.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressesCompanion(')
          ..write('addressId: $addressId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('publicKey: $publicKey, ')
          ..write('label: $label, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('reserve: $reserve, ')
          ..write('fee: $fee, ')
          ..write('accountName: $accountName, ')
          ..write('accountTag: $accountTag, ')
          ..write('dust: $dust')
          ..write(')'))
        .toString();
  }
}

class Addresses extends Table with TableInfo<Addresses, Addresse> {
  final GeneratedDatabase _db;
  final String? _alias;
  Addresses(this._db, [this._alias]);
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  late final GeneratedTextColumn addressId = _constructAddressId();
  GeneratedTextColumn _constructAddressId() {
    return GeneratedTextColumn('address_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedTextColumn type = _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn('type', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedTextColumn assetId = _constructAssetId();
  GeneratedTextColumn _constructAssetId() {
    return GeneratedTextColumn('asset_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _publicKeyMeta = const VerificationMeta('publicKey');
  late final GeneratedTextColumn publicKey = _constructPublicKey();
  GeneratedTextColumn _constructPublicKey() {
    return GeneratedTextColumn('public_key', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _labelMeta = const VerificationMeta('label');
  late final GeneratedTextColumn label = _constructLabel();
  GeneratedTextColumn _constructLabel() {
    return GeneratedTextColumn('label', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedIntColumn updatedAt = _constructUpdatedAt();
  GeneratedIntColumn _constructUpdatedAt() {
    return GeneratedIntColumn('updated_at', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _reserveMeta = const VerificationMeta('reserve');
  late final GeneratedTextColumn reserve = _constructReserve();
  GeneratedTextColumn _constructReserve() {
    return GeneratedTextColumn('reserve', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _feeMeta = const VerificationMeta('fee');
  late final GeneratedTextColumn fee = _constructFee();
  GeneratedTextColumn _constructFee() {
    return GeneratedTextColumn('fee', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _accountNameMeta =
      const VerificationMeta('accountName');
  late final GeneratedTextColumn accountName = _constructAccountName();
  GeneratedTextColumn _constructAccountName() {
    return GeneratedTextColumn('account_name', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _accountTagMeta = const VerificationMeta('accountTag');
  late final GeneratedTextColumn accountTag = _constructAccountTag();
  GeneratedTextColumn _constructAccountTag() {
    return GeneratedTextColumn('account_tag', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _dustMeta = const VerificationMeta('dust');
  late final GeneratedTextColumn dust = _constructDust();
  GeneratedTextColumn _constructDust() {
    return GeneratedTextColumn('dust', $tableName, true,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        addressId,
        type,
        assetId,
        publicKey,
        label,
        updatedAt,
        reserve,
        fee,
        accountName,
        accountTag,
        dust
      ];
  @override
  Addresses get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'addresses';
  @override
  final String actualTableName = 'addresses';
  @override
  VerificationContext validateIntegrity(Insertable<Addresse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('address_id')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['address_id']!, _addressIdMeta));
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('public_key')) {
      context.handle(_publicKeyMeta,
          publicKey.isAcceptableOrUnknown(data['public_key']!, _publicKeyMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    context.handle(_updatedAtMeta, const VerificationResult.success());
    if (data.containsKey('reserve')) {
      context.handle(_reserveMeta,
          reserve.isAcceptableOrUnknown(data['reserve']!, _reserveMeta));
    } else if (isInserting) {
      context.missing(_reserveMeta);
    }
    if (data.containsKey('fee')) {
      context.handle(
          _feeMeta, fee.isAcceptableOrUnknown(data['fee']!, _feeMeta));
    } else if (isInserting) {
      context.missing(_feeMeta);
    }
    if (data.containsKey('account_name')) {
      context.handle(
          _accountNameMeta,
          accountName.isAcceptableOrUnknown(
              data['account_name']!, _accountNameMeta));
    }
    if (data.containsKey('account_tag')) {
      context.handle(
          _accountTagMeta,
          accountTag.isAcceptableOrUnknown(
              data['account_tag']!, _accountTagMeta));
    }
    if (data.containsKey('dust')) {
      context.handle(
          _dustMeta, dust.isAcceptableOrUnknown(data['dust']!, _dustMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {addressId};
  @override
  Addresse map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Addresse.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Addresses createAlias(String alias) {
    return Addresses(_db, alias);
  }

  static TypeConverter<DateTime, int> $converter0 = const MillisDateConverter();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(address_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Asset extends DataClass implements Insertable<Asset> {
  final String assetId;
  final String symbol;
  final String name;
  final String iconUrl;
  final String balance;
  final String destination;
  final String? tag;
  final String priceBtc;
  final String priceUsd;
  final String chainId;
  final String changeUsd;
  final String changeBtc;
  final int confirmations;
  final String? assetKey;
  Asset(
      {required this.assetId,
      required this.symbol,
      required this.name,
      required this.iconUrl,
      required this.balance,
      required this.destination,
      this.tag,
      required this.priceBtc,
      required this.priceUsd,
      required this.chainId,
      required this.changeUsd,
      required this.changeBtc,
      required this.confirmations,
      this.assetKey});
  factory Asset.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Asset(
      assetId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}asset_id'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}symbol'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      iconUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon_url'])!,
      balance: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}balance'])!,
      destination: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}destination'])!,
      tag: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tag']),
      priceBtc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price_btc'])!,
      priceUsd: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price_usd'])!,
      chainId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}chain_id'])!,
      changeUsd: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}change_usd'])!,
      changeBtc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}change_btc'])!,
      confirmations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}confirmations'])!,
      assetKey: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}asset_key']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['asset_id'] = Variable<String>(assetId);
    map['symbol'] = Variable<String>(symbol);
    map['name'] = Variable<String>(name);
    map['icon_url'] = Variable<String>(iconUrl);
    map['balance'] = Variable<String>(balance);
    map['destination'] = Variable<String>(destination);
    if (!nullToAbsent || tag != null) {
      map['tag'] = Variable<String?>(tag);
    }
    map['price_btc'] = Variable<String>(priceBtc);
    map['price_usd'] = Variable<String>(priceUsd);
    map['chain_id'] = Variable<String>(chainId);
    map['change_usd'] = Variable<String>(changeUsd);
    map['change_btc'] = Variable<String>(changeBtc);
    map['confirmations'] = Variable<int>(confirmations);
    if (!nullToAbsent || assetKey != null) {
      map['asset_key'] = Variable<String?>(assetKey);
    }
    return map;
  }

  AssetsCompanion toCompanion(bool nullToAbsent) {
    return AssetsCompanion(
      assetId: Value(assetId),
      symbol: Value(symbol),
      name: Value(name),
      iconUrl: Value(iconUrl),
      balance: Value(balance),
      destination: Value(destination),
      tag: tag == null && nullToAbsent ? const Value.absent() : Value(tag),
      priceBtc: Value(priceBtc),
      priceUsd: Value(priceUsd),
      chainId: Value(chainId),
      changeUsd: Value(changeUsd),
      changeBtc: Value(changeBtc),
      confirmations: Value(confirmations),
      assetKey: assetKey == null && nullToAbsent
          ? const Value.absent()
          : Value(assetKey),
    );
  }

  factory Asset.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Asset(
      assetId: serializer.fromJson<String>(json['asset_id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      iconUrl: serializer.fromJson<String>(json['icon_url']),
      balance: serializer.fromJson<String>(json['balance']),
      destination: serializer.fromJson<String>(json['destination']),
      tag: serializer.fromJson<String?>(json['tag']),
      priceBtc: serializer.fromJson<String>(json['price_btc']),
      priceUsd: serializer.fromJson<String>(json['price_usd']),
      chainId: serializer.fromJson<String>(json['chain_id']),
      changeUsd: serializer.fromJson<String>(json['change_usd']),
      changeBtc: serializer.fromJson<String>(json['change_btc']),
      confirmations: serializer.fromJson<int>(json['confirmations']),
      assetKey: serializer.fromJson<String?>(json['asset_key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'asset_id': serializer.toJson<String>(assetId),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'icon_url': serializer.toJson<String>(iconUrl),
      'balance': serializer.toJson<String>(balance),
      'destination': serializer.toJson<String>(destination),
      'tag': serializer.toJson<String?>(tag),
      'price_btc': serializer.toJson<String>(priceBtc),
      'price_usd': serializer.toJson<String>(priceUsd),
      'chain_id': serializer.toJson<String>(chainId),
      'change_usd': serializer.toJson<String>(changeUsd),
      'change_btc': serializer.toJson<String>(changeBtc),
      'confirmations': serializer.toJson<int>(confirmations),
      'asset_key': serializer.toJson<String?>(assetKey),
    };
  }

  Asset copyWith(
          {String? assetId,
          String? symbol,
          String? name,
          String? iconUrl,
          String? balance,
          String? destination,
          String? tag,
          String? priceBtc,
          String? priceUsd,
          String? chainId,
          String? changeUsd,
          String? changeBtc,
          int? confirmations,
          String? assetKey}) =>
      Asset(
        assetId: assetId ?? this.assetId,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        iconUrl: iconUrl ?? this.iconUrl,
        balance: balance ?? this.balance,
        destination: destination ?? this.destination,
        tag: tag ?? this.tag,
        priceBtc: priceBtc ?? this.priceBtc,
        priceUsd: priceUsd ?? this.priceUsd,
        chainId: chainId ?? this.chainId,
        changeUsd: changeUsd ?? this.changeUsd,
        changeBtc: changeBtc ?? this.changeBtc,
        confirmations: confirmations ?? this.confirmations,
        assetKey: assetKey ?? this.assetKey,
      );
  @override
  String toString() {
    return (StringBuffer('Asset(')
          ..write('assetId: $assetId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('balance: $balance, ')
          ..write('destination: $destination, ')
          ..write('tag: $tag, ')
          ..write('priceBtc: $priceBtc, ')
          ..write('priceUsd: $priceUsd, ')
          ..write('chainId: $chainId, ')
          ..write('changeUsd: $changeUsd, ')
          ..write('changeBtc: $changeBtc, ')
          ..write('confirmations: $confirmations, ')
          ..write('assetKey: $assetKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      assetId.hashCode,
      $mrjc(
          symbol.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  iconUrl.hashCode,
                  $mrjc(
                      balance.hashCode,
                      $mrjc(
                          destination.hashCode,
                          $mrjc(
                              tag.hashCode,
                              $mrjc(
                                  priceBtc.hashCode,
                                  $mrjc(
                                      priceUsd.hashCode,
                                      $mrjc(
                                          chainId.hashCode,
                                          $mrjc(
                                              changeUsd.hashCode,
                                              $mrjc(
                                                  changeBtc.hashCode,
                                                  $mrjc(
                                                      confirmations.hashCode,
                                                      assetKey
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Asset &&
          other.assetId == this.assetId &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.iconUrl == this.iconUrl &&
          other.balance == this.balance &&
          other.destination == this.destination &&
          other.tag == this.tag &&
          other.priceBtc == this.priceBtc &&
          other.priceUsd == this.priceUsd &&
          other.chainId == this.chainId &&
          other.changeUsd == this.changeUsd &&
          other.changeBtc == this.changeBtc &&
          other.confirmations == this.confirmations &&
          other.assetKey == this.assetKey);
}

class AssetsCompanion extends UpdateCompanion<Asset> {
  final Value<String> assetId;
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> iconUrl;
  final Value<String> balance;
  final Value<String> destination;
  final Value<String?> tag;
  final Value<String> priceBtc;
  final Value<String> priceUsd;
  final Value<String> chainId;
  final Value<String> changeUsd;
  final Value<String> changeBtc;
  final Value<int> confirmations;
  final Value<String?> assetKey;
  const AssetsCompanion({
    this.assetId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.balance = const Value.absent(),
    this.destination = const Value.absent(),
    this.tag = const Value.absent(),
    this.priceBtc = const Value.absent(),
    this.priceUsd = const Value.absent(),
    this.chainId = const Value.absent(),
    this.changeUsd = const Value.absent(),
    this.changeBtc = const Value.absent(),
    this.confirmations = const Value.absent(),
    this.assetKey = const Value.absent(),
  });
  AssetsCompanion.insert({
    required String assetId,
    required String symbol,
    required String name,
    required String iconUrl,
    required String balance,
    required String destination,
    this.tag = const Value.absent(),
    required String priceBtc,
    required String priceUsd,
    required String chainId,
    required String changeUsd,
    required String changeBtc,
    required int confirmations,
    this.assetKey = const Value.absent(),
  })  : assetId = Value(assetId),
        symbol = Value(symbol),
        name = Value(name),
        iconUrl = Value(iconUrl),
        balance = Value(balance),
        destination = Value(destination),
        priceBtc = Value(priceBtc),
        priceUsd = Value(priceUsd),
        chainId = Value(chainId),
        changeUsd = Value(changeUsd),
        changeBtc = Value(changeBtc),
        confirmations = Value(confirmations);
  static Insertable<Asset> custom({
    Expression<String>? assetId,
    Expression<String>? symbol,
    Expression<String>? name,
    Expression<String>? iconUrl,
    Expression<String>? balance,
    Expression<String>? destination,
    Expression<String?>? tag,
    Expression<String>? priceBtc,
    Expression<String>? priceUsd,
    Expression<String>? chainId,
    Expression<String>? changeUsd,
    Expression<String>? changeBtc,
    Expression<int>? confirmations,
    Expression<String?>? assetKey,
  }) {
    return RawValuesInsertable({
      if (assetId != null) 'asset_id': assetId,
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (balance != null) 'balance': balance,
      if (destination != null) 'destination': destination,
      if (tag != null) 'tag': tag,
      if (priceBtc != null) 'price_btc': priceBtc,
      if (priceUsd != null) 'price_usd': priceUsd,
      if (chainId != null) 'chain_id': chainId,
      if (changeUsd != null) 'change_usd': changeUsd,
      if (changeBtc != null) 'change_btc': changeBtc,
      if (confirmations != null) 'confirmations': confirmations,
      if (assetKey != null) 'asset_key': assetKey,
    });
  }

  AssetsCompanion copyWith(
      {Value<String>? assetId,
      Value<String>? symbol,
      Value<String>? name,
      Value<String>? iconUrl,
      Value<String>? balance,
      Value<String>? destination,
      Value<String?>? tag,
      Value<String>? priceBtc,
      Value<String>? priceUsd,
      Value<String>? chainId,
      Value<String>? changeUsd,
      Value<String>? changeBtc,
      Value<int>? confirmations,
      Value<String?>? assetKey}) {
    return AssetsCompanion(
      assetId: assetId ?? this.assetId,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      balance: balance ?? this.balance,
      destination: destination ?? this.destination,
      tag: tag ?? this.tag,
      priceBtc: priceBtc ?? this.priceBtc,
      priceUsd: priceUsd ?? this.priceUsd,
      chainId: chainId ?? this.chainId,
      changeUsd: changeUsd ?? this.changeUsd,
      changeBtc: changeBtc ?? this.changeBtc,
      confirmations: confirmations ?? this.confirmations,
      assetKey: assetKey ?? this.assetKey,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (balance.present) {
      map['balance'] = Variable<String>(balance.value);
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String?>(tag.value);
    }
    if (priceBtc.present) {
      map['price_btc'] = Variable<String>(priceBtc.value);
    }
    if (priceUsd.present) {
      map['price_usd'] = Variable<String>(priceUsd.value);
    }
    if (chainId.present) {
      map['chain_id'] = Variable<String>(chainId.value);
    }
    if (changeUsd.present) {
      map['change_usd'] = Variable<String>(changeUsd.value);
    }
    if (changeBtc.present) {
      map['change_btc'] = Variable<String>(changeBtc.value);
    }
    if (confirmations.present) {
      map['confirmations'] = Variable<int>(confirmations.value);
    }
    if (assetKey.present) {
      map['asset_key'] = Variable<String?>(assetKey.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsCompanion(')
          ..write('assetId: $assetId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('balance: $balance, ')
          ..write('destination: $destination, ')
          ..write('tag: $tag, ')
          ..write('priceBtc: $priceBtc, ')
          ..write('priceUsd: $priceUsd, ')
          ..write('chainId: $chainId, ')
          ..write('changeUsd: $changeUsd, ')
          ..write('changeBtc: $changeBtc, ')
          ..write('confirmations: $confirmations, ')
          ..write('assetKey: $assetKey')
          ..write(')'))
        .toString();
  }
}

class Assets extends Table with TableInfo<Assets, Asset> {
  final GeneratedDatabase _db;
  final String? _alias;
  Assets(this._db, [this._alias]);
  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedTextColumn assetId = _constructAssetId();
  GeneratedTextColumn _constructAssetId() {
    return GeneratedTextColumn('asset_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  late final GeneratedTextColumn symbol = _constructSymbol();
  GeneratedTextColumn _constructSymbol() {
    return GeneratedTextColumn('symbol', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _iconUrlMeta = const VerificationMeta('iconUrl');
  late final GeneratedTextColumn iconUrl = _constructIconUrl();
  GeneratedTextColumn _constructIconUrl() {
    return GeneratedTextColumn('icon_url', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _balanceMeta = const VerificationMeta('balance');
  late final GeneratedTextColumn balance = _constructBalance();
  GeneratedTextColumn _constructBalance() {
    return GeneratedTextColumn('balance', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _destinationMeta =
      const VerificationMeta('destination');
  late final GeneratedTextColumn destination = _constructDestination();
  GeneratedTextColumn _constructDestination() {
    return GeneratedTextColumn('destination', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _tagMeta = const VerificationMeta('tag');
  late final GeneratedTextColumn tag = _constructTag();
  GeneratedTextColumn _constructTag() {
    return GeneratedTextColumn('tag', $tableName, true, $customConstraints: '');
  }

  final VerificationMeta _priceBtcMeta = const VerificationMeta('priceBtc');
  late final GeneratedTextColumn priceBtc = _constructPriceBtc();
  GeneratedTextColumn _constructPriceBtc() {
    return GeneratedTextColumn('price_btc', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _priceUsdMeta = const VerificationMeta('priceUsd');
  late final GeneratedTextColumn priceUsd = _constructPriceUsd();
  GeneratedTextColumn _constructPriceUsd() {
    return GeneratedTextColumn('price_usd', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _chainIdMeta = const VerificationMeta('chainId');
  late final GeneratedTextColumn chainId = _constructChainId();
  GeneratedTextColumn _constructChainId() {
    return GeneratedTextColumn('chain_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _changeUsdMeta = const VerificationMeta('changeUsd');
  late final GeneratedTextColumn changeUsd = _constructChangeUsd();
  GeneratedTextColumn _constructChangeUsd() {
    return GeneratedTextColumn('change_usd', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _changeBtcMeta = const VerificationMeta('changeBtc');
  late final GeneratedTextColumn changeBtc = _constructChangeBtc();
  GeneratedTextColumn _constructChangeBtc() {
    return GeneratedTextColumn('change_btc', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _confirmationsMeta =
      const VerificationMeta('confirmations');
  late final GeneratedIntColumn confirmations = _constructConfirmations();
  GeneratedIntColumn _constructConfirmations() {
    return GeneratedIntColumn('confirmations', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _assetKeyMeta = const VerificationMeta('assetKey');
  late final GeneratedTextColumn assetKey = _constructAssetKey();
  GeneratedTextColumn _constructAssetKey() {
    return GeneratedTextColumn('asset_key', $tableName, true,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        assetId,
        symbol,
        name,
        iconUrl,
        balance,
        destination,
        tag,
        priceBtc,
        priceUsd,
        chainId,
        changeUsd,
        changeBtc,
        confirmations,
        assetKey
      ];
  @override
  Assets get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'assets';
  @override
  final String actualTableName = 'assets';
  @override
  VerificationContext validateIntegrity(Insertable<Asset> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    } else if (isInserting) {
      context.missing(_iconUrlMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    } else if (isInserting) {
      context.missing(_balanceMeta);
    }
    if (data.containsKey('destination')) {
      context.handle(
          _destinationMeta,
          destination.isAcceptableOrUnknown(
              data['destination']!, _destinationMeta));
    } else if (isInserting) {
      context.missing(_destinationMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['tag']!, _tagMeta));
    }
    if (data.containsKey('price_btc')) {
      context.handle(_priceBtcMeta,
          priceBtc.isAcceptableOrUnknown(data['price_btc']!, _priceBtcMeta));
    } else if (isInserting) {
      context.missing(_priceBtcMeta);
    }
    if (data.containsKey('price_usd')) {
      context.handle(_priceUsdMeta,
          priceUsd.isAcceptableOrUnknown(data['price_usd']!, _priceUsdMeta));
    } else if (isInserting) {
      context.missing(_priceUsdMeta);
    }
    if (data.containsKey('chain_id')) {
      context.handle(_chainIdMeta,
          chainId.isAcceptableOrUnknown(data['chain_id']!, _chainIdMeta));
    } else if (isInserting) {
      context.missing(_chainIdMeta);
    }
    if (data.containsKey('change_usd')) {
      context.handle(_changeUsdMeta,
          changeUsd.isAcceptableOrUnknown(data['change_usd']!, _changeUsdMeta));
    } else if (isInserting) {
      context.missing(_changeUsdMeta);
    }
    if (data.containsKey('change_btc')) {
      context.handle(_changeBtcMeta,
          changeBtc.isAcceptableOrUnknown(data['change_btc']!, _changeBtcMeta));
    } else if (isInserting) {
      context.missing(_changeBtcMeta);
    }
    if (data.containsKey('confirmations')) {
      context.handle(
          _confirmationsMeta,
          confirmations.isAcceptableOrUnknown(
              data['confirmations']!, _confirmationsMeta));
    } else if (isInserting) {
      context.missing(_confirmationsMeta);
    }
    if (data.containsKey('asset_key')) {
      context.handle(_assetKeyMeta,
          assetKey.isAcceptableOrUnknown(data['asset_key']!, _assetKeyMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {assetId};
  @override
  Asset map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Asset.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Assets createAlias(String alias) {
    return Assets(_db, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(asset_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Snapshot extends DataClass implements Insertable<Snapshot> {
  final String snapshotId;
  final String type;
  final String assetId;
  final String amount;
  final DateTime createdAt;
  final String? opponentId;
  final String? transactionHash;
  final String? sender;
  final String? receiver;
  final String? memo;
  final int? confirmations;
  Snapshot(
      {required this.snapshotId,
      required this.type,
      required this.assetId,
      required this.amount,
      required this.createdAt,
      this.opponentId,
      this.transactionHash,
      this.sender,
      this.receiver,
      this.memo,
      this.confirmations});
  factory Snapshot.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Snapshot(
      snapshotId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}snapshot_id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      assetId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}asset_id'])!,
      amount: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      createdAt: Snapshots.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']))!,
      opponentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}opponent_id']),
      transactionHash: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}transaction_hash']),
      sender: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sender']),
      receiver: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}receiver']),
      memo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}memo']),
      confirmations: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}confirmations']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['snapshot_id'] = Variable<String>(snapshotId);
    map['type'] = Variable<String>(type);
    map['asset_id'] = Variable<String>(assetId);
    map['amount'] = Variable<String>(amount);
    {
      final converter = Snapshots.$converter0;
      map['created_at'] = Variable<int>(converter.mapToSql(createdAt)!);
    }
    if (!nullToAbsent || opponentId != null) {
      map['opponent_id'] = Variable<String?>(opponentId);
    }
    if (!nullToAbsent || transactionHash != null) {
      map['transaction_hash'] = Variable<String?>(transactionHash);
    }
    if (!nullToAbsent || sender != null) {
      map['sender'] = Variable<String?>(sender);
    }
    if (!nullToAbsent || receiver != null) {
      map['receiver'] = Variable<String?>(receiver);
    }
    if (!nullToAbsent || memo != null) {
      map['memo'] = Variable<String?>(memo);
    }
    if (!nullToAbsent || confirmations != null) {
      map['confirmations'] = Variable<int?>(confirmations);
    }
    return map;
  }

  SnapshotsCompanion toCompanion(bool nullToAbsent) {
    return SnapshotsCompanion(
      snapshotId: Value(snapshotId),
      type: Value(type),
      assetId: Value(assetId),
      amount: Value(amount),
      createdAt: Value(createdAt),
      opponentId: opponentId == null && nullToAbsent
          ? const Value.absent()
          : Value(opponentId),
      transactionHash: transactionHash == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionHash),
      sender:
          sender == null && nullToAbsent ? const Value.absent() : Value(sender),
      receiver: receiver == null && nullToAbsent
          ? const Value.absent()
          : Value(receiver),
      memo: memo == null && nullToAbsent ? const Value.absent() : Value(memo),
      confirmations: confirmations == null && nullToAbsent
          ? const Value.absent()
          : Value(confirmations),
    );
  }

  factory Snapshot.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Snapshot(
      snapshotId: serializer.fromJson<String>(json['snapshot_id']),
      type: serializer.fromJson<String>(json['type']),
      assetId: serializer.fromJson<String>(json['asset_id']),
      amount: serializer.fromJson<String>(json['amount']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
      opponentId: serializer.fromJson<String?>(json['opponent_id']),
      transactionHash: serializer.fromJson<String?>(json['transaction_hash']),
      sender: serializer.fromJson<String?>(json['sender']),
      receiver: serializer.fromJson<String?>(json['receiver']),
      memo: serializer.fromJson<String?>(json['memo']),
      confirmations: serializer.fromJson<int?>(json['confirmations']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'snapshot_id': serializer.toJson<String>(snapshotId),
      'type': serializer.toJson<String>(type),
      'asset_id': serializer.toJson<String>(assetId),
      'amount': serializer.toJson<String>(amount),
      'created_at': serializer.toJson<DateTime>(createdAt),
      'opponent_id': serializer.toJson<String?>(opponentId),
      'transaction_hash': serializer.toJson<String?>(transactionHash),
      'sender': serializer.toJson<String?>(sender),
      'receiver': serializer.toJson<String?>(receiver),
      'memo': serializer.toJson<String?>(memo),
      'confirmations': serializer.toJson<int?>(confirmations),
    };
  }

  Snapshot copyWith(
          {String? snapshotId,
          String? type,
          String? assetId,
          String? amount,
          DateTime? createdAt,
          String? opponentId,
          String? transactionHash,
          String? sender,
          String? receiver,
          String? memo,
          int? confirmations}) =>
      Snapshot(
        snapshotId: snapshotId ?? this.snapshotId,
        type: type ?? this.type,
        assetId: assetId ?? this.assetId,
        amount: amount ?? this.amount,
        createdAt: createdAt ?? this.createdAt,
        opponentId: opponentId ?? this.opponentId,
        transactionHash: transactionHash ?? this.transactionHash,
        sender: sender ?? this.sender,
        receiver: receiver ?? this.receiver,
        memo: memo ?? this.memo,
        confirmations: confirmations ?? this.confirmations,
      );
  @override
  String toString() {
    return (StringBuffer('Snapshot(')
          ..write('snapshotId: $snapshotId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('opponentId: $opponentId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('memo: $memo, ')
          ..write('confirmations: $confirmations')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      snapshotId.hashCode,
      $mrjc(
          type.hashCode,
          $mrjc(
              assetId.hashCode,
              $mrjc(
                  amount.hashCode,
                  $mrjc(
                      createdAt.hashCode,
                      $mrjc(
                          opponentId.hashCode,
                          $mrjc(
                              transactionHash.hashCode,
                              $mrjc(
                                  sender.hashCode,
                                  $mrjc(
                                      receiver.hashCode,
                                      $mrjc(memo.hashCode,
                                          confirmations.hashCode)))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Snapshot &&
          other.snapshotId == this.snapshotId &&
          other.type == this.type &&
          other.assetId == this.assetId &&
          other.amount == this.amount &&
          other.createdAt == this.createdAt &&
          other.opponentId == this.opponentId &&
          other.transactionHash == this.transactionHash &&
          other.sender == this.sender &&
          other.receiver == this.receiver &&
          other.memo == this.memo &&
          other.confirmations == this.confirmations);
}

class SnapshotsCompanion extends UpdateCompanion<Snapshot> {
  final Value<String> snapshotId;
  final Value<String> type;
  final Value<String> assetId;
  final Value<String> amount;
  final Value<DateTime> createdAt;
  final Value<String?> opponentId;
  final Value<String?> transactionHash;
  final Value<String?> sender;
  final Value<String?> receiver;
  final Value<String?> memo;
  final Value<int?> confirmations;
  const SnapshotsCompanion({
    this.snapshotId = const Value.absent(),
    this.type = const Value.absent(),
    this.assetId = const Value.absent(),
    this.amount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.opponentId = const Value.absent(),
    this.transactionHash = const Value.absent(),
    this.sender = const Value.absent(),
    this.receiver = const Value.absent(),
    this.memo = const Value.absent(),
    this.confirmations = const Value.absent(),
  });
  SnapshotsCompanion.insert({
    required String snapshotId,
    required String type,
    required String assetId,
    required String amount,
    required DateTime createdAt,
    this.opponentId = const Value.absent(),
    this.transactionHash = const Value.absent(),
    this.sender = const Value.absent(),
    this.receiver = const Value.absent(),
    this.memo = const Value.absent(),
    this.confirmations = const Value.absent(),
  })  : snapshotId = Value(snapshotId),
        type = Value(type),
        assetId = Value(assetId),
        amount = Value(amount),
        createdAt = Value(createdAt);
  static Insertable<Snapshot> custom({
    Expression<String>? snapshotId,
    Expression<String>? type,
    Expression<String>? assetId,
    Expression<String>? amount,
    Expression<DateTime>? createdAt,
    Expression<String?>? opponentId,
    Expression<String?>? transactionHash,
    Expression<String?>? sender,
    Expression<String?>? receiver,
    Expression<String?>? memo,
    Expression<int?>? confirmations,
  }) {
    return RawValuesInsertable({
      if (snapshotId != null) 'snapshot_id': snapshotId,
      if (type != null) 'type': type,
      if (assetId != null) 'asset_id': assetId,
      if (amount != null) 'amount': amount,
      if (createdAt != null) 'created_at': createdAt,
      if (opponentId != null) 'opponent_id': opponentId,
      if (transactionHash != null) 'transaction_hash': transactionHash,
      if (sender != null) 'sender': sender,
      if (receiver != null) 'receiver': receiver,
      if (memo != null) 'memo': memo,
      if (confirmations != null) 'confirmations': confirmations,
    });
  }

  SnapshotsCompanion copyWith(
      {Value<String>? snapshotId,
      Value<String>? type,
      Value<String>? assetId,
      Value<String>? amount,
      Value<DateTime>? createdAt,
      Value<String?>? opponentId,
      Value<String?>? transactionHash,
      Value<String?>? sender,
      Value<String?>? receiver,
      Value<String?>? memo,
      Value<int?>? confirmations}) {
    return SnapshotsCompanion(
      snapshotId: snapshotId ?? this.snapshotId,
      type: type ?? this.type,
      assetId: assetId ?? this.assetId,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      opponentId: opponentId ?? this.opponentId,
      transactionHash: transactionHash ?? this.transactionHash,
      sender: sender ?? this.sender,
      receiver: receiver ?? this.receiver,
      memo: memo ?? this.memo,
      confirmations: confirmations ?? this.confirmations,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (snapshotId.present) {
      map['snapshot_id'] = Variable<String>(snapshotId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (createdAt.present) {
      final converter = Snapshots.$converter0;
      map['created_at'] = Variable<int>(converter.mapToSql(createdAt.value)!);
    }
    if (opponentId.present) {
      map['opponent_id'] = Variable<String?>(opponentId.value);
    }
    if (transactionHash.present) {
      map['transaction_hash'] = Variable<String?>(transactionHash.value);
    }
    if (sender.present) {
      map['sender'] = Variable<String?>(sender.value);
    }
    if (receiver.present) {
      map['receiver'] = Variable<String?>(receiver.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String?>(memo.value);
    }
    if (confirmations.present) {
      map['confirmations'] = Variable<int?>(confirmations.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SnapshotsCompanion(')
          ..write('snapshotId: $snapshotId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('opponentId: $opponentId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('memo: $memo, ')
          ..write('confirmations: $confirmations')
          ..write(')'))
        .toString();
  }
}

class Snapshots extends Table with TableInfo<Snapshots, Snapshot> {
  final GeneratedDatabase _db;
  final String? _alias;
  Snapshots(this._db, [this._alias]);
  final VerificationMeta _snapshotIdMeta = const VerificationMeta('snapshotId');
  late final GeneratedTextColumn snapshotId = _constructSnapshotId();
  GeneratedTextColumn _constructSnapshotId() {
    return GeneratedTextColumn('snapshot_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedTextColumn type = _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn('type', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedTextColumn assetId = _constructAssetId();
  GeneratedTextColumn _constructAssetId() {
    return GeneratedTextColumn('asset_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  late final GeneratedTextColumn amount = _constructAmount();
  GeneratedTextColumn _constructAmount() {
    return GeneratedTextColumn('amount', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedIntColumn createdAt = _constructCreatedAt();
  GeneratedIntColumn _constructCreatedAt() {
    return GeneratedIntColumn('created_at', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _opponentIdMeta = const VerificationMeta('opponentId');
  late final GeneratedTextColumn opponentId = _constructOpponentId();
  GeneratedTextColumn _constructOpponentId() {
    return GeneratedTextColumn('opponent_id', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _transactionHashMeta =
      const VerificationMeta('transactionHash');
  late final GeneratedTextColumn transactionHash = _constructTransactionHash();
  GeneratedTextColumn _constructTransactionHash() {
    return GeneratedTextColumn('transaction_hash', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _senderMeta = const VerificationMeta('sender');
  late final GeneratedTextColumn sender = _constructSender();
  GeneratedTextColumn _constructSender() {
    return GeneratedTextColumn('sender', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _receiverMeta = const VerificationMeta('receiver');
  late final GeneratedTextColumn receiver = _constructReceiver();
  GeneratedTextColumn _constructReceiver() {
    return GeneratedTextColumn('receiver', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _memoMeta = const VerificationMeta('memo');
  late final GeneratedTextColumn memo = _constructMemo();
  GeneratedTextColumn _constructMemo() {
    return GeneratedTextColumn('memo', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _confirmationsMeta =
      const VerificationMeta('confirmations');
  late final GeneratedIntColumn confirmations = _constructConfirmations();
  GeneratedIntColumn _constructConfirmations() {
    return GeneratedIntColumn('confirmations', $tableName, true,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        snapshotId,
        type,
        assetId,
        amount,
        createdAt,
        opponentId,
        transactionHash,
        sender,
        receiver,
        memo,
        confirmations
      ];
  @override
  Snapshots get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'snapshots';
  @override
  final String actualTableName = 'snapshots';
  @override
  VerificationContext validateIntegrity(Insertable<Snapshot> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('snapshot_id')) {
      context.handle(
          _snapshotIdMeta,
          snapshotId.isAcceptableOrUnknown(
              data['snapshot_id']!, _snapshotIdMeta));
    } else if (isInserting) {
      context.missing(_snapshotIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    if (data.containsKey('opponent_id')) {
      context.handle(
          _opponentIdMeta,
          opponentId.isAcceptableOrUnknown(
              data['opponent_id']!, _opponentIdMeta));
    }
    if (data.containsKey('transaction_hash')) {
      context.handle(
          _transactionHashMeta,
          transactionHash.isAcceptableOrUnknown(
              data['transaction_hash']!, _transactionHashMeta));
    }
    if (data.containsKey('sender')) {
      context.handle(_senderMeta,
          sender.isAcceptableOrUnknown(data['sender']!, _senderMeta));
    }
    if (data.containsKey('receiver')) {
      context.handle(_receiverMeta,
          receiver.isAcceptableOrUnknown(data['receiver']!, _receiverMeta));
    }
    if (data.containsKey('memo')) {
      context.handle(
          _memoMeta, memo.isAcceptableOrUnknown(data['memo']!, _memoMeta));
    }
    if (data.containsKey('confirmations')) {
      context.handle(
          _confirmationsMeta,
          confirmations.isAcceptableOrUnknown(
              data['confirmations']!, _confirmationsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {snapshotId};
  @override
  Snapshot map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Snapshot.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Snapshots createAlias(String alias) {
    return Snapshots(_db, alias);
  }

  static TypeConverter<DateTime, int> $converter0 = const MillisDateConverter();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(snapshot_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class User extends DataClass implements Insertable<User> {
  final String userId;
  final String identityNumber;
  final UserRelationship? relationship;
  final String? fullName;
  final String? avatarUrl;
  final String? phone;
  final bool? isVerified;
  final DateTime? createdAt;
  final DateTime? muteUntil;
  final int? hasPin;
  final String? appId;
  final String? biography;
  final int? isScam;
  User(
      {required this.userId,
      required this.identityNumber,
      this.relationship,
      this.fullName,
      this.avatarUrl,
      this.phone,
      this.isVerified,
      this.createdAt,
      this.muteUntil,
      this.hasPin,
      this.appId,
      this.biography,
      this.isScam});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      identityNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}identity_number'])!,
      relationship: Users.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}relationship'])),
      fullName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}full_name']),
      avatarUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}avatar_url']),
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      isVerified: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_verified']),
      createdAt: Users.$converter1.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])),
      muteUntil: Users.$converter2.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mute_until'])),
      hasPin: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}has_pin']),
      appId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}app_id']),
      biography: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}biography']),
      isScam: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_scam']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['identity_number'] = Variable<String>(identityNumber);
    if (!nullToAbsent || relationship != null) {
      final converter = Users.$converter0;
      map['relationship'] = Variable<String?>(converter.mapToSql(relationship));
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String?>(fullName);
    }
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String?>(avatarUrl);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String?>(phone);
    }
    if (!nullToAbsent || isVerified != null) {
      map['is_verified'] = Variable<bool?>(isVerified);
    }
    if (!nullToAbsent || createdAt != null) {
      final converter = Users.$converter1;
      map['created_at'] = Variable<int?>(converter.mapToSql(createdAt));
    }
    if (!nullToAbsent || muteUntil != null) {
      final converter = Users.$converter2;
      map['mute_until'] = Variable<int?>(converter.mapToSql(muteUntil));
    }
    if (!nullToAbsent || hasPin != null) {
      map['has_pin'] = Variable<int?>(hasPin);
    }
    if (!nullToAbsent || appId != null) {
      map['app_id'] = Variable<String?>(appId);
    }
    if (!nullToAbsent || biography != null) {
      map['biography'] = Variable<String?>(biography);
    }
    if (!nullToAbsent || isScam != null) {
      map['is_scam'] = Variable<int?>(isScam);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      userId: Value(userId),
      identityNumber: Value(identityNumber),
      relationship: relationship == null && nullToAbsent
          ? const Value.absent()
          : Value(relationship),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      isVerified: isVerified == null && nullToAbsent
          ? const Value.absent()
          : Value(isVerified),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      muteUntil: muteUntil == null && nullToAbsent
          ? const Value.absent()
          : Value(muteUntil),
      hasPin:
          hasPin == null && nullToAbsent ? const Value.absent() : Value(hasPin),
      appId:
          appId == null && nullToAbsent ? const Value.absent() : Value(appId),
      biography: biography == null && nullToAbsent
          ? const Value.absent()
          : Value(biography),
      isScam:
          isScam == null && nullToAbsent ? const Value.absent() : Value(isScam),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      userId: serializer.fromJson<String>(json['user_id']),
      identityNumber: serializer.fromJson<String>(json['identity_number']),
      relationship:
          serializer.fromJson<UserRelationship?>(json['relationship']),
      fullName: serializer.fromJson<String?>(json['full_name']),
      avatarUrl: serializer.fromJson<String?>(json['avatar_url']),
      phone: serializer.fromJson<String?>(json['phone']),
      isVerified: serializer.fromJson<bool?>(json['is_verified']),
      createdAt: serializer.fromJson<DateTime?>(json['created_at']),
      muteUntil: serializer.fromJson<DateTime?>(json['mute_until']),
      hasPin: serializer.fromJson<int?>(json['has_pin']),
      appId: serializer.fromJson<String?>(json['app_id']),
      biography: serializer.fromJson<String?>(json['biography']),
      isScam: serializer.fromJson<int?>(json['is_scam']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'user_id': serializer.toJson<String>(userId),
      'identity_number': serializer.toJson<String>(identityNumber),
      'relationship': serializer.toJson<UserRelationship?>(relationship),
      'full_name': serializer.toJson<String?>(fullName),
      'avatar_url': serializer.toJson<String?>(avatarUrl),
      'phone': serializer.toJson<String?>(phone),
      'is_verified': serializer.toJson<bool?>(isVerified),
      'created_at': serializer.toJson<DateTime?>(createdAt),
      'mute_until': serializer.toJson<DateTime?>(muteUntil),
      'has_pin': serializer.toJson<int?>(hasPin),
      'app_id': serializer.toJson<String?>(appId),
      'biography': serializer.toJson<String?>(biography),
      'is_scam': serializer.toJson<int?>(isScam),
    };
  }

  User copyWith(
          {String? userId,
          String? identityNumber,
          UserRelationship? relationship,
          String? fullName,
          String? avatarUrl,
          String? phone,
          bool? isVerified,
          DateTime? createdAt,
          DateTime? muteUntil,
          int? hasPin,
          String? appId,
          String? biography,
          int? isScam}) =>
      User(
        userId: userId ?? this.userId,
        identityNumber: identityNumber ?? this.identityNumber,
        relationship: relationship ?? this.relationship,
        fullName: fullName ?? this.fullName,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        phone: phone ?? this.phone,
        isVerified: isVerified ?? this.isVerified,
        createdAt: createdAt ?? this.createdAt,
        muteUntil: muteUntil ?? this.muteUntil,
        hasPin: hasPin ?? this.hasPin,
        appId: appId ?? this.appId,
        biography: biography ?? this.biography,
        isScam: isScam ?? this.isScam,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('userId: $userId, ')
          ..write('identityNumber: $identityNumber, ')
          ..write('relationship: $relationship, ')
          ..write('fullName: $fullName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('phone: $phone, ')
          ..write('isVerified: $isVerified, ')
          ..write('createdAt: $createdAt, ')
          ..write('muteUntil: $muteUntil, ')
          ..write('hasPin: $hasPin, ')
          ..write('appId: $appId, ')
          ..write('biography: $biography, ')
          ..write('isScam: $isScam')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(
          identityNumber.hashCode,
          $mrjc(
              relationship.hashCode,
              $mrjc(
                  fullName.hashCode,
                  $mrjc(
                      avatarUrl.hashCode,
                      $mrjc(
                          phone.hashCode,
                          $mrjc(
                              isVerified.hashCode,
                              $mrjc(
                                  createdAt.hashCode,
                                  $mrjc(
                                      muteUntil.hashCode,
                                      $mrjc(
                                          hasPin.hashCode,
                                          $mrjc(
                                              appId.hashCode,
                                              $mrjc(biography.hashCode,
                                                  isScam.hashCode)))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.userId == this.userId &&
          other.identityNumber == this.identityNumber &&
          other.relationship == this.relationship &&
          other.fullName == this.fullName &&
          other.avatarUrl == this.avatarUrl &&
          other.phone == this.phone &&
          other.isVerified == this.isVerified &&
          other.createdAt == this.createdAt &&
          other.muteUntil == this.muteUntil &&
          other.hasPin == this.hasPin &&
          other.appId == this.appId &&
          other.biography == this.biography &&
          other.isScam == this.isScam);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> userId;
  final Value<String> identityNumber;
  final Value<UserRelationship?> relationship;
  final Value<String?> fullName;
  final Value<String?> avatarUrl;
  final Value<String?> phone;
  final Value<bool?> isVerified;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> muteUntil;
  final Value<int?> hasPin;
  final Value<String?> appId;
  final Value<String?> biography;
  final Value<int?> isScam;
  const UsersCompanion({
    this.userId = const Value.absent(),
    this.identityNumber = const Value.absent(),
    this.relationship = const Value.absent(),
    this.fullName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.phone = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.muteUntil = const Value.absent(),
    this.hasPin = const Value.absent(),
    this.appId = const Value.absent(),
    this.biography = const Value.absent(),
    this.isScam = const Value.absent(),
  });
  UsersCompanion.insert({
    required String userId,
    required String identityNumber,
    this.relationship = const Value.absent(),
    this.fullName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.phone = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.muteUntil = const Value.absent(),
    this.hasPin = const Value.absent(),
    this.appId = const Value.absent(),
    this.biography = const Value.absent(),
    this.isScam = const Value.absent(),
  })  : userId = Value(userId),
        identityNumber = Value(identityNumber);
  static Insertable<User> custom({
    Expression<String>? userId,
    Expression<String>? identityNumber,
    Expression<UserRelationship?>? relationship,
    Expression<String?>? fullName,
    Expression<String?>? avatarUrl,
    Expression<String?>? phone,
    Expression<bool?>? isVerified,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? muteUntil,
    Expression<int?>? hasPin,
    Expression<String?>? appId,
    Expression<String?>? biography,
    Expression<int?>? isScam,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (identityNumber != null) 'identity_number': identityNumber,
      if (relationship != null) 'relationship': relationship,
      if (fullName != null) 'full_name': fullName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (phone != null) 'phone': phone,
      if (isVerified != null) 'is_verified': isVerified,
      if (createdAt != null) 'created_at': createdAt,
      if (muteUntil != null) 'mute_until': muteUntil,
      if (hasPin != null) 'has_pin': hasPin,
      if (appId != null) 'app_id': appId,
      if (biography != null) 'biography': biography,
      if (isScam != null) 'is_scam': isScam,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? userId,
      Value<String>? identityNumber,
      Value<UserRelationship?>? relationship,
      Value<String?>? fullName,
      Value<String?>? avatarUrl,
      Value<String?>? phone,
      Value<bool?>? isVerified,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? muteUntil,
      Value<int?>? hasPin,
      Value<String?>? appId,
      Value<String?>? biography,
      Value<int?>? isScam}) {
    return UsersCompanion(
      userId: userId ?? this.userId,
      identityNumber: identityNumber ?? this.identityNumber,
      relationship: relationship ?? this.relationship,
      fullName: fullName ?? this.fullName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      phone: phone ?? this.phone,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt ?? this.createdAt,
      muteUntil: muteUntil ?? this.muteUntil,
      hasPin: hasPin ?? this.hasPin,
      appId: appId ?? this.appId,
      biography: biography ?? this.biography,
      isScam: isScam ?? this.isScam,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (identityNumber.present) {
      map['identity_number'] = Variable<String>(identityNumber.value);
    }
    if (relationship.present) {
      final converter = Users.$converter0;
      map['relationship'] =
          Variable<String?>(converter.mapToSql(relationship.value));
    }
    if (fullName.present) {
      map['full_name'] = Variable<String?>(fullName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String?>(avatarUrl.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String?>(phone.value);
    }
    if (isVerified.present) {
      map['is_verified'] = Variable<bool?>(isVerified.value);
    }
    if (createdAt.present) {
      final converter = Users.$converter1;
      map['created_at'] = Variable<int?>(converter.mapToSql(createdAt.value));
    }
    if (muteUntil.present) {
      final converter = Users.$converter2;
      map['mute_until'] = Variable<int?>(converter.mapToSql(muteUntil.value));
    }
    if (hasPin.present) {
      map['has_pin'] = Variable<int?>(hasPin.value);
    }
    if (appId.present) {
      map['app_id'] = Variable<String?>(appId.value);
    }
    if (biography.present) {
      map['biography'] = Variable<String?>(biography.value);
    }
    if (isScam.present) {
      map['is_scam'] = Variable<int?>(isScam.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('userId: $userId, ')
          ..write('identityNumber: $identityNumber, ')
          ..write('relationship: $relationship, ')
          ..write('fullName: $fullName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('phone: $phone, ')
          ..write('isVerified: $isVerified, ')
          ..write('createdAt: $createdAt, ')
          ..write('muteUntil: $muteUntil, ')
          ..write('hasPin: $hasPin, ')
          ..write('appId: $appId, ')
          ..write('biography: $biography, ')
          ..write('isScam: $isScam')
          ..write(')'))
        .toString();
  }
}

class Users extends Table with TableInfo<Users, User> {
  final GeneratedDatabase _db;
  final String? _alias;
  Users(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedTextColumn userId = _constructUserId();
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _identityNumberMeta =
      const VerificationMeta('identityNumber');
  late final GeneratedTextColumn identityNumber = _constructIdentityNumber();
  GeneratedTextColumn _constructIdentityNumber() {
    return GeneratedTextColumn('identity_number', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _relationshipMeta =
      const VerificationMeta('relationship');
  late final GeneratedTextColumn relationship = _constructRelationship();
  GeneratedTextColumn _constructRelationship() {
    return GeneratedTextColumn('relationship', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  late final GeneratedTextColumn fullName = _constructFullName();
  GeneratedTextColumn _constructFullName() {
    return GeneratedTextColumn('full_name', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _avatarUrlMeta = const VerificationMeta('avatarUrl');
  late final GeneratedTextColumn avatarUrl = _constructAvatarUrl();
  GeneratedTextColumn _constructAvatarUrl() {
    return GeneratedTextColumn('avatar_url', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedTextColumn phone = _constructPhone();
  GeneratedTextColumn _constructPhone() {
    return GeneratedTextColumn('phone', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _isVerifiedMeta = const VerificationMeta('isVerified');
  late final GeneratedBoolColumn isVerified = _constructIsVerified();
  GeneratedBoolColumn _constructIsVerified() {
    return GeneratedBoolColumn('is_verified', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedIntColumn createdAt = _constructCreatedAt();
  GeneratedIntColumn _constructCreatedAt() {
    return GeneratedIntColumn('created_at', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _muteUntilMeta = const VerificationMeta('muteUntil');
  late final GeneratedIntColumn muteUntil = _constructMuteUntil();
  GeneratedIntColumn _constructMuteUntil() {
    return GeneratedIntColumn('mute_until', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _hasPinMeta = const VerificationMeta('hasPin');
  late final GeneratedIntColumn hasPin = _constructHasPin();
  GeneratedIntColumn _constructHasPin() {
    return GeneratedIntColumn('has_pin', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _appIdMeta = const VerificationMeta('appId');
  late final GeneratedTextColumn appId = _constructAppId();
  GeneratedTextColumn _constructAppId() {
    return GeneratedTextColumn('app_id', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _biographyMeta = const VerificationMeta('biography');
  late final GeneratedTextColumn biography = _constructBiography();
  GeneratedTextColumn _constructBiography() {
    return GeneratedTextColumn('biography', $tableName, true,
        $customConstraints: '');
  }

  final VerificationMeta _isScamMeta = const VerificationMeta('isScam');
  late final GeneratedIntColumn isScam = _constructIsScam();
  GeneratedIntColumn _constructIsScam() {
    return GeneratedIntColumn('is_scam', $tableName, true,
        $customConstraints: '');
  }

  @override
  List<GeneratedColumn> get $columns => [
        userId,
        identityNumber,
        relationship,
        fullName,
        avatarUrl,
        phone,
        isVerified,
        createdAt,
        muteUntil,
        hasPin,
        appId,
        biography,
        isScam
      ];
  @override
  Users get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('identity_number')) {
      context.handle(
          _identityNumberMeta,
          identityNumber.isAcceptableOrUnknown(
              data['identity_number']!, _identityNumberMeta));
    } else if (isInserting) {
      context.missing(_identityNumberMeta);
    }
    context.handle(_relationshipMeta, const VerificationResult.success());
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('is_verified')) {
      context.handle(
          _isVerifiedMeta,
          isVerified.isAcceptableOrUnknown(
              data['is_verified']!, _isVerifiedMeta));
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    context.handle(_muteUntilMeta, const VerificationResult.success());
    if (data.containsKey('has_pin')) {
      context.handle(_hasPinMeta,
          hasPin.isAcceptableOrUnknown(data['has_pin']!, _hasPinMeta));
    }
    if (data.containsKey('app_id')) {
      context.handle(
          _appIdMeta, appId.isAcceptableOrUnknown(data['app_id']!, _appIdMeta));
    }
    if (data.containsKey('biography')) {
      context.handle(_biographyMeta,
          biography.isAcceptableOrUnknown(data['biography']!, _biographyMeta));
    }
    if (data.containsKey('is_scam')) {
      context.handle(_isScamMeta,
          isScam.isAcceptableOrUnknown(data['is_scam']!, _isScamMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Users createAlias(String alias) {
    return Users(_db, alias);
  }

  static TypeConverter<UserRelationship, String> $converter0 =
      const UserRelationshipConverter();
  static TypeConverter<DateTime, int> $converter1 = const MillisDateConverter();
  static TypeConverter<DateTime, int> $converter2 = const MillisDateConverter();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(user_id)'];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$MixinDatabase extends GeneratedDatabase {
  _$MixinDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$MixinDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final Addresses addresses = Addresses(this);
  late final Assets assets = Assets(this);
  late final Snapshots snapshots = Snapshots(this);
  late final Users users = Users(this);
  late final AddressDao addressDao = AddressDao(this as MixinDatabase);
  late final AssetDao assetDao = AssetDao(this as MixinDatabase);
  late final SnapshotDao snapshotDao = SnapshotDao(this as MixinDatabase);
  late final UserDao userDao = UserDao(this as MixinDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [addresses, assets, snapshots, users];
}