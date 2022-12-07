# TCAClient::WebhookPathRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | a human readable description of the webhook | [optional] |
| **event_types** | **Array&lt;String&gt;** | an array of the types of callbacks that will be sent to this webhook |  |

## Example

```ruby
require 'tca_client'

instance = TCAClient::WebhookPathRequest.new(
  description: null,
  event_types: null
)
```

