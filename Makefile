UNAME_S := $(shell uname -s)

.PHONY: downloadApis
downloadApis:
	@echo "Downloading latest Jellyfin OpenAPI"
	@wget -O jellyfin-openapi-stable.json https://repo.jellyfin.org/releases/openapi/jellyfin-openapi-stable.json --quiet

.phony: updateApis
generateApis:
	@echo "Removing old Jellyfin API"
	@rm -rf jellyfin
	@echo "Generating Jellyfin API"
	@mkdir jellyfin
	@mv jellyfin-openapi-stable.json jellyfin/jellyfin-openapi-stable.json
	@openapi-generator-cli generate \
		-i jellyfin/jellyfin-openapi-stable.json \
		-g dart-dio \
		-o jellyfin \
		--additional-properties=pubName=tentacle,pubAuthor=Kara-Zor-El,pubAuthorEmail="kara.wilson.2005.08@gmail.com",pubLibarary="tentacle.api.jellyfin",pubVersion=$(shell yq eval '.openapi' jellyfin/jellyfin-openapi-stable.json),allowUnicodeIdentifiers=false \
		--enable-post-process-file

.PHONY: changePubspecDartVersion
changePubspecDartVersion:
	@echo "Changing pubspec.yaml version"
	@sed -i 's/sdk: .*/sdk: ">=3.0.0 <4.0.0"/' jellyfin/pubspec.yaml

.PHONY: buildRunner
buildRunner:
	@echo "Building runner for Jellyfin"
	@cd jellyfin && dart pub get
	@cd jellyfin && dart pub run build_runner build --delete-conflicting-outputs

.PHONY: fixErrors
fixErrors:
	sed -i 's/const ._(TranscodeSeekInfo.auto)/TranscodeSeekInfo.auto/' jellyfin/lib/src/model/transcoding_profile.dart
	sed -i 's/const ._(EncodingContext.streaming)/EncodingContext.streaming/' jellyfin/lib/src/model/transcoding_profile.dart
	sed -i 's/const ChannelItemSortField name/const ChannelItemSortField itemName/' jellyfin/lib/src/model/channel_item_sort_field.dart
	sed -i 's/const MetadataField name/const MetadataField metadataName/' jellyfin/lib/src/model/metadata_field.dart
	sed -i 's/= None/ = MetadataRefreshMode.none/' jellyfin/lib/src/api/item_refresh_api.dart
	sed -i "s/static const ItemSortBy name/static const ItemSortBy itemName/g" jellyfin/lib/src/model/item_sort_by.dart
	sed -i "s/MetadataRefreshMode? metadataRefreshMode = 'None',/MetadataRefreshMode? metadataRefreshMode = MetadataRefreshMode.none,/g" jellyfin/lib/src/api/item_refresh_api.dart
	sed -i "s/MetadataRefreshMode? imageRefreshMode = 'None',/MetadataRefreshMode? imageRefreshMode = MetadataRefreshMode.none,/g" jellyfin/lib/src/api/item_refresh_api.dart
	sed -i "s/..audioSpatialFormat = const ('None',);/..audioSpatialFormat = AudioSpatialFormat.none;/g" jellyfin/lib/src/model/media_stream.dart
	sed -i "s/..transcodeSeekInfo = const ('Auto',)/..transcodeSeekInfo = TranscodeSeekInfo.auto/g" jellyfin/lib/src/model/transcoding_profile.dart
	sed -i "s/..context = const ('Streaming',)/..context = EncodingContext.streaming/g" jellyfin/lib/src/model/transcoding_profile.dart
	find ./jellyfin/lib -type f -name '*.dart' -exec perl -pi -e "s/\.\.messageType = const \._\(\'([^'])([^']*)\'\)/\.\.messageType = SessionMessageType.\L\1\E\2/g" {} \;
	find ./jellyfin/lib -type f -name '*.dart' -exec sed -i -E "s/\._\('([^']*)'\)/\('\1',\)/g" {} \;

.PHONY: test
test:
	@echo "Testing Jellyfin"
	@cd jellyfin && dart test

.PHONY: format
format:
	@echo "Formatting Jellyfin"
	@dart format ./jellyfin

.PHONY: moveToPosition
moveToPosition:
	mv -u jellyfin/README.md jellyfin/jellyfin-README.md
	rm -rf {lib,test,doc,build}
	mv jellyfin/** .
	rm -rf jellyfin

.PHONY: all
all: downloadApis generateApis fixErrors changePubspecDartVersion buildRunner format moveToPosition

.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo " - downloadApis: Download the latest Jellyfin and Jellyseerr OpenAPIs"
	@echo " - generateApis: Generate the Jellyfin and Jellyseerr APIs"
	@echo " - changePubspecDartVersion: Change the pubspec.yaml version to >=3.0.0 <4.0.0"
	@echo " - buildRunner: Build the runner for Jellyfin and Jellyseerr"
	@echo " - fixErrors: Fix errors in the Jellyfin and Jellyseerr APIs"
	@echo " - test: Test the Jellyfin and Jellyseerr APIs"
	@echo " - format: Format the Jellyfin and Jellyseerr APIs"
	@echo " - all: Run all the above commands"
	@echo " - help: Show this help message"
