# TCAClient::EulaVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The unique name of the EULA Version  | [optional] |
| **valid_from** | **Time** | The starting date indicating when acceptence of this EULA is considered valid  | [optional] |
| **valid_until** | **Time** | The ending date indicating when acceptence of this EULA is no longer valid  | [optional] |
| **url** | **String** | The url where the corresponding EULA page can be found  | [optional] |
| **available_languages** | **Array&lt;String&gt;** | The languages (instances) of this version. 21 language locales are currently supported.  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::EulaVersion.new(
  version: null,
  valid_from: null,
  valid_until: null,
  url: null,
  available_languages: null
)
```

