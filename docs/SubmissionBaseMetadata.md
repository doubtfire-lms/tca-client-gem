# TCAClient::SubmissionBaseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submitter** | [**Users**](Users.md) |  | [optional] |
| **owners** | [**Array&lt;Users&gt;**](Users.md) |  | [optional] |
| **group** | [**Group**](Group.md) |  | [optional] |
| **group_context** | [**GroupContext**](GroupContext.md) |  | [optional] |
| **original_submitted_time** | **Time** | Optional original submision date | [optional] |
| **custom** | **String** | custom metadata | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SubmissionBaseMetadata.new(
  submitter: null,
  owners: null,
  group: null,
  group_context: null,
  original_submitted_time: null,
  custom: {&quot;Hello&quot;: &quot;data&quot;}
)
```

