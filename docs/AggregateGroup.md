# TCAClient::AggregateGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | (required)  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **group_context** | [**GroupContext**](GroupContext.md) |  | [optional] |
| **due_date** | **Date** | due date for the group | [optional] |
| **report_generation** | **String** |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::AggregateGroup.new(
  id: null,
  name: null,
  type: null,
  group_context: null,
  due_date: null,
  report_generation: null
)
```

