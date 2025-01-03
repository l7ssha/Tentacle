// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibraryOptions extends LibraryOptions {
  @override
  final bool? enabled;
  @override
  final bool? enablePhotos;
  @override
  final bool? enableRealtimeMonitor;
  @override
  final bool? enableLUFSScan;
  @override
  final bool? enableChapterImageExtraction;
  @override
  final bool? extractChapterImagesDuringLibraryScan;
  @override
  final bool? enableTrickplayImageExtraction;
  @override
  final bool? extractTrickplayImagesDuringLibraryScan;
  @override
  final BuiltList<MediaPathInfo>? pathInfos;
  @override
  final bool? saveLocalMetadata;
  @override
  final bool? enableInternetProviders;
  @override
  final bool? enableAutomaticSeriesGrouping;
  @override
  final bool? enableEmbeddedTitles;
  @override
  final bool? enableEmbeddedExtrasTitles;
  @override
  final bool? enableEmbeddedEpisodeInfos;
  @override
  final int? automaticRefreshIntervalDays;
  @override
  final String? preferredMetadataLanguage;
  @override
  final String? metadataCountryCode;
  @override
  final String? seasonZeroDisplayName;
  @override
  final BuiltList<String>? metadataSavers;
  @override
  final BuiltList<String>? disabledLocalMetadataReaders;
  @override
  final BuiltList<String>? localMetadataReaderOrder;
  @override
  final BuiltList<String>? disabledSubtitleFetchers;
  @override
  final BuiltList<String>? subtitleFetcherOrder;
  @override
  final BuiltList<String>? disabledMediaSegmentProviders;
  @override
  final BuiltList<String>? mediaSegmentProvideOrder;
  @override
  final bool? skipSubtitlesIfEmbeddedSubtitlesPresent;
  @override
  final bool? skipSubtitlesIfAudioTrackMatches;
  @override
  final BuiltList<String>? subtitleDownloadLanguages;
  @override
  final bool? requirePerfectSubtitleMatch;
  @override
  final bool? saveSubtitlesWithMedia;
  @override
  final bool? saveLyricsWithMedia;
  @override
  final bool? saveTrickplayWithMedia;
  @override
  final BuiltList<String>? disabledLyricFetchers;
  @override
  final BuiltList<String>? lyricFetcherOrder;
  @override
  final bool? preferNonstandardArtistsTag;
  @override
  final bool? useCustomTagDelimiters;
  @override
  final BuiltList<String>? customTagDelimiters;
  @override
  final BuiltList<String>? delimiterWhitelist;
  @override
  final bool? automaticallyAddToCollection;
  @override
  final EmbeddedSubtitleOptions? allowEmbeddedSubtitles;
  @override
  final BuiltList<TypeOptions>? typeOptions;

  factory _$LibraryOptions([void Function(LibraryOptionsBuilder)? updates]) =>
      (new LibraryOptionsBuilder()..update(updates))._build();

  _$LibraryOptions._(
      {this.enabled,
      this.enablePhotos,
      this.enableRealtimeMonitor,
      this.enableLUFSScan,
      this.enableChapterImageExtraction,
      this.extractChapterImagesDuringLibraryScan,
      this.enableTrickplayImageExtraction,
      this.extractTrickplayImagesDuringLibraryScan,
      this.pathInfos,
      this.saveLocalMetadata,
      this.enableInternetProviders,
      this.enableAutomaticSeriesGrouping,
      this.enableEmbeddedTitles,
      this.enableEmbeddedExtrasTitles,
      this.enableEmbeddedEpisodeInfos,
      this.automaticRefreshIntervalDays,
      this.preferredMetadataLanguage,
      this.metadataCountryCode,
      this.seasonZeroDisplayName,
      this.metadataSavers,
      this.disabledLocalMetadataReaders,
      this.localMetadataReaderOrder,
      this.disabledSubtitleFetchers,
      this.subtitleFetcherOrder,
      this.disabledMediaSegmentProviders,
      this.mediaSegmentProvideOrder,
      this.skipSubtitlesIfEmbeddedSubtitlesPresent,
      this.skipSubtitlesIfAudioTrackMatches,
      this.subtitleDownloadLanguages,
      this.requirePerfectSubtitleMatch,
      this.saveSubtitlesWithMedia,
      this.saveLyricsWithMedia,
      this.saveTrickplayWithMedia,
      this.disabledLyricFetchers,
      this.lyricFetcherOrder,
      this.preferNonstandardArtistsTag,
      this.useCustomTagDelimiters,
      this.customTagDelimiters,
      this.delimiterWhitelist,
      this.automaticallyAddToCollection,
      this.allowEmbeddedSubtitles,
      this.typeOptions})
      : super._();

  @override
  LibraryOptions rebuild(void Function(LibraryOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryOptionsBuilder toBuilder() =>
      new LibraryOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryOptions &&
        enabled == other.enabled &&
        enablePhotos == other.enablePhotos &&
        enableRealtimeMonitor == other.enableRealtimeMonitor &&
        enableLUFSScan == other.enableLUFSScan &&
        enableChapterImageExtraction == other.enableChapterImageExtraction &&
        extractChapterImagesDuringLibraryScan ==
            other.extractChapterImagesDuringLibraryScan &&
        enableTrickplayImageExtraction ==
            other.enableTrickplayImageExtraction &&
        extractTrickplayImagesDuringLibraryScan ==
            other.extractTrickplayImagesDuringLibraryScan &&
        pathInfos == other.pathInfos &&
        saveLocalMetadata == other.saveLocalMetadata &&
        enableInternetProviders == other.enableInternetProviders &&
        enableAutomaticSeriesGrouping == other.enableAutomaticSeriesGrouping &&
        enableEmbeddedTitles == other.enableEmbeddedTitles &&
        enableEmbeddedExtrasTitles == other.enableEmbeddedExtrasTitles &&
        enableEmbeddedEpisodeInfos == other.enableEmbeddedEpisodeInfos &&
        automaticRefreshIntervalDays == other.automaticRefreshIntervalDays &&
        preferredMetadataLanguage == other.preferredMetadataLanguage &&
        metadataCountryCode == other.metadataCountryCode &&
        seasonZeroDisplayName == other.seasonZeroDisplayName &&
        metadataSavers == other.metadataSavers &&
        disabledLocalMetadataReaders == other.disabledLocalMetadataReaders &&
        localMetadataReaderOrder == other.localMetadataReaderOrder &&
        disabledSubtitleFetchers == other.disabledSubtitleFetchers &&
        subtitleFetcherOrder == other.subtitleFetcherOrder &&
        disabledMediaSegmentProviders == other.disabledMediaSegmentProviders &&
        mediaSegmentProvideOrder == other.mediaSegmentProvideOrder &&
        skipSubtitlesIfEmbeddedSubtitlesPresent ==
            other.skipSubtitlesIfEmbeddedSubtitlesPresent &&
        skipSubtitlesIfAudioTrackMatches ==
            other.skipSubtitlesIfAudioTrackMatches &&
        subtitleDownloadLanguages == other.subtitleDownloadLanguages &&
        requirePerfectSubtitleMatch == other.requirePerfectSubtitleMatch &&
        saveSubtitlesWithMedia == other.saveSubtitlesWithMedia &&
        saveLyricsWithMedia == other.saveLyricsWithMedia &&
        saveTrickplayWithMedia == other.saveTrickplayWithMedia &&
        disabledLyricFetchers == other.disabledLyricFetchers &&
        lyricFetcherOrder == other.lyricFetcherOrder &&
        preferNonstandardArtistsTag == other.preferNonstandardArtistsTag &&
        useCustomTagDelimiters == other.useCustomTagDelimiters &&
        customTagDelimiters == other.customTagDelimiters &&
        delimiterWhitelist == other.delimiterWhitelist &&
        automaticallyAddToCollection == other.automaticallyAddToCollection &&
        allowEmbeddedSubtitles == other.allowEmbeddedSubtitles &&
        typeOptions == other.typeOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, enablePhotos.hashCode);
    _$hash = $jc(_$hash, enableRealtimeMonitor.hashCode);
    _$hash = $jc(_$hash, enableLUFSScan.hashCode);
    _$hash = $jc(_$hash, enableChapterImageExtraction.hashCode);
    _$hash = $jc(_$hash, extractChapterImagesDuringLibraryScan.hashCode);
    _$hash = $jc(_$hash, enableTrickplayImageExtraction.hashCode);
    _$hash = $jc(_$hash, extractTrickplayImagesDuringLibraryScan.hashCode);
    _$hash = $jc(_$hash, pathInfos.hashCode);
    _$hash = $jc(_$hash, saveLocalMetadata.hashCode);
    _$hash = $jc(_$hash, enableInternetProviders.hashCode);
    _$hash = $jc(_$hash, enableAutomaticSeriesGrouping.hashCode);
    _$hash = $jc(_$hash, enableEmbeddedTitles.hashCode);
    _$hash = $jc(_$hash, enableEmbeddedExtrasTitles.hashCode);
    _$hash = $jc(_$hash, enableEmbeddedEpisodeInfos.hashCode);
    _$hash = $jc(_$hash, automaticRefreshIntervalDays.hashCode);
    _$hash = $jc(_$hash, preferredMetadataLanguage.hashCode);
    _$hash = $jc(_$hash, metadataCountryCode.hashCode);
    _$hash = $jc(_$hash, seasonZeroDisplayName.hashCode);
    _$hash = $jc(_$hash, metadataSavers.hashCode);
    _$hash = $jc(_$hash, disabledLocalMetadataReaders.hashCode);
    _$hash = $jc(_$hash, localMetadataReaderOrder.hashCode);
    _$hash = $jc(_$hash, disabledSubtitleFetchers.hashCode);
    _$hash = $jc(_$hash, subtitleFetcherOrder.hashCode);
    _$hash = $jc(_$hash, disabledMediaSegmentProviders.hashCode);
    _$hash = $jc(_$hash, mediaSegmentProvideOrder.hashCode);
    _$hash = $jc(_$hash, skipSubtitlesIfEmbeddedSubtitlesPresent.hashCode);
    _$hash = $jc(_$hash, skipSubtitlesIfAudioTrackMatches.hashCode);
    _$hash = $jc(_$hash, subtitleDownloadLanguages.hashCode);
    _$hash = $jc(_$hash, requirePerfectSubtitleMatch.hashCode);
    _$hash = $jc(_$hash, saveSubtitlesWithMedia.hashCode);
    _$hash = $jc(_$hash, saveLyricsWithMedia.hashCode);
    _$hash = $jc(_$hash, saveTrickplayWithMedia.hashCode);
    _$hash = $jc(_$hash, disabledLyricFetchers.hashCode);
    _$hash = $jc(_$hash, lyricFetcherOrder.hashCode);
    _$hash = $jc(_$hash, preferNonstandardArtistsTag.hashCode);
    _$hash = $jc(_$hash, useCustomTagDelimiters.hashCode);
    _$hash = $jc(_$hash, customTagDelimiters.hashCode);
    _$hash = $jc(_$hash, delimiterWhitelist.hashCode);
    _$hash = $jc(_$hash, automaticallyAddToCollection.hashCode);
    _$hash = $jc(_$hash, allowEmbeddedSubtitles.hashCode);
    _$hash = $jc(_$hash, typeOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryOptions')
          ..add('enabled', enabled)
          ..add('enablePhotos', enablePhotos)
          ..add('enableRealtimeMonitor', enableRealtimeMonitor)
          ..add('enableLUFSScan', enableLUFSScan)
          ..add('enableChapterImageExtraction', enableChapterImageExtraction)
          ..add('extractChapterImagesDuringLibraryScan',
              extractChapterImagesDuringLibraryScan)
          ..add(
              'enableTrickplayImageExtraction', enableTrickplayImageExtraction)
          ..add('extractTrickplayImagesDuringLibraryScan',
              extractTrickplayImagesDuringLibraryScan)
          ..add('pathInfos', pathInfos)
          ..add('saveLocalMetadata', saveLocalMetadata)
          ..add('enableInternetProviders', enableInternetProviders)
          ..add('enableAutomaticSeriesGrouping', enableAutomaticSeriesGrouping)
          ..add('enableEmbeddedTitles', enableEmbeddedTitles)
          ..add('enableEmbeddedExtrasTitles', enableEmbeddedExtrasTitles)
          ..add('enableEmbeddedEpisodeInfos', enableEmbeddedEpisodeInfos)
          ..add('automaticRefreshIntervalDays', automaticRefreshIntervalDays)
          ..add('preferredMetadataLanguage', preferredMetadataLanguage)
          ..add('metadataCountryCode', metadataCountryCode)
          ..add('seasonZeroDisplayName', seasonZeroDisplayName)
          ..add('metadataSavers', metadataSavers)
          ..add('disabledLocalMetadataReaders', disabledLocalMetadataReaders)
          ..add('localMetadataReaderOrder', localMetadataReaderOrder)
          ..add('disabledSubtitleFetchers', disabledSubtitleFetchers)
          ..add('subtitleFetcherOrder', subtitleFetcherOrder)
          ..add('disabledMediaSegmentProviders', disabledMediaSegmentProviders)
          ..add('mediaSegmentProvideOrder', mediaSegmentProvideOrder)
          ..add('skipSubtitlesIfEmbeddedSubtitlesPresent',
              skipSubtitlesIfEmbeddedSubtitlesPresent)
          ..add('skipSubtitlesIfAudioTrackMatches',
              skipSubtitlesIfAudioTrackMatches)
          ..add('subtitleDownloadLanguages', subtitleDownloadLanguages)
          ..add('requirePerfectSubtitleMatch', requirePerfectSubtitleMatch)
          ..add('saveSubtitlesWithMedia', saveSubtitlesWithMedia)
          ..add('saveLyricsWithMedia', saveLyricsWithMedia)
          ..add('saveTrickplayWithMedia', saveTrickplayWithMedia)
          ..add('disabledLyricFetchers', disabledLyricFetchers)
          ..add('lyricFetcherOrder', lyricFetcherOrder)
          ..add('preferNonstandardArtistsTag', preferNonstandardArtistsTag)
          ..add('useCustomTagDelimiters', useCustomTagDelimiters)
          ..add('customTagDelimiters', customTagDelimiters)
          ..add('delimiterWhitelist', delimiterWhitelist)
          ..add('automaticallyAddToCollection', automaticallyAddToCollection)
          ..add('allowEmbeddedSubtitles', allowEmbeddedSubtitles)
          ..add('typeOptions', typeOptions))
        .toString();
  }
}

class LibraryOptionsBuilder
    implements Builder<LibraryOptions, LibraryOptionsBuilder> {
  _$LibraryOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _enablePhotos;
  bool? get enablePhotos => _$this._enablePhotos;
  set enablePhotos(bool? enablePhotos) => _$this._enablePhotos = enablePhotos;

  bool? _enableRealtimeMonitor;
  bool? get enableRealtimeMonitor => _$this._enableRealtimeMonitor;
  set enableRealtimeMonitor(bool? enableRealtimeMonitor) =>
      _$this._enableRealtimeMonitor = enableRealtimeMonitor;

  bool? _enableLUFSScan;
  bool? get enableLUFSScan => _$this._enableLUFSScan;
  set enableLUFSScan(bool? enableLUFSScan) =>
      _$this._enableLUFSScan = enableLUFSScan;

  bool? _enableChapterImageExtraction;
  bool? get enableChapterImageExtraction =>
      _$this._enableChapterImageExtraction;
  set enableChapterImageExtraction(bool? enableChapterImageExtraction) =>
      _$this._enableChapterImageExtraction = enableChapterImageExtraction;

  bool? _extractChapterImagesDuringLibraryScan;
  bool? get extractChapterImagesDuringLibraryScan =>
      _$this._extractChapterImagesDuringLibraryScan;
  set extractChapterImagesDuringLibraryScan(
          bool? extractChapterImagesDuringLibraryScan) =>
      _$this._extractChapterImagesDuringLibraryScan =
          extractChapterImagesDuringLibraryScan;

  bool? _enableTrickplayImageExtraction;
  bool? get enableTrickplayImageExtraction =>
      _$this._enableTrickplayImageExtraction;
  set enableTrickplayImageExtraction(bool? enableTrickplayImageExtraction) =>
      _$this._enableTrickplayImageExtraction = enableTrickplayImageExtraction;

  bool? _extractTrickplayImagesDuringLibraryScan;
  bool? get extractTrickplayImagesDuringLibraryScan =>
      _$this._extractTrickplayImagesDuringLibraryScan;
  set extractTrickplayImagesDuringLibraryScan(
          bool? extractTrickplayImagesDuringLibraryScan) =>
      _$this._extractTrickplayImagesDuringLibraryScan =
          extractTrickplayImagesDuringLibraryScan;

  ListBuilder<MediaPathInfo>? _pathInfos;
  ListBuilder<MediaPathInfo> get pathInfos =>
      _$this._pathInfos ??= new ListBuilder<MediaPathInfo>();
  set pathInfos(ListBuilder<MediaPathInfo>? pathInfos) =>
      _$this._pathInfos = pathInfos;

  bool? _saveLocalMetadata;
  bool? get saveLocalMetadata => _$this._saveLocalMetadata;
  set saveLocalMetadata(bool? saveLocalMetadata) =>
      _$this._saveLocalMetadata = saveLocalMetadata;

  bool? _enableInternetProviders;
  bool? get enableInternetProviders => _$this._enableInternetProviders;
  set enableInternetProviders(bool? enableInternetProviders) =>
      _$this._enableInternetProviders = enableInternetProviders;

  bool? _enableAutomaticSeriesGrouping;
  bool? get enableAutomaticSeriesGrouping =>
      _$this._enableAutomaticSeriesGrouping;
  set enableAutomaticSeriesGrouping(bool? enableAutomaticSeriesGrouping) =>
      _$this._enableAutomaticSeriesGrouping = enableAutomaticSeriesGrouping;

  bool? _enableEmbeddedTitles;
  bool? get enableEmbeddedTitles => _$this._enableEmbeddedTitles;
  set enableEmbeddedTitles(bool? enableEmbeddedTitles) =>
      _$this._enableEmbeddedTitles = enableEmbeddedTitles;

  bool? _enableEmbeddedExtrasTitles;
  bool? get enableEmbeddedExtrasTitles => _$this._enableEmbeddedExtrasTitles;
  set enableEmbeddedExtrasTitles(bool? enableEmbeddedExtrasTitles) =>
      _$this._enableEmbeddedExtrasTitles = enableEmbeddedExtrasTitles;

  bool? _enableEmbeddedEpisodeInfos;
  bool? get enableEmbeddedEpisodeInfos => _$this._enableEmbeddedEpisodeInfos;
  set enableEmbeddedEpisodeInfos(bool? enableEmbeddedEpisodeInfos) =>
      _$this._enableEmbeddedEpisodeInfos = enableEmbeddedEpisodeInfos;

  int? _automaticRefreshIntervalDays;
  int? get automaticRefreshIntervalDays => _$this._automaticRefreshIntervalDays;
  set automaticRefreshIntervalDays(int? automaticRefreshIntervalDays) =>
      _$this._automaticRefreshIntervalDays = automaticRefreshIntervalDays;

  String? _preferredMetadataLanguage;
  String? get preferredMetadataLanguage => _$this._preferredMetadataLanguage;
  set preferredMetadataLanguage(String? preferredMetadataLanguage) =>
      _$this._preferredMetadataLanguage = preferredMetadataLanguage;

  String? _metadataCountryCode;
  String? get metadataCountryCode => _$this._metadataCountryCode;
  set metadataCountryCode(String? metadataCountryCode) =>
      _$this._metadataCountryCode = metadataCountryCode;

  String? _seasonZeroDisplayName;
  String? get seasonZeroDisplayName => _$this._seasonZeroDisplayName;
  set seasonZeroDisplayName(String? seasonZeroDisplayName) =>
      _$this._seasonZeroDisplayName = seasonZeroDisplayName;

  ListBuilder<String>? _metadataSavers;
  ListBuilder<String> get metadataSavers =>
      _$this._metadataSavers ??= new ListBuilder<String>();
  set metadataSavers(ListBuilder<String>? metadataSavers) =>
      _$this._metadataSavers = metadataSavers;

  ListBuilder<String>? _disabledLocalMetadataReaders;
  ListBuilder<String> get disabledLocalMetadataReaders =>
      _$this._disabledLocalMetadataReaders ??= new ListBuilder<String>();
  set disabledLocalMetadataReaders(
          ListBuilder<String>? disabledLocalMetadataReaders) =>
      _$this._disabledLocalMetadataReaders = disabledLocalMetadataReaders;

  ListBuilder<String>? _localMetadataReaderOrder;
  ListBuilder<String> get localMetadataReaderOrder =>
      _$this._localMetadataReaderOrder ??= new ListBuilder<String>();
  set localMetadataReaderOrder(ListBuilder<String>? localMetadataReaderOrder) =>
      _$this._localMetadataReaderOrder = localMetadataReaderOrder;

  ListBuilder<String>? _disabledSubtitleFetchers;
  ListBuilder<String> get disabledSubtitleFetchers =>
      _$this._disabledSubtitleFetchers ??= new ListBuilder<String>();
  set disabledSubtitleFetchers(ListBuilder<String>? disabledSubtitleFetchers) =>
      _$this._disabledSubtitleFetchers = disabledSubtitleFetchers;

  ListBuilder<String>? _subtitleFetcherOrder;
  ListBuilder<String> get subtitleFetcherOrder =>
      _$this._subtitleFetcherOrder ??= new ListBuilder<String>();
  set subtitleFetcherOrder(ListBuilder<String>? subtitleFetcherOrder) =>
      _$this._subtitleFetcherOrder = subtitleFetcherOrder;

  ListBuilder<String>? _disabledMediaSegmentProviders;
  ListBuilder<String> get disabledMediaSegmentProviders =>
      _$this._disabledMediaSegmentProviders ??= new ListBuilder<String>();
  set disabledMediaSegmentProviders(
          ListBuilder<String>? disabledMediaSegmentProviders) =>
      _$this._disabledMediaSegmentProviders = disabledMediaSegmentProviders;

  ListBuilder<String>? _mediaSegmentProvideOrder;
  ListBuilder<String> get mediaSegmentProvideOrder =>
      _$this._mediaSegmentProvideOrder ??= new ListBuilder<String>();
  set mediaSegmentProvideOrder(ListBuilder<String>? mediaSegmentProvideOrder) =>
      _$this._mediaSegmentProvideOrder = mediaSegmentProvideOrder;

  bool? _skipSubtitlesIfEmbeddedSubtitlesPresent;
  bool? get skipSubtitlesIfEmbeddedSubtitlesPresent =>
      _$this._skipSubtitlesIfEmbeddedSubtitlesPresent;
  set skipSubtitlesIfEmbeddedSubtitlesPresent(
          bool? skipSubtitlesIfEmbeddedSubtitlesPresent) =>
      _$this._skipSubtitlesIfEmbeddedSubtitlesPresent =
          skipSubtitlesIfEmbeddedSubtitlesPresent;

  bool? _skipSubtitlesIfAudioTrackMatches;
  bool? get skipSubtitlesIfAudioTrackMatches =>
      _$this._skipSubtitlesIfAudioTrackMatches;
  set skipSubtitlesIfAudioTrackMatches(
          bool? skipSubtitlesIfAudioTrackMatches) =>
      _$this._skipSubtitlesIfAudioTrackMatches =
          skipSubtitlesIfAudioTrackMatches;

  ListBuilder<String>? _subtitleDownloadLanguages;
  ListBuilder<String> get subtitleDownloadLanguages =>
      _$this._subtitleDownloadLanguages ??= new ListBuilder<String>();
  set subtitleDownloadLanguages(
          ListBuilder<String>? subtitleDownloadLanguages) =>
      _$this._subtitleDownloadLanguages = subtitleDownloadLanguages;

  bool? _requirePerfectSubtitleMatch;
  bool? get requirePerfectSubtitleMatch => _$this._requirePerfectSubtitleMatch;
  set requirePerfectSubtitleMatch(bool? requirePerfectSubtitleMatch) =>
      _$this._requirePerfectSubtitleMatch = requirePerfectSubtitleMatch;

  bool? _saveSubtitlesWithMedia;
  bool? get saveSubtitlesWithMedia => _$this._saveSubtitlesWithMedia;
  set saveSubtitlesWithMedia(bool? saveSubtitlesWithMedia) =>
      _$this._saveSubtitlesWithMedia = saveSubtitlesWithMedia;

  bool? _saveLyricsWithMedia;
  bool? get saveLyricsWithMedia => _$this._saveLyricsWithMedia;
  set saveLyricsWithMedia(bool? saveLyricsWithMedia) =>
      _$this._saveLyricsWithMedia = saveLyricsWithMedia;

  bool? _saveTrickplayWithMedia;
  bool? get saveTrickplayWithMedia => _$this._saveTrickplayWithMedia;
  set saveTrickplayWithMedia(bool? saveTrickplayWithMedia) =>
      _$this._saveTrickplayWithMedia = saveTrickplayWithMedia;

  ListBuilder<String>? _disabledLyricFetchers;
  ListBuilder<String> get disabledLyricFetchers =>
      _$this._disabledLyricFetchers ??= new ListBuilder<String>();
  set disabledLyricFetchers(ListBuilder<String>? disabledLyricFetchers) =>
      _$this._disabledLyricFetchers = disabledLyricFetchers;

  ListBuilder<String>? _lyricFetcherOrder;
  ListBuilder<String> get lyricFetcherOrder =>
      _$this._lyricFetcherOrder ??= new ListBuilder<String>();
  set lyricFetcherOrder(ListBuilder<String>? lyricFetcherOrder) =>
      _$this._lyricFetcherOrder = lyricFetcherOrder;

  bool? _preferNonstandardArtistsTag;
  bool? get preferNonstandardArtistsTag => _$this._preferNonstandardArtistsTag;
  set preferNonstandardArtistsTag(bool? preferNonstandardArtistsTag) =>
      _$this._preferNonstandardArtistsTag = preferNonstandardArtistsTag;

  bool? _useCustomTagDelimiters;
  bool? get useCustomTagDelimiters => _$this._useCustomTagDelimiters;
  set useCustomTagDelimiters(bool? useCustomTagDelimiters) =>
      _$this._useCustomTagDelimiters = useCustomTagDelimiters;

  ListBuilder<String>? _customTagDelimiters;
  ListBuilder<String> get customTagDelimiters =>
      _$this._customTagDelimiters ??= new ListBuilder<String>();
  set customTagDelimiters(ListBuilder<String>? customTagDelimiters) =>
      _$this._customTagDelimiters = customTagDelimiters;

  ListBuilder<String>? _delimiterWhitelist;
  ListBuilder<String> get delimiterWhitelist =>
      _$this._delimiterWhitelist ??= new ListBuilder<String>();
  set delimiterWhitelist(ListBuilder<String>? delimiterWhitelist) =>
      _$this._delimiterWhitelist = delimiterWhitelist;

  bool? _automaticallyAddToCollection;
  bool? get automaticallyAddToCollection =>
      _$this._automaticallyAddToCollection;
  set automaticallyAddToCollection(bool? automaticallyAddToCollection) =>
      _$this._automaticallyAddToCollection = automaticallyAddToCollection;

  EmbeddedSubtitleOptions? _allowEmbeddedSubtitles;
  EmbeddedSubtitleOptions? get allowEmbeddedSubtitles =>
      _$this._allowEmbeddedSubtitles;
  set allowEmbeddedSubtitles(EmbeddedSubtitleOptions? allowEmbeddedSubtitles) =>
      _$this._allowEmbeddedSubtitles = allowEmbeddedSubtitles;

  ListBuilder<TypeOptions>? _typeOptions;
  ListBuilder<TypeOptions> get typeOptions =>
      _$this._typeOptions ??= new ListBuilder<TypeOptions>();
  set typeOptions(ListBuilder<TypeOptions>? typeOptions) =>
      _$this._typeOptions = typeOptions;

  LibraryOptionsBuilder() {
    LibraryOptions._defaults(this);
  }

  LibraryOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _enablePhotos = $v.enablePhotos;
      _enableRealtimeMonitor = $v.enableRealtimeMonitor;
      _enableLUFSScan = $v.enableLUFSScan;
      _enableChapterImageExtraction = $v.enableChapterImageExtraction;
      _extractChapterImagesDuringLibraryScan =
          $v.extractChapterImagesDuringLibraryScan;
      _enableTrickplayImageExtraction = $v.enableTrickplayImageExtraction;
      _extractTrickplayImagesDuringLibraryScan =
          $v.extractTrickplayImagesDuringLibraryScan;
      _pathInfos = $v.pathInfos?.toBuilder();
      _saveLocalMetadata = $v.saveLocalMetadata;
      _enableInternetProviders = $v.enableInternetProviders;
      _enableAutomaticSeriesGrouping = $v.enableAutomaticSeriesGrouping;
      _enableEmbeddedTitles = $v.enableEmbeddedTitles;
      _enableEmbeddedExtrasTitles = $v.enableEmbeddedExtrasTitles;
      _enableEmbeddedEpisodeInfos = $v.enableEmbeddedEpisodeInfos;
      _automaticRefreshIntervalDays = $v.automaticRefreshIntervalDays;
      _preferredMetadataLanguage = $v.preferredMetadataLanguage;
      _metadataCountryCode = $v.metadataCountryCode;
      _seasonZeroDisplayName = $v.seasonZeroDisplayName;
      _metadataSavers = $v.metadataSavers?.toBuilder();
      _disabledLocalMetadataReaders =
          $v.disabledLocalMetadataReaders?.toBuilder();
      _localMetadataReaderOrder = $v.localMetadataReaderOrder?.toBuilder();
      _disabledSubtitleFetchers = $v.disabledSubtitleFetchers?.toBuilder();
      _subtitleFetcherOrder = $v.subtitleFetcherOrder?.toBuilder();
      _disabledMediaSegmentProviders =
          $v.disabledMediaSegmentProviders?.toBuilder();
      _mediaSegmentProvideOrder = $v.mediaSegmentProvideOrder?.toBuilder();
      _skipSubtitlesIfEmbeddedSubtitlesPresent =
          $v.skipSubtitlesIfEmbeddedSubtitlesPresent;
      _skipSubtitlesIfAudioTrackMatches = $v.skipSubtitlesIfAudioTrackMatches;
      _subtitleDownloadLanguages = $v.subtitleDownloadLanguages?.toBuilder();
      _requirePerfectSubtitleMatch = $v.requirePerfectSubtitleMatch;
      _saveSubtitlesWithMedia = $v.saveSubtitlesWithMedia;
      _saveLyricsWithMedia = $v.saveLyricsWithMedia;
      _saveTrickplayWithMedia = $v.saveTrickplayWithMedia;
      _disabledLyricFetchers = $v.disabledLyricFetchers?.toBuilder();
      _lyricFetcherOrder = $v.lyricFetcherOrder?.toBuilder();
      _preferNonstandardArtistsTag = $v.preferNonstandardArtistsTag;
      _useCustomTagDelimiters = $v.useCustomTagDelimiters;
      _customTagDelimiters = $v.customTagDelimiters?.toBuilder();
      _delimiterWhitelist = $v.delimiterWhitelist?.toBuilder();
      _automaticallyAddToCollection = $v.automaticallyAddToCollection;
      _allowEmbeddedSubtitles = $v.allowEmbeddedSubtitles;
      _typeOptions = $v.typeOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryOptions;
  }

  @override
  void update(void Function(LibraryOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryOptions build() => _build();

  _$LibraryOptions _build() {
    _$LibraryOptions _$result;
    try {
      _$result = _$v ??
          new _$LibraryOptions._(
              enabled: enabled,
              enablePhotos: enablePhotos,
              enableRealtimeMonitor: enableRealtimeMonitor,
              enableLUFSScan: enableLUFSScan,
              enableChapterImageExtraction: enableChapterImageExtraction,
              extractChapterImagesDuringLibraryScan:
                  extractChapterImagesDuringLibraryScan,
              enableTrickplayImageExtraction: enableTrickplayImageExtraction,
              extractTrickplayImagesDuringLibraryScan:
                  extractTrickplayImagesDuringLibraryScan,
              pathInfos: _pathInfos?.build(),
              saveLocalMetadata: saveLocalMetadata,
              enableInternetProviders: enableInternetProviders,
              enableAutomaticSeriesGrouping: enableAutomaticSeriesGrouping,
              enableEmbeddedTitles: enableEmbeddedTitles,
              enableEmbeddedExtrasTitles: enableEmbeddedExtrasTitles,
              enableEmbeddedEpisodeInfos: enableEmbeddedEpisodeInfos,
              automaticRefreshIntervalDays: automaticRefreshIntervalDays,
              preferredMetadataLanguage: preferredMetadataLanguage,
              metadataCountryCode: metadataCountryCode,
              seasonZeroDisplayName: seasonZeroDisplayName,
              metadataSavers: _metadataSavers?.build(),
              disabledLocalMetadataReaders:
                  _disabledLocalMetadataReaders?.build(),
              localMetadataReaderOrder: _localMetadataReaderOrder?.build(),
              disabledSubtitleFetchers: _disabledSubtitleFetchers?.build(),
              subtitleFetcherOrder: _subtitleFetcherOrder?.build(),
              disabledMediaSegmentProviders:
                  _disabledMediaSegmentProviders?.build(),
              mediaSegmentProvideOrder: _mediaSegmentProvideOrder?.build(),
              skipSubtitlesIfEmbeddedSubtitlesPresent:
                  skipSubtitlesIfEmbeddedSubtitlesPresent,
              skipSubtitlesIfAudioTrackMatches:
                  skipSubtitlesIfAudioTrackMatches,
              subtitleDownloadLanguages: _subtitleDownloadLanguages?.build(),
              requirePerfectSubtitleMatch: requirePerfectSubtitleMatch,
              saveSubtitlesWithMedia: saveSubtitlesWithMedia,
              saveLyricsWithMedia: saveLyricsWithMedia,
              saveTrickplayWithMedia: saveTrickplayWithMedia,
              disabledLyricFetchers: _disabledLyricFetchers?.build(),
              lyricFetcherOrder: _lyricFetcherOrder?.build(),
              preferNonstandardArtistsTag: preferNonstandardArtistsTag,
              useCustomTagDelimiters: useCustomTagDelimiters,
              customTagDelimiters: _customTagDelimiters?.build(),
              delimiterWhitelist: _delimiterWhitelist?.build(),
              automaticallyAddToCollection: automaticallyAddToCollection,
              allowEmbeddedSubtitles: allowEmbeddedSubtitles,
              typeOptions: _typeOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pathInfos';
        _pathInfos?.build();

        _$failedField = 'metadataSavers';
        _metadataSavers?.build();
        _$failedField = 'disabledLocalMetadataReaders';
        _disabledLocalMetadataReaders?.build();
        _$failedField = 'localMetadataReaderOrder';
        _localMetadataReaderOrder?.build();
        _$failedField = 'disabledSubtitleFetchers';
        _disabledSubtitleFetchers?.build();
        _$failedField = 'subtitleFetcherOrder';
        _subtitleFetcherOrder?.build();
        _$failedField = 'disabledMediaSegmentProviders';
        _disabledMediaSegmentProviders?.build();
        _$failedField = 'mediaSegmentProvideOrder';
        _mediaSegmentProvideOrder?.build();

        _$failedField = 'subtitleDownloadLanguages';
        _subtitleDownloadLanguages?.build();

        _$failedField = 'disabledLyricFetchers';
        _disabledLyricFetchers?.build();
        _$failedField = 'lyricFetcherOrder';
        _lyricFetcherOrder?.build();

        _$failedField = 'customTagDelimiters';
        _customTagDelimiters?.build();
        _$failedField = 'delimiterWhitelist';
        _delimiterWhitelist?.build();

        _$failedField = 'typeOptions';
        _typeOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibraryOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
