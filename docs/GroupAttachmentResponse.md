# TCAClient::GroupAttachmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | uuid | [optional] |
| **title** | **String** | title | [optional] |
| **status** | **String** | status | [optional] |
| **template** | **Boolean** | template | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::GroupAttachmentResponse.new(
  id: 768f4633-d4c5-3ba0-8814-caaf421c8985,
  title: History,
  status: null,
  template: null
)
```

