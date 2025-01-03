# tentacle.model.ServerConfiguration

## Load the model package
```dart
import 'package:tentacle/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logFileRetentionDays** | **int** | Gets or sets the number of days we should retain log files. | [optional] 
**isStartupWizardCompleted** | **bool** | Gets or sets a value indicating whether this instance is first run. | [optional] 
**cachePath** | **String** | Gets or sets the cache path. | [optional] 
**previousVersion** | **String** | Gets or sets the last known version that was ran using the configuration. | [optional] 
**previousVersionStr** | **String** | Gets or sets the stringified PreviousVersion to be stored/loaded,  because System.Version itself isn't xml-serializable. | [optional] 
**enableMetrics** | **bool** | Gets or sets a value indicating whether to enable prometheus metrics exporting. | [optional] 
**enableNormalizedItemByNameIds** | **bool** |  | [optional] 
**isPortAuthorized** | **bool** | Gets or sets a value indicating whether this instance is port authorized. | [optional] 
**quickConnectAvailable** | **bool** | Gets or sets a value indicating whether quick connect is available for use on this server. | [optional] 
**enableCaseSensitiveItemIds** | **bool** | Gets or sets a value indicating whether [enable case sensitive item ids]. | [optional] 
**disableLiveTvChannelUserDataName** | **bool** |  | [optional] 
**metadataPath** | **String** | Gets or sets the metadata path. | [optional] 
**preferredMetadataLanguage** | **String** | Gets or sets the preferred metadata language. | [optional] 
**metadataCountryCode** | **String** | Gets or sets the metadata country code. | [optional] 
**sortReplaceCharacters** | **BuiltList&lt;String&gt;** | Gets or sets characters to be replaced with a ' ' in strings to create a sort name. | [optional] 
**sortRemoveCharacters** | **BuiltList&lt;String&gt;** | Gets or sets characters to be removed from strings to create a sort name. | [optional] 
**sortRemoveWords** | **BuiltList&lt;String&gt;** | Gets or sets words to be removed from strings to create a sort name. | [optional] 
**minResumePct** | **int** | Gets or sets the minimum percentage of an item that must be played in order for playstate to be updated. | [optional] 
**maxResumePct** | **int** | Gets or sets the maximum percentage of an item that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched. | [optional] 
**minResumeDurationSeconds** | **int** | Gets or sets the minimum duration that an item must have in order to be eligible for playstate updates.. | [optional] 
**minAudiobookResume** | **int** | Gets or sets the minimum minutes of a book that must be played in order for playstate to be updated. | [optional] 
**maxAudiobookResume** | **int** | Gets or sets the remaining minutes of a book that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched. | [optional] 
**inactiveSessionThreshold** | **int** | Gets or sets the threshold in minutes after a inactive session gets closed automatically.  If set to 0 the check for inactive sessions gets disabled. | [optional] 
**libraryMonitorDelay** | **int** | Gets or sets the delay in seconds that we will wait after a file system change to try and discover what has been added/removed  Some delay is necessary with some items because their creation is not atomic.  It involves the creation of several  different directories and files. | [optional] 
**libraryUpdateDuration** | **int** | Gets or sets the duration in seconds that we will wait after a library updated event before executing the library changed notification. | [optional] 
**imageSavingConvention** | [**ImageSavingConvention**](ImageSavingConvention.md) | Gets or sets the image saving convention. | [optional] 
**metadataOptions** | [**BuiltList&lt;MetadataOptions&gt;**](MetadataOptions.md) |  | [optional] 
**skipDeserializationForBasicTypes** | **bool** |  | [optional] 
**serverName** | **String** |  | [optional] 
**uICulture** | **String** |  | [optional] 
**saveMetadataHidden** | **bool** |  | [optional] 
**contentTypes** | [**BuiltList&lt;NameValuePair&gt;**](NameValuePair.md) |  | [optional] 
**remoteClientBitrateLimit** | **int** |  | [optional] 
**enableFolderView** | **bool** |  | [optional] 
**enableGroupingIntoCollections** | **bool** |  | [optional] 
**displaySpecialsWithinSeasons** | **bool** |  | [optional] 
**codecsUsed** | **BuiltList&lt;String&gt;** |  | [optional] 
**pluginRepositories** | [**BuiltList&lt;RepositoryInfo&gt;**](RepositoryInfo.md) |  | [optional] 
**enableExternalContentInSuggestions** | **bool** |  | [optional] 
**imageExtractionTimeoutMs** | **int** |  | [optional] 
**pathSubstitutions** | [**BuiltList&lt;PathSubstitution&gt;**](PathSubstitution.md) |  | [optional] 
**enableSlowResponseWarning** | **bool** | Gets or sets a value indicating whether slow server responses should be logged as a warning. | [optional] 
**slowResponseThresholdMs** | **int** | Gets or sets the threshold for the slow response time warning in ms. | [optional] 
**corsHosts** | **BuiltList&lt;String&gt;** | Gets or sets the cors hosts. | [optional] 
**activityLogRetentionDays** | **int** | Gets or sets the number of days we should retain activity logs. | [optional] 
**libraryScanFanoutConcurrency** | **int** | Gets or sets the how the library scan fans out. | [optional] 
**libraryMetadataRefreshConcurrency** | **int** | Gets or sets the how many metadata refreshes can run concurrently. | [optional] 
**removeOldPlugins** | **bool** | Gets or sets a value indicating whether older plugins should automatically be deleted from the plugin folder. | [optional] 
**allowClientLogUpload** | **bool** | Gets or sets a value indicating whether clients should be allowed to upload logs. | [optional] 
**dummyChapterDuration** | **int** | Gets or sets the dummy chapter duration in seconds, use 0 (zero) or less to disable generation alltogether. | [optional] 
**chapterImageResolution** | [**ImageResolution**](ImageResolution.md) | Gets or sets the chapter image resolution. | [optional] 
**parallelImageEncodingLimit** | **int** | Gets or sets the limit for parallel image encoding. | [optional] 
**castReceiverApplications** | [**BuiltList&lt;CastReceiverApplication&gt;**](CastReceiverApplication.md) | Gets or sets the list of cast receiver applications. | [optional] 
**trickplayOptions** | [**TrickplayOptions**](TrickplayOptions.md) | Gets or sets the trickplay options. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


