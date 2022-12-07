# TCAClient::IndexingSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_to_index** | **Boolean** | If set, the submission will be added to all valid node groups for future matching | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::IndexingSettings.new(
  add_to_index: null
)
```

