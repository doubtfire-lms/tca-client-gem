# TCAClient::SimilaritySettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_mode** | **String** | default similarity mode when viewing a report; set to either match_overview or all_sources | [optional] |
| **modes** | [**SimilaritySettingsModes**](SimilaritySettingsModes.md) |  | [optional] |
| **view_settings** | [**SimilaritySettingsViewSettings**](SimilaritySettingsViewSettings.md) |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilaritySettings.new(
  default_mode: null,
  modes: null,
  view_settings: null
)
```

