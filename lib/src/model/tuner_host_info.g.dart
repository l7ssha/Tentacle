// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuner_host_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TunerHostInfo extends TunerHostInfo {
  @override
  final String? id;
  @override
  final String? url;
  @override
  final String? type;
  @override
  final String? deviceId;
  @override
  final String? friendlyName;
  @override
  final bool? importFavoritesOnly;
  @override
  final bool? allowHWTranscoding;
  @override
  final bool? allowFmp4TranscodingContainer;
  @override
  final bool? allowStreamSharing;
  @override
  final int? fallbackMaxStreamingBitrate;
  @override
  final bool? enableStreamLooping;
  @override
  final String? source_;
  @override
  final int? tunerCount;
  @override
  final String? userAgent;
  @override
  final bool? ignoreDts;

  factory _$TunerHostInfo([void Function(TunerHostInfoBuilder)? updates]) =>
      (new TunerHostInfoBuilder()..update(updates))._build();

  _$TunerHostInfo._(
      {this.id,
      this.url,
      this.type,
      this.deviceId,
      this.friendlyName,
      this.importFavoritesOnly,
      this.allowHWTranscoding,
      this.allowFmp4TranscodingContainer,
      this.allowStreamSharing,
      this.fallbackMaxStreamingBitrate,
      this.enableStreamLooping,
      this.source_,
      this.tunerCount,
      this.userAgent,
      this.ignoreDts})
      : super._();

  @override
  TunerHostInfo rebuild(void Function(TunerHostInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TunerHostInfoBuilder toBuilder() => new TunerHostInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TunerHostInfo &&
        id == other.id &&
        url == other.url &&
        type == other.type &&
        deviceId == other.deviceId &&
        friendlyName == other.friendlyName &&
        importFavoritesOnly == other.importFavoritesOnly &&
        allowHWTranscoding == other.allowHWTranscoding &&
        allowFmp4TranscodingContainer == other.allowFmp4TranscodingContainer &&
        allowStreamSharing == other.allowStreamSharing &&
        fallbackMaxStreamingBitrate == other.fallbackMaxStreamingBitrate &&
        enableStreamLooping == other.enableStreamLooping &&
        source_ == other.source_ &&
        tunerCount == other.tunerCount &&
        userAgent == other.userAgent &&
        ignoreDts == other.ignoreDts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, friendlyName.hashCode);
    _$hash = $jc(_$hash, importFavoritesOnly.hashCode);
    _$hash = $jc(_$hash, allowHWTranscoding.hashCode);
    _$hash = $jc(_$hash, allowFmp4TranscodingContainer.hashCode);
    _$hash = $jc(_$hash, allowStreamSharing.hashCode);
    _$hash = $jc(_$hash, fallbackMaxStreamingBitrate.hashCode);
    _$hash = $jc(_$hash, enableStreamLooping.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, tunerCount.hashCode);
    _$hash = $jc(_$hash, userAgent.hashCode);
    _$hash = $jc(_$hash, ignoreDts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TunerHostInfo')
          ..add('id', id)
          ..add('url', url)
          ..add('type', type)
          ..add('deviceId', deviceId)
          ..add('friendlyName', friendlyName)
          ..add('importFavoritesOnly', importFavoritesOnly)
          ..add('allowHWTranscoding', allowHWTranscoding)
          ..add('allowFmp4TranscodingContainer', allowFmp4TranscodingContainer)
          ..add('allowStreamSharing', allowStreamSharing)
          ..add('fallbackMaxStreamingBitrate', fallbackMaxStreamingBitrate)
          ..add('enableStreamLooping', enableStreamLooping)
          ..add('source_', source_)
          ..add('tunerCount', tunerCount)
          ..add('userAgent', userAgent)
          ..add('ignoreDts', ignoreDts))
        .toString();
  }
}

class TunerHostInfoBuilder
    implements Builder<TunerHostInfo, TunerHostInfoBuilder> {
  _$TunerHostInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _friendlyName;
  String? get friendlyName => _$this._friendlyName;
  set friendlyName(String? friendlyName) => _$this._friendlyName = friendlyName;

  bool? _importFavoritesOnly;
  bool? get importFavoritesOnly => _$this._importFavoritesOnly;
  set importFavoritesOnly(bool? importFavoritesOnly) =>
      _$this._importFavoritesOnly = importFavoritesOnly;

  bool? _allowHWTranscoding;
  bool? get allowHWTranscoding => _$this._allowHWTranscoding;
  set allowHWTranscoding(bool? allowHWTranscoding) =>
      _$this._allowHWTranscoding = allowHWTranscoding;

  bool? _allowFmp4TranscodingContainer;
  bool? get allowFmp4TranscodingContainer =>
      _$this._allowFmp4TranscodingContainer;
  set allowFmp4TranscodingContainer(bool? allowFmp4TranscodingContainer) =>
      _$this._allowFmp4TranscodingContainer = allowFmp4TranscodingContainer;

  bool? _allowStreamSharing;
  bool? get allowStreamSharing => _$this._allowStreamSharing;
  set allowStreamSharing(bool? allowStreamSharing) =>
      _$this._allowStreamSharing = allowStreamSharing;

  int? _fallbackMaxStreamingBitrate;
  int? get fallbackMaxStreamingBitrate => _$this._fallbackMaxStreamingBitrate;
  set fallbackMaxStreamingBitrate(int? fallbackMaxStreamingBitrate) =>
      _$this._fallbackMaxStreamingBitrate = fallbackMaxStreamingBitrate;

  bool? _enableStreamLooping;
  bool? get enableStreamLooping => _$this._enableStreamLooping;
  set enableStreamLooping(bool? enableStreamLooping) =>
      _$this._enableStreamLooping = enableStreamLooping;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  int? _tunerCount;
  int? get tunerCount => _$this._tunerCount;
  set tunerCount(int? tunerCount) => _$this._tunerCount = tunerCount;

  String? _userAgent;
  String? get userAgent => _$this._userAgent;
  set userAgent(String? userAgent) => _$this._userAgent = userAgent;

  bool? _ignoreDts;
  bool? get ignoreDts => _$this._ignoreDts;
  set ignoreDts(bool? ignoreDts) => _$this._ignoreDts = ignoreDts;

  TunerHostInfoBuilder() {
    TunerHostInfo._defaults(this);
  }

  TunerHostInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _type = $v.type;
      _deviceId = $v.deviceId;
      _friendlyName = $v.friendlyName;
      _importFavoritesOnly = $v.importFavoritesOnly;
      _allowHWTranscoding = $v.allowHWTranscoding;
      _allowFmp4TranscodingContainer = $v.allowFmp4TranscodingContainer;
      _allowStreamSharing = $v.allowStreamSharing;
      _fallbackMaxStreamingBitrate = $v.fallbackMaxStreamingBitrate;
      _enableStreamLooping = $v.enableStreamLooping;
      _source_ = $v.source_;
      _tunerCount = $v.tunerCount;
      _userAgent = $v.userAgent;
      _ignoreDts = $v.ignoreDts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TunerHostInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TunerHostInfo;
  }

  @override
  void update(void Function(TunerHostInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TunerHostInfo build() => _build();

  _$TunerHostInfo _build() {
    final _$result = _$v ??
        new _$TunerHostInfo._(
            id: id,
            url: url,
            type: type,
            deviceId: deviceId,
            friendlyName: friendlyName,
            importFavoritesOnly: importFavoritesOnly,
            allowHWTranscoding: allowHWTranscoding,
            allowFmp4TranscodingContainer: allowFmp4TranscodingContainer,
            allowStreamSharing: allowStreamSharing,
            fallbackMaxStreamingBitrate: fallbackMaxStreamingBitrate,
            enableStreamLooping: enableStreamLooping,
            source_: source_,
            tunerCount: tunerCount,
            userAgent: userAgent,
            ignoreDts: ignoreDts);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
