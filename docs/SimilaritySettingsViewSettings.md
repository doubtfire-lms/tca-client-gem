# TCAClient::SimilaritySettingsViewSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_changes** | **Boolean** | Used to enable save changes in the Viewer and trigger SIMILARITY_UPDATED webhook callback | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilaritySettingsViewSettings.new(
  save_changes: null
)
```

