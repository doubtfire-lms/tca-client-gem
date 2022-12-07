# TCAClient::EulaAcceptRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique id of the user in the external system  | [optional] |
| **accepted_timestamp** | **Time** | The timestamp marking when the EULA was accepted  | [optional] |
| **language** | **String** | The language code for which language instance of the EULA version was accepted  | [optional] |
| **version** | **String** | The unique name of the EULA Version  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::EulaAcceptRequest.new(
  user_id: null,
  accepted_timestamp: null,
  language: null,
  version: null
)
```

