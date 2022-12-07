# TCAClient::WebhookWithSecretAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing_secret** | **File** | a sercret used to sign all callbacks for this webhook |  |

## Example

```ruby
require 'tca_client'

instance = TCAClient::WebhookWithSecretAllOf.new(
  signing_secret: null
)
```

