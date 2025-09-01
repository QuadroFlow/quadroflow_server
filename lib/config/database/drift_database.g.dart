// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $UserModelTable extends UserModel
    with TableInfo<$UserModelTable, UserEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserModelTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<String, UuidValue> id =
      GeneratedColumn<UuidValue>(
        'id',
        aliasedName,
        false,
        type: PgTypes.uuid,
        requiredDuringInsert: false,
        defaultValue: genRandomUuid(),
      ).withConverter<String>($UserModelTable.$converterid);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> createdAt =
      GeneratedColumn<PgDateTime>(
        'created_at',
        aliasedName,
        false,
        type: PgTypes.timestampNoTimezone,
        requiredDuringInsert: false,
        clientDefault: currentDateTime,
      ).withConverter<DateTime>($UserModelTable.$convertercreatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime, PgDateTime> updatedAt =
      GeneratedColumn<PgDateTime>(
        'updated_at',
        aliasedName,
        false,
        type: PgTypes.timestampNoTimezone,
        requiredDuringInsert: false,
        clientDefault: currentDateTime,
      ).withConverter<DateTime>($UserModelTable.$converterupdatedAt);
  @override
  late final GeneratedColumnWithTypeConverter<DateTime?, PgDateTime> deletedAt =
      GeneratedColumn<PgDateTime>(
        'deleted_at',
        aliasedName,
        true,
        type: PgTypes.timestampNoTimezone,
        requiredDuringInsert: false,
      ).withConverter<DateTime?>($UserModelTable.$converterdeletedAtn);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<UserRoleEnum, String> role =
      GeneratedColumn<String>(
        'role',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<UserRoleEnum>($UserModelTable.$converterrole);
  @override
  late final GeneratedColumnWithTypeConverter<Uri?, String> picture =
      GeneratedColumn<String>(
        'picture',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<Uri?>($UserModelTable.$converterpicturen);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    updatedAt,
    deletedAt,
    name,
    email,
    password,
    role,
    picture,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntity.new(
      id: $UserModelTable.$converterid.fromSql(
        attachedDatabase.typeMapping.read(
          PgTypes.uuid,
          data['${effectivePrefix}id'],
        )!,
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      )!,
      role: $UserModelTable.$converterrole.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}role'],
        )!,
      ),
      createdAt: $UserModelTable.$convertercreatedAt.fromSql(
        attachedDatabase.typeMapping.read(
          PgTypes.timestampNoTimezone,
          data['${effectivePrefix}created_at'],
        )!,
      ),
      updatedAt: $UserModelTable.$converterupdatedAt.fromSql(
        attachedDatabase.typeMapping.read(
          PgTypes.timestampNoTimezone,
          data['${effectivePrefix}updated_at'],
        )!,
      ),
      deletedAt: $UserModelTable.$converterdeletedAtn.fromSql(
        attachedDatabase.typeMapping.read(
          PgTypes.timestampNoTimezone,
          data['${effectivePrefix}deleted_at'],
        ),
      ),
      picture: $UserModelTable.$converterpicturen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}picture'],
        ),
      ),
    );
  }

  @override
  $UserModelTable createAlias(String alias) {
    return $UserModelTable(attachedDatabase, alias);
  }

  static TypeConverter<String, UuidValue> $converterid =
      const UuidTypeConverter();
  static TypeConverter<DateTime, PgDateTime> $convertercreatedAt =
      const DateTimeTypeConverter();
  static TypeConverter<DateTime, PgDateTime> $converterupdatedAt =
      const DateTimeTypeConverter();
  static TypeConverter<DateTime, PgDateTime> $converterdeletedAt =
      const DateTimeTypeConverter();
  static TypeConverter<DateTime?, PgDateTime?> $converterdeletedAtn =
      NullAwareTypeConverter.wrap($converterdeletedAt);
  static JsonTypeConverter2<UserRoleEnum, String, String> $converterrole =
      const EnumNameConverter<UserRoleEnum>(UserRoleEnum.values);
  static TypeConverter<Uri, String> $converterpicture =
      const UriTypeConverter();
  static TypeConverter<Uri?, String?> $converterpicturen =
      NullAwareTypeConverter.wrap($converterpicture);
}

class UserModelCompanion extends UpdateCompanion<UserEntity> {
  final Value<String> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<String> name;
  final Value<String> email;
  final Value<String> password;
  final Value<UserRoleEnum> role;
  final Value<Uri?> picture;
  final Value<int> rowid;
  const UserModelCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.role = const Value.absent(),
    this.picture = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserModelCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    required String name,
    required String email,
    required String password,
    required UserRoleEnum role,
    this.picture = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : name = Value(name),
       email = Value(email),
       password = Value(password),
       role = Value(role);
  static Insertable<UserEntity> custom({
    Expression<UuidValue>? id,
    Expression<PgDateTime>? createdAt,
    Expression<PgDateTime>? updatedAt,
    Expression<PgDateTime>? deletedAt,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? role,
    Expression<String>? picture,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (role != null) 'role': role,
      if (picture != null) 'picture': picture,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserModelCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? deletedAt,
    Value<String>? name,
    Value<String>? email,
    Value<String>? password,
    Value<UserRoleEnum>? role,
    Value<Uri?>? picture,
    Value<int>? rowid,
  }) {
    return UserModelCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      role: role ?? this.role,
      picture: picture ?? this.picture,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(
        $UserModelTable.$converterid.toSql(id.value),
        PgTypes.uuid,
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<PgDateTime>(
        $UserModelTable.$convertercreatedAt.toSql(createdAt.value),
        PgTypes.timestampNoTimezone,
      );
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<PgDateTime>(
        $UserModelTable.$converterupdatedAt.toSql(updatedAt.value),
        PgTypes.timestampNoTimezone,
      );
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<PgDateTime>(
        $UserModelTable.$converterdeletedAtn.toSql(deletedAt.value),
        PgTypes.timestampNoTimezone,
      );
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(
        $UserModelTable.$converterrole.toSql(role.value),
      );
    }
    if (picture.present) {
      map['picture'] = Variable<String>(
        $UserModelTable.$converterpicturen.toSql(picture.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserModelCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('role: $role, ')
          ..write('picture: $picture, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftAppDatabase extends GeneratedDatabase {
  _$DriftAppDatabase(QueryExecutor e) : super(e);
  $DriftAppDatabaseManager get managers => $DriftAppDatabaseManager(this);
  late final $UserModelTable userModel = $UserModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userModel];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$UserModelTableCreateCompanionBuilder =
    UserModelCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      required String name,
      required String email,
      required String password,
      required UserRoleEnum role,
      Value<Uri?> picture,
      Value<int> rowid,
    });
typedef $$UserModelTableUpdateCompanionBuilder =
    UserModelCompanion Function({
      Value<String> id,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> deletedAt,
      Value<String> name,
      Value<String> email,
      Value<String> password,
      Value<UserRoleEnum> role,
      Value<Uri?> picture,
      Value<int> rowid,
    });

class $$UserModelTableFilterComposer
    extends Composer<_$DriftAppDatabase, $UserModelTable> {
  $$UserModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<String, String, UuidValue> get id =>
      $composableBuilder(
        column: $table.id,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
  get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<DateTime, DateTime, PgDateTime>
  get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<DateTime?, DateTime, PgDateTime>
  get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<UserRoleEnum, UserRoleEnum, String> get role =>
      $composableBuilder(
        column: $table.role,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<Uri?, Uri, String> get picture =>
      $composableBuilder(
        column: $table.picture,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );
}

class $$UserModelTableOrderingComposer
    extends Composer<_$DriftAppDatabase, $UserModelTable> {
  $$UserModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<PgDateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<PgDateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<PgDateTime> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get picture => $composableBuilder(
    column: $table.picture,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserModelTableAnnotationComposer
    extends Composer<_$DriftAppDatabase, $UserModelTable> {
  $$UserModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<String, UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime, PgDateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DateTime?, PgDateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumnWithTypeConverter<UserRoleEnum, String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Uri?, String> get picture =>
      $composableBuilder(column: $table.picture, builder: (column) => column);
}

class $$UserModelTableTableManager
    extends
        RootTableManager<
          _$DriftAppDatabase,
          $UserModelTable,
          UserEntity,
          $$UserModelTableFilterComposer,
          $$UserModelTableOrderingComposer,
          $$UserModelTableAnnotationComposer,
          $$UserModelTableCreateCompanionBuilder,
          $$UserModelTableUpdateCompanionBuilder,
          (
            UserEntity,
            BaseReferences<_$DriftAppDatabase, $UserModelTable, UserEntity>,
          ),
          UserEntity,
          PrefetchHooks Function()
        > {
  $$UserModelTableTableManager(_$DriftAppDatabase db, $UserModelTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> password = const Value.absent(),
                Value<UserRoleEnum> role = const Value.absent(),
                Value<Uri?> picture = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserModelCompanion(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                name: name,
                email: email,
                password: password,
                role: role,
                picture: picture,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> deletedAt = const Value.absent(),
                required String name,
                required String email,
                required String password,
                required UserRoleEnum role,
                Value<Uri?> picture = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserModelCompanion.insert(
                id: id,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                name: name,
                email: email,
                password: password,
                role: role,
                picture: picture,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserModelTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftAppDatabase,
      $UserModelTable,
      UserEntity,
      $$UserModelTableFilterComposer,
      $$UserModelTableOrderingComposer,
      $$UserModelTableAnnotationComposer,
      $$UserModelTableCreateCompanionBuilder,
      $$UserModelTableUpdateCompanionBuilder,
      (
        UserEntity,
        BaseReferences<_$DriftAppDatabase, $UserModelTable, UserEntity>,
      ),
      UserEntity,
      PrefetchHooks Function()
    >;

class $DriftAppDatabaseManager {
  final _$DriftAppDatabase _db;
  $DriftAppDatabaseManager(this._db);
  $$UserModelTableTableManager get userModel =>
      $$UserModelTableTableManager(_db, _db.userModel);
}
