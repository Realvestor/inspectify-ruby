# inspectify-ruby

Ruby wrapper for the [getinspectify.com](https://getinspectify.com) API. See the full getinspectify.com [API Documentation](https://getinspectify.com/docs/ruby).  For best results, be sure that you're using [the latest version](https://getinspectify.com/docs/ruby#version) of the GetInspectify API and the latest version of the ruby wrapper. This gem gives you an ActiveRecord-style syntax to use the GetInspectify.com API.

Supports Ruby 2.0.0 and greater.

## Table of Contents

- [Getting Started](#getting-started)
  - [Registration](#registration)
  - [Installation](#installation)
  - [Usage](#usage)
- [Examples](#examples)
- [API Documentation](#api-documentation)
- [Contributing](#contributing)
- [Testing](#testing)

## Getting Started

Here's a general overview of the Lob services available, click through to read more.

- [API Documentation](https://app.swaggerhub.com/apis/beld2107/inspectify-partners/1.0.1)

Please read through the official [API Documentation](#api-documentation) to get a complete sense of what to expect from each endpoint.

### Installation

Add this line to your application's `Gemfile`:

    gem 'inspectify-ruby'

And then execute:

    $ bundle

Or manually install it yourself:

    $ gem install inspectify-ruby

### Usage

The library uses an ActiveRecord-style interface. You'll feel right at home.

For optional parameters and other details, refer to the docs [here](https://app.swaggerhub.com/apis/beld2107/inspectify-partners/1.0.1).

#### Initialization and Configuration

Set the `inspectify_environment` and the `inspectify_auth_token` in the inspectify initializer.

```ruby
Inspectify.inspectify_environment = Rails.application.secrets.inspectify_environment
Inspectify.inspectify_auth_token = Rails.application.secrets.inspectify_auth_token
```

Make the calls to the different inspection services.

```ruby
  ::Inspectify::Inspections::Create.create_order(attrs: attrs)
  ::Inspectify::Inspections::Options.get_order_options(order_id: order_id)
  ::Inspectify::Inspections::Open.get_open_orders
  ::Inspectify::Inspections::Get.get_order(order_id: order_id)
  ::Inspectify::Inspections::Detail.get_order_details(order_id: order_id)
```

## Contributing

To contribute, please see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## Testing

Tests are written using MiniTest, a testing library that comes with Ruby stdlib.

Here's how you can run the tests:

    bundle exec rake test

You can also configure, TravisCI for your fork of the repository and it'll run the tests for you, when you push.

=======================

Copyright &copy; 2020 Realvestor.io

Released under the MIT License, which can be found in the repository in `LICENSE.txt`.
