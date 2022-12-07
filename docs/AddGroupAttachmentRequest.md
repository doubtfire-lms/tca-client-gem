# TCAClient::AddGroupAttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Attachment title | [optional] |
| **template** | **Boolean** | template | [optional][default to false] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::AddGroupAttachmentRequest.new(
  title: My Template Attachment,
  template: null
)
```

