// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_capabilities_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientCapabilitiesDto extends ClientCapabilitiesDto {
  @override
  final BuiltList<MediaType>? playableMediaTypes;
  @override
  final BuiltList<GeneralCommandType>? supportedCommands;
  @override
  final bool? supportsMediaControl;
  @override
  final bool? supportsPersistentIdentifier;
  @override
  final DeviceProfile? deviceProfile;
  @override
  final String? appStoreUrl;
  @override
  final String? iconUrl;

  factory _$ClientCapabilitiesDto(
          [void Function(ClientCapabilitiesDtoBuilder)? updates]) =>
      (new ClientCapabilitiesDtoBuilder()..update(updates))._build();

  _$ClientCapabilitiesDto._(
      {this.playableMediaTypes,
      this.supportedCommands,
      this.supportsMediaControl,
      this.supportsPersistentIdentifier,
      this.deviceProfile,
      this.appStoreUrl,
      this.iconUrl})
      : super._();

  @override
  ClientCapabilitiesDto rebuild(
          void Function(ClientCapabilitiesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientCapabilitiesDtoBuilder toBuilder() =>
      new ClientCapabilitiesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientCapabilitiesDto &&
        playableMediaTypes == other.playableMediaTypes &&
        supportedCommands == other.supportedCommands &&
        supportsMediaControl == other.supportsMediaControl &&
        supportsPersistentIdentifier == other.supportsPersistentIdentifier &&
        deviceProfile == other.deviceProfile &&
        appStoreUrl == other.appStoreUrl &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playableMediaTypes.hashCode);
    _$hash = $jc(_$hash, supportedCommands.hashCode);
    _$hash = $jc(_$hash, supportsMediaControl.hashCode);
    _$hash = $jc(_$hash, supportsPersistentIdentifier.hashCode);
    _$hash = $jc(_$hash, deviceProfile.hashCode);
    _$hash = $jc(_$hash, appStoreUrl.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientCapabilitiesDto')
          ..add('playableMediaTypes', playableMediaTypes)
          ..add('supportedCommands', supportedCommands)
          ..add('supportsMediaControl', supportsMediaControl)
          ..add('supportsPersistentIdentifier', supportsPersistentIdentifier)
          ..add('deviceProfile', deviceProfile)
          ..add('appStoreUrl', appStoreUrl)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class ClientCapabilitiesDtoBuilder
    implements Builder<ClientCapabilitiesDto, ClientCapabilitiesDtoBuilder> {
  _$ClientCapabilitiesDto? _$v;

  ListBuilder<MediaType>? _playableMediaTypes;
  ListBuilder<MediaType> get playableMediaTypes =>
      _$this._playableMediaTypes ??= new ListBuilder<MediaType>();
  set playableMediaTypes(ListBuilder<MediaType>? playableMediaTypes) =>
      _$this._playableMediaTypes = playableMediaTypes;

  ListBuilder<GeneralCommandType>? _supportedCommands;
  ListBuilder<GeneralCommandType> get supportedCommands =>
      _$this._supportedCommands ??= new ListBuilder<GeneralCommandType>();
  set supportedCommands(ListBuilder<GeneralCommandType>? supportedCommands) =>
      _$this._supportedCommands = supportedCommands;

  bool? _supportsMediaControl;
  bool? get supportsMediaControl => _$this._supportsMediaControl;
  set supportsMediaControl(bool? supportsMediaControl) =>
      _$this._supportsMediaControl = supportsMediaControl;

  bool? _supportsPersistentIdentifier;
  bool? get supportsPersistentIdentifier =>
      _$this._supportsPersistentIdentifier;
  set supportsPersistentIdentifier(bool? supportsPersistentIdentifier) =>
      _$this._supportsPersistentIdentifier = supportsPersistentIdentifier;

  DeviceProfileBuilder? _deviceProfile;
  DeviceProfileBuilder get deviceProfile =>
      _$this._deviceProfile ??= new DeviceProfileBuilder();
  set deviceProfile(DeviceProfileBuilder? deviceProfile) =>
      _$this._deviceProfile = deviceProfile;

  String? _appStoreUrl;
  String? get appStoreUrl => _$this._appStoreUrl;
  set appStoreUrl(String? appStoreUrl) => _$this._appStoreUrl = appStoreUrl;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  ClientCapabilitiesDtoBuilder() {
    ClientCapabilitiesDto._defaults(this);
  }

  ClientCapabilitiesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playableMediaTypes = $v.playableMediaTypes?.toBuilder();
      _supportedCommands = $v.supportedCommands?.toBuilder();
      _supportsMediaControl = $v.supportsMediaControl;
      _supportsPersistentIdentifier = $v.supportsPersistentIdentifier;
      _deviceProfile = $v.deviceProfile?.toBuilder();
      _appStoreUrl = $v.appStoreUrl;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientCapabilitiesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientCapabilitiesDto;
  }

  @override
  void update(void Function(ClientCapabilitiesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientCapabilitiesDto build() => _build();

  _$ClientCapabilitiesDto _build() {
    _$ClientCapabilitiesDto _$result;
    try {
      _$result = _$v ??
          new _$ClientCapabilitiesDto._(
              playableMediaTypes: _playableMediaTypes?.build(),
              supportedCommands: _supportedCommands?.build(),
              supportsMediaControl: supportsMediaControl,
              supportsPersistentIdentifier: supportsPersistentIdentifier,
              deviceProfile: _deviceProfile?.build(),
              appStoreUrl: appStoreUrl,
              iconUrl: iconUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'playableMediaTypes';
        _playableMediaTypes?.build();
        _$failedField = 'supportedCommands';
        _supportedCommands?.build();

        _$failedField = 'deviceProfile';
        _deviceProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientCapabilitiesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
