# TCAClient::AuthorMetadataOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **given_name** | **String** | Given or first name of submission author | [optional] |
| **family_name** | **String** | Family or last name of submission author | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::AuthorMetadataOverride.new(
  given_name: null,
  family_name: null
)
```

