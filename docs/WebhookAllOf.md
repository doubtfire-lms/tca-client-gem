# TCAClient::WebhookAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | unique id of webhook |  |
| **created_time** | **Time** | RFC3339  timestamp of when this Webhook was initially created. This is the time at which the POST to /webhooks was made.  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::WebhookAllOf.new(
  id: null,
  created_time: null
)
```

