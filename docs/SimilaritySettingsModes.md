# TCAClient::SimilaritySettingsModes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **match_overview** | **Boolean** | Used to enable use of the match overview mode in the viewer | [optional] |
| **all_sources** | **Boolean** | Used to enable use of the all sources mode in the viewer | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilaritySettingsModes.new(
  match_overview: null,
  all_sources: null
)
```

