# tentacle.model.CodecProfile

## Load the model package
```dart
import 'package:tentacle/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**CodecType**](CodecType.md) | Gets or sets the MediaBrowser.Model.Dlna.CodecType which this container must meet. | [optional] 
**conditions** | [**BuiltList&lt;ProfileCondition&gt;**](ProfileCondition.md) | Gets or sets the list of MediaBrowser.Model.Dlna.ProfileCondition which this profile must meet. | [optional] 
**applyConditions** | [**BuiltList&lt;ProfileCondition&gt;**](ProfileCondition.md) | Gets or sets the list of MediaBrowser.Model.Dlna.ProfileCondition to apply if this profile is met. | [optional] 
**codec** | **String** | Gets or sets the codec(s) that this profile applies to. | [optional] 
**container** | **String** | Gets or sets the container(s) which this profile will be applied to. | [optional] 
**subContainer** | **String** | Gets or sets the sub-container(s) which this profile will be applied to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


