# TCAClient::Eula

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accepted_timestamp** | **Time** | The timestamp marking when the EULA was accepted  | [optional] |
| **language** | **String** | The language code for which language instance of the EULA version was accepted  | [optional] |
| **version** | **String** | The unique name of the EULA Version  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::Eula.new(
  accepted_timestamp: null,
  language: en-US,
  version: latest
)
```

