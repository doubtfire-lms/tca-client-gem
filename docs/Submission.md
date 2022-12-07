# TCAClient::Submission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | the owner of the submission | [optional] |
| **title** | **String** | the title of the submission | [optional] |
| **status** | **String** | the current status of the Submission | [optional] |
| **id** | **String** | the unique ID of the submission | [optional] |
| **content_type** | **String** | the content type of the submission | [optional] |
| **page_count** | **Integer** | the number of pages in the submission | [optional] |
| **word_count** | **Integer** | the number of words in the submission | [optional] |
| **character_count** | **Integer** | the number of characters in the submission | [optional] |
| **error_code** | **String** | an error code representing the type of error encountered (if applicable)  | [optional] |
| **created_time** | **Time** | RFC3339 timestamp of when this submission was initially created. This is the time at which the POST to /submissions was made.  | [optional] |
| **capabilities** | **Array&lt;String&gt;** | Set of capabilities available to the current submission | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::Submission.new(
  owner: null,
  title: null,
  status: null,
  id: null,
  content_type: null,
  page_count: null,
  word_count: null,
  character_count: null,
  error_code: null,
  created_time: null,
  capabilities: null
)
```

