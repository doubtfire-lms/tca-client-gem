# TCAClient::WebhookBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | a human readable description of the webhook | [optional] |
| **url** | **String** | the URL to callback with events, this must be https unless (allow_insecure is true) |  |
| **allow_insecure** | **Boolean** | if using an non https url, this must be set to true | [optional] |
| **event_types** | **Array&lt;String&gt;** | an array of the types of callbacks that will be sent to this webhook |  |

## Example

```ruby
require 'tca_client'

instance = TCAClient::WebhookBase.new(
  description: null,
  url: null,
  allow_insecure: null,
  event_types: null
)
```

