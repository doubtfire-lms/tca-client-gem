# TCAClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | unique id of webhook |  |
| **created_time** | **Time** | RFC3339  timestamp of when this Webhook was initially created. This is the time at which the POST to /webhooks was made.  | [optional] |
| **description** | **String** | a human readable description of the webhook | [optional] |
| **url** | **String** | the URL to callback with events, this must be https unless (allow_insecure is true) |  |
| **allow_insecure** | **Boolean** | if using an non https url, this must be set to true | [optional] |
| **event_types** | **Array&lt;String&gt;** | an array of the types of callbacks that will be sent to this webhook |  |

## Example

```ruby
require 'tca_client'

instance = TCAClient::Webhook.new(
  id: null,
  created_time: null,
  description: null,
  url: null,
  allow_insecure: null,
  event_types: null
)
```

