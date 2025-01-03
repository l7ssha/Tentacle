//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:tentacle/src/api_util.dart';
import 'package:tentacle/src/model/image_format.dart';
import 'package:tentacle/src/model/image_info.dart';
import 'package:tentacle/src/model/image_type.dart';
import 'package:tentacle/src/model/problem_details.dart';

class ImageApi {
  final Dio _dio;

  final Serializers _serializers;

  const ImageApi(this._dio, this._serializers);

  /// Delete a custom splashscreen.
  ///
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteCustomSplashscreen({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Branding/Splashscreen';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Delete an item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [imageIndex] - The image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteItemImage({
    required String itemId,
    required ImageType imageType,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Delete an item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [imageIndex] - The image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteItemImageByIndex({
    required String itemId,
    required ImageType imageType,
    required int imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Delete the user&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [userId] - User Id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteUserImage({
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserImage';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null)
        r'userId':
            encodeQueryParameter(_serializers, userId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Get artist image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Artist name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getArtistImage({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Genre name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getGenreImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Genres/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Genre name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getGenreImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Genres/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets the item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Optional. The MediaBrowser.Model.Drawing.ImageFormat of the returned image.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getItemImage({
    required String itemId,
    required ImageType imageType,
    int? maxWidth,
    int? maxHeight,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    String? tag,
    ImageFormat? format,
    double? percentPlayed,
    int? unplayedCount,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets the item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [imageIndex] - Image index.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getItemImage2({
    required String itemId,
    required ImageType imageType,
    required int maxWidth,
    required int maxHeight,
    required String tag,
    required ImageFormat format,
    required double percentPlayed,
    required int unplayedCount,
    required int imageIndex,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}/{tag}/{format}/{maxWidth}/{maxHeight}/{percentPlayed}/{unplayedCount}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'maxWidth' '}',
            encodeQueryParameter(_serializers, maxWidth, const FullType(int))
                .toString())
        .replaceAll(
            '{' r'maxHeight' '}',
            encodeQueryParameter(_serializers, maxHeight, const FullType(int))
                .toString())
        .replaceAll(
            '{' r'tag' '}',
            encodeQueryParameter(_serializers, tag, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'format' '}',
            encodeQueryParameter(
                    _serializers, format, const FullType(ImageFormat))
                .toString())
        .replaceAll(
            '{' r'percentPlayed' '}',
            encodeQueryParameter(
                    _serializers, percentPlayed, const FullType(double))
                .toString())
        .replaceAll(
            '{' r'unplayedCount' '}',
            encodeQueryParameter(_serializers, unplayedCount, const FullType(int))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets the item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Optional. The MediaBrowser.Model.Drawing.ImageFormat of the returned image.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getItemImageByIndex({
    required String itemId,
    required ImageType imageType,
    required int imageIndex,
    int? maxWidth,
    int? maxHeight,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    String? tag,
    ImageFormat? format,
    double? percentPlayed,
    int? unplayedCount,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get item image infos.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ImageInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ImageInfo>>> getItemImageInfos({
    required String itemId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images'.replaceAll(
        '{' r'itemId' '}',
        encodeQueryParameter(_serializers, itemId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<ImageInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(ImageInfo)]),
            ) as BuiltList<ImageInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ImageInfo>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get music genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Music genre name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getMusicGenreImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/MusicGenres/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get music genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Music genre name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getMusicGenreImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/MusicGenres/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get person image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Person name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getPersonImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Persons/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get person image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Person name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getPersonImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Persons/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Generates or gets the splashscreen.
  ///
  ///
  /// Parameters:
  /// * [tag] - Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Blur image.
  /// * [backgroundColor] - Apply a background color for transparent images.
  /// * [foregroundLayer] - Apply a foreground layer on top of the image.
  /// * [quality] - Quality setting, from 0-100.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getSplashscreen({
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    int? width,
    int? height,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? quality = 90,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Branding/Splashscreen';
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get studio image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Studio name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getStudioImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Studios/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get studio image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Studio name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getStudioImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Studios/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get user profile image.
  ///
  ///
  /// Parameters:
  /// * [userId] - User id.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getUserImage({
    String? userId,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserImage';
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null)
        r'userId':
            encodeQueryParameter(_serializers, userId, const FullType(String)),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get artist image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Artist name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headArtistImage({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Genre name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headGenreImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Genres/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Genre name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headGenreImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Genres/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets the item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Optional. The MediaBrowser.Model.Drawing.ImageFormat of the returned image.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headItemImage({
    required String itemId,
    required ImageType imageType,
    int? maxWidth,
    int? maxHeight,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    String? tag,
    ImageFormat? format,
    double? percentPlayed,
    int? unplayedCount,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets the item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [imageIndex] - Image index.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headItemImage2({
    required String itemId,
    required ImageType imageType,
    required int maxWidth,
    required int maxHeight,
    required String tag,
    required ImageFormat format,
    required double percentPlayed,
    required int unplayedCount,
    required int imageIndex,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}/{tag}/{format}/{maxWidth}/{maxHeight}/{percentPlayed}/{unplayedCount}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'maxWidth' '}',
            encodeQueryParameter(_serializers, maxWidth, const FullType(int))
                .toString())
        .replaceAll(
            '{' r'maxHeight' '}',
            encodeQueryParameter(_serializers, maxHeight, const FullType(int))
                .toString())
        .replaceAll(
            '{' r'tag' '}',
            encodeQueryParameter(_serializers, tag, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'format' '}',
            encodeQueryParameter(
                    _serializers, format, const FullType(ImageFormat))
                .toString())
        .replaceAll(
            '{' r'percentPlayed' '}',
            encodeQueryParameter(
                    _serializers, percentPlayed, const FullType(double))
                .toString())
        .replaceAll(
            '{' r'unplayedCount' '}',
            encodeQueryParameter(_serializers, unplayedCount, const FullType(int))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets the item&#39;s image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Optional. The MediaBrowser.Model.Drawing.ImageFormat of the returned image.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headItemImageByIndex({
    required String itemId,
    required ImageType imageType,
    required int imageIndex,
    int? maxWidth,
    int? maxHeight,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    String? tag,
    ImageFormat? format,
    double? percentPlayed,
    int? unplayedCount,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get music genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Music genre name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headMusicGenreImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/MusicGenres/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get music genre image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Music genre name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headMusicGenreImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/MusicGenres/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get person image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Person name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headPersonImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Persons/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get person image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Person name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headPersonImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Persons/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get studio image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Studio name.
  /// * [imageType] - Image type.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headStudioImage({
    required String name,
    required ImageType imageType,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Studios/{name}/Images/{imageType}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get studio image by name.
  ///
  ///
  /// Parameters:
  /// * [name] - Studio name.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Image index.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headStudioImageByIndex({
    required String name,
    required ImageType imageType,
    required int imageIndex,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Studios/{name}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'name' '}',
            encodeQueryParameter(_serializers, name, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get user profile image.
  ///
  ///
  /// Parameters:
  /// * [userId] - User id.
  /// * [tag] - Optional. Supply the cache tag from the item object to receive strong caching headers.
  /// * [format] - Determines the output format of the image - original,gif,jpg,png.
  /// * [maxWidth] - The maximum image width to return.
  /// * [maxHeight] - The maximum image height to return.
  /// * [percentPlayed] - Optional. Percent to render for the percent played overlay.
  /// * [unplayedCount] - Optional. Unplayed count overlay to render.
  /// * [width] - The fixed image width to return.
  /// * [height] - The fixed image height to return.
  /// * [quality] - Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  /// * [fillWidth] - Width of box to fill.
  /// * [fillHeight] - Height of box to fill.
  /// * [blur] - Optional. Blur image.
  /// * [backgroundColor] - Optional. Apply a background color for transparent images.
  /// * [foregroundLayer] - Optional. Apply a foreground layer on top of the image.
  /// * [imageIndex] - Image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headUserImage({
    String? userId,
    String? tag,
    ImageFormat? format,
    int? maxWidth,
    int? maxHeight,
    double? percentPlayed,
    int? unplayedCount,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserImage';
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null)
        r'userId':
            encodeQueryParameter(_serializers, userId, const FullType(String)),
      if (tag != null)
        r'tag': encodeQueryParameter(_serializers, tag, const FullType(String)),
      if (format != null)
        r'format': encodeQueryParameter(
            _serializers, format, const FullType(ImageFormat)),
      if (maxWidth != null)
        r'maxWidth':
            encodeQueryParameter(_serializers, maxWidth, const FullType(int)),
      if (maxHeight != null)
        r'maxHeight':
            encodeQueryParameter(_serializers, maxHeight, const FullType(int)),
      if (percentPlayed != null)
        r'percentPlayed': encodeQueryParameter(
            _serializers, percentPlayed, const FullType(double)),
      if (unplayedCount != null)
        r'unplayedCount': encodeQueryParameter(
            _serializers, unplayedCount, const FullType(int)),
      if (width != null)
        r'width':
            encodeQueryParameter(_serializers, width, const FullType(int)),
      if (height != null)
        r'height':
            encodeQueryParameter(_serializers, height, const FullType(int)),
      if (quality != null)
        r'quality':
            encodeQueryParameter(_serializers, quality, const FullType(int)),
      if (fillWidth != null)
        r'fillWidth':
            encodeQueryParameter(_serializers, fillWidth, const FullType(int)),
      if (fillHeight != null)
        r'fillHeight':
            encodeQueryParameter(_serializers, fillHeight, const FullType(int)),
      if (blur != null)
        r'blur': encodeQueryParameter(_serializers, blur, const FullType(int)),
      if (backgroundColor != null)
        r'backgroundColor': encodeQueryParameter(
            _serializers, backgroundColor, const FullType(String)),
      if (foregroundLayer != null)
        r'foregroundLayer': encodeQueryParameter(
            _serializers, foregroundLayer, const FullType(String)),
      if (imageIndex != null)
        r'imageIndex':
            encodeQueryParameter(_serializers, imageIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Sets the user image.
  ///
  ///
  /// Parameters:
  /// * [userId] - User Id.
  /// * [body]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> postUserImage({
    String? userId,
    MultipartFile? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserImage';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'image/*',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null)
        r'userId':
            encodeQueryParameter(_serializers, userId, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      _bodyData = body?.finalize();
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Set item image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [body]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> setItemImage({
    required String itemId,
    required ImageType imageType,
    MultipartFile? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'image/*',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body?.finalize();
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Set item image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [imageIndex] - (Unused) Image index.
  /// * [body]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> setItemImageByIndex({
    required String itemId,
    required ImageType imageType,
    required int imageIndex,
    MultipartFile? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'image/*',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body?.finalize();
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Updates the index for an item image.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [imageType] - Image type.
  /// * [imageIndex] - Old image index.
  /// * [newIndex] - New image index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> updateItemImageIndex({
    required String itemId,
    required ImageType imageType,
    required int imageIndex,
    required int newIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/Images/{imageType}/{imageIndex}/Index'
        .replaceAll(
            '{' r'itemId' '}',
            encodeQueryParameter(_serializers, itemId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'imageType' '}',
            encodeQueryParameter(
                    _serializers, imageType, const FullType(ImageType))
                .toString())
        .replaceAll(
            '{' r'imageIndex' '}',
            encodeQueryParameter(_serializers, imageIndex, const FullType(int))
                .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'newIndex':
          encodeQueryParameter(_serializers, newIndex, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Uploads a custom splashscreen.  The body is expected to the image contents base64 encoded.
  ///
  ///
  /// Parameters:
  /// * [body]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> uploadCustomSplashscreen({
    MultipartFile? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Branding/Splashscreen';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'image/*',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body?.finalize();
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
