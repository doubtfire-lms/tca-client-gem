# TCAClient::FeaturesEnabled

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **similarity** | [**FeaturesSimilarity**](FeaturesSimilarity.md) |  | [optional] |
| **tenant** | [**FeaturesTenant**](FeaturesTenant.md) |  | [optional] |
| **product_name** | **String** |  | [optional] |
| **access_options** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::FeaturesEnabled.new(
  similarity: null,
  tenant: null,
  product_name: null,
  access_options: null
)
```

