JELLYFIN_API_VERSION := ""
JELLSEERR_API_VERSION := ""

.PHONY: downloadApis
downloadApis:
	@echo "Downloading latest Jellyfin OpenAPI"
	@wget -O jellyfin-openapi-stable.json https://repo.jellyfin.org/releases/openapi/jellyfin-openapi-stable.json --quiet
	$(eval JELLYFIN_API_VERSION := $(shell cat jellyfin-openapi-stable.json | jq -r .openapi))
	@echo "Current Jellyfin OpenAPI version: $(JELLYFIN_API_VERSION)"
	@echo "Download latest Jellyseerr OpenAPI"
	@wget -O jellyseerr-openapi-stable.yml https://raw.githubusercontent.com/Kara-Zor-El/jellyseerr/develop/overseerr-api.yml --quiet
	# @wget -O jellyseerr-openapi-stable.yml https://raw.githubusercontent.com/Fallenbagel/jellyseerr/main/overseerr-api.yml --quiet
	$(eval JELLSEER_API_VERSION := $(shell yq eval '.openapi' jellyseerr-openapi-stable.yml))
	@echo "Current Jellyseerr API version: $(JELLSEER_API_VERSION)"

.phony: updateApis
generateApis:
	@echo "Removing old Jellyfin API"
	@rm -rf jellyfin
	@echo "Generating Jellyfin API"
	@mkdir jellyfin
	@mv jellyfin-openapi-stable.json jellyfin/jellyfin-openapi-${JELLYFIN_API_VERSION}.json
	@openapi-generator generate \
		-i jellyfin/jellyfin-openapi-${JELLYFIN_API_VERSION}.json \
		--additional-properties=pubName=tentacle,pubAuthor=Kara-Zor-El,pubAuthorEmail="kara.wilson.2005.08@gmail.com",pubDescription="A Jellyfin api for dart via dio",pubLibarary="tentacle.api.jellyfin",pubVersion=${JELLYFIN_API_VERSION},allowUnicodeIdentifiers=false \
		-g dart-dio \
		--enable-post-process-file \
		-o jellyfin
		@echo "Removing old Jellyseerr API"
		@rm -rf jellyseerr
		@echo "Generating Jellyseerr API"
		@mkdir jellyseerr
		@mv jellyseerr-openapi-stable.yml jellyseerr/jellyseerr-openapi-$(JELLSEERR_API_VERSION).yml
		@openapi-generator generate \
			-i jellyseerr/jellyseerr-openapi-${JELLSEERR_API_VERSION}.yml \
			--additional-properties=pubName=tentacle,pubAuthor=Kara-Zor-El,pubAuthorEmail="kara.wilson.2005.08@gmail.com",pubDescription="A Jellyseerr api for dart via dio",pubLibarary="tentacle.api.jellyseerr",pubVersion=${JELLSEERR_API_VERSION},allowUnicodeIdentifiers=false \
			-g dart-dio \
			--enable-post-process-file \
			-o jellyseerr

.PHONY: changePubspecDartVersion
changePubspecDartVersion:
	@echo "Changing pubspec.yaml version"
	@sed -i '' 's/sdk: .*/sdk: ">=3.0.0 <4.0.0"/' jellyfin/pubspec.yaml
	@sed -i '' 's/sdk: .*/sdk: ">=3.0.0 <4.0.0"/' jellyseerr/pubspec.yaml

.PHONY: buildRunner
buildRunner:
	@echo "Building runner for Jellyfin"
	@cd jellyfin && flutter pub get
	@cd jellyfin && flutter pub run build_runner build --delete-conflicting-outputs
	@cd jellyseerr && flutter pub get
	@cd jellyseerr && flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: fixErrors
fixErrors:
	@echo "Fixing Jellyfin errors in lib/src/model/transcoding_profile.dart"
	@sed -i '' 's/const ._(TranscodeSeekInfo.auto)/TranscodeSeekInfo.auto/' jellyfin/lib/src/model/transcoding_profile.dart
	@sed -i '' 's/const ._(EncodingContext.streaming)/EncodingContext.streaming/' jellyfin/lib/src/model/transcoding_profile.dart
	@echo "Fixing Jellyfin errors in lib/src/model/channel_item_sort_field.dart"
	@sed -i '' 's/const ChannelItemSortField name/const ChannelItemSortField itemName/' jellyfin/lib/src/model/channel_item_sort_field.dart
	@echo "Fixing Jellyfin errors in lib/src/model/metadata_field.dart"
	@sed -i '' 's/const MetadataField name/const MetadataField metadataName/' jellyfin/lib/src/model/metadata_field.dart
	@echo "Fixing jellyfin errors in lib/src/api/item_refresh_api.dart"
	@sed -i '' 's/= None/ = MetadataRefreshMode.none/' jellyfin/lib/src/api/item_refresh_api.dart
	@echo "Fixing jellyseerr error in lib/src/model/request_post_request_seasons.dart"
	@sed -i '' 's/OneOf1Enum/OneOf1/' jellyseerr/lib/src/model/request_post_request_seasons.dart

.PHONY: test
test:
	@echo "Testing Jellyfin"
	@cd jellyfin && flutter test
	@echo "Testing Jellyseerr"
	@cd jellyseerr && flutter test

.PHONY: format
format:
	@echo "Formatting Jellyfin"
	@dart format ./jellyfin
	@echo "Formatting Jellyseerr"
	@dart format ./jellyseerr

.PHONY: all
all: downloadApis generateApis changePubspecDartVersion buildRunner test

.PHONY: stage1
stage1: downloadApis generateApis changePubspecDartVersion

.PHONY: stage2
stage2: fixErrors buildRunner

.PHONY: stage3
stage3: test format
