# TCAClient::SubmissionSizeError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | an HTTP Response JobStatus Code | [optional] |
| **message** | **String** | A message explaining what happened | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SubmissionSizeError.new(
  status: null,
  message: null
)
```

