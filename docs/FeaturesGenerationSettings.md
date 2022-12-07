# TCAClient::FeaturesGenerationSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_repositories** | **Array&lt;String&gt;** | List of repositories to search | [optional] |
| **submission_auto_excludes** | **Boolean** |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::FeaturesGenerationSettings.new(
  search_repositories: null,
  submission_auto_excludes: null
)
```

