# TCAClient::SimilarityPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **indexing_settings** | [**IndexingSettings**](IndexingSettings.md) |  | [optional] |
| **generation_settings** | [**SimilarityGenerationSettings**](SimilarityGenerationSettings.md) |  |  |
| **view_settings** | [**SimilarityViewSettings**](SimilarityViewSettings.md) |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilarityPutRequest.new(
  indexing_settings: null,
  generation_settings: null,
  view_settings: null
)
```

