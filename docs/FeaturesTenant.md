# TCAClient::FeaturesTenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **require_eula** | **Boolean** | a flag indicating whether this tenant requires EULA checks to use this API | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::FeaturesTenant.new(
  require_eula: null
)
```

