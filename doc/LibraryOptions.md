# tentacle.model.LibraryOptions

## Load the model package
```dart
import 'package:tentacle/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**enablePhotos** | **bool** |  | [optional] 
**enableRealtimeMonitor** | **bool** |  | [optional] 
**enableLUFSScan** | **bool** |  | [optional] 
**enableChapterImageExtraction** | **bool** |  | [optional] 
**extractChapterImagesDuringLibraryScan** | **bool** |  | [optional] 
**enableTrickplayImageExtraction** | **bool** |  | [optional] 
**extractTrickplayImagesDuringLibraryScan** | **bool** |  | [optional] 
**pathInfos** | [**BuiltList&lt;MediaPathInfo&gt;**](MediaPathInfo.md) |  | [optional] 
**saveLocalMetadata** | **bool** |  | [optional] 
**enableInternetProviders** | **bool** |  | [optional] 
**enableAutomaticSeriesGrouping** | **bool** |  | [optional] 
**enableEmbeddedTitles** | **bool** |  | [optional] 
**enableEmbeddedExtrasTitles** | **bool** |  | [optional] 
**enableEmbeddedEpisodeInfos** | **bool** |  | [optional] 
**automaticRefreshIntervalDays** | **int** |  | [optional] 
**preferredMetadataLanguage** | **String** | Gets or sets the preferred metadata language. | [optional] 
**metadataCountryCode** | **String** | Gets or sets the metadata country code. | [optional] 
**seasonZeroDisplayName** | **String** |  | [optional] 
**metadataSavers** | **BuiltList&lt;String&gt;** |  | [optional] 
**disabledLocalMetadataReaders** | **BuiltList&lt;String&gt;** |  | [optional] 
**localMetadataReaderOrder** | **BuiltList&lt;String&gt;** |  | [optional] 
**disabledSubtitleFetchers** | **BuiltList&lt;String&gt;** |  | [optional] 
**subtitleFetcherOrder** | **BuiltList&lt;String&gt;** |  | [optional] 
**disabledMediaSegmentProviders** | **BuiltList&lt;String&gt;** |  | [optional] 
**mediaSegmentProvideOrder** | **BuiltList&lt;String&gt;** |  | [optional] 
**skipSubtitlesIfEmbeddedSubtitlesPresent** | **bool** |  | [optional] 
**skipSubtitlesIfAudioTrackMatches** | **bool** |  | [optional] 
**subtitleDownloadLanguages** | **BuiltList&lt;String&gt;** |  | [optional] 
**requirePerfectSubtitleMatch** | **bool** |  | [optional] 
**saveSubtitlesWithMedia** | **bool** |  | [optional] 
**saveLyricsWithMedia** | **bool** |  | [optional] [default to false]
**saveTrickplayWithMedia** | **bool** |  | [optional] [default to false]
**disabledLyricFetchers** | **BuiltList&lt;String&gt;** |  | [optional] 
**lyricFetcherOrder** | **BuiltList&lt;String&gt;** |  | [optional] 
**preferNonstandardArtistsTag** | **bool** |  | [optional] [default to false]
**useCustomTagDelimiters** | **bool** |  | [optional] [default to false]
**customTagDelimiters** | **BuiltList&lt;String&gt;** |  | [optional] 
**delimiterWhitelist** | **BuiltList&lt;String&gt;** |  | [optional] 
**automaticallyAddToCollection** | **bool** |  | [optional] 
**allowEmbeddedSubtitles** | [**EmbeddedSubtitleOptions**](EmbeddedSubtitleOptions.md) | An enum representing the options to disable embedded subs. | [optional] 
**typeOptions** | [**BuiltList&lt;TypeOptions&gt;**](TypeOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


