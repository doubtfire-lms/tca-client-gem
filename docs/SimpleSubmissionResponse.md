# TCAClient::SimpleSubmissionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the unique ID of the submission | [optional] |
| **owner** | **String** | the owner of the submission | [optional] |
| **title** | **String** | the title of the submission | [optional] |
| **status** | **String** | the current status of the Submission | [optional] |
| **created_time** | **Time** | RFC3339 timestamp of when this submission was initially created. This is the time at which the POST to /submissions was made.  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimpleSubmissionResponse.new(
  id: null,
  owner: null,
  title: null,
  status: null,
  created_time: null
)
```

