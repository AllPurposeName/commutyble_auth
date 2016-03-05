# CommutybleAuth

Usage
==============

## Add `commutyble_auth` to the `Gemfile`

```ruby
gem 'commutyble_auth'
```

## Generate an initializer

Run this command

```bash
rails generate commutyble_auth:install
```

This will create the following files

```
config/initializers/omniauth.rb
```

## Create a new application on the Commutyble Service Provider

Sign in as an admin on the Commutyble Service Provider.

Go to the `/oauth/applications`.

Create a new application, and set the callback URL to
`http://APP_ROOT_URL/auth/so/callback`.

After creating the app make note of the Application Id and the
Secret.

## Set some environment variables for the new client

In the new client project (where you installed this gem), you should
set some environment variables.

```
AUTH_PROVIDER_URL=http://localhost:3000
AUTH_PROVIDER_APPLICATION_ID=1234
AUTH_PROVIDER_SECRET=5678
AUTH_PROVIDER_ME_URL=/oauth/me.json
```

Be sure to use the Application Id you got in the last step as
`AUTH_APPLICATION_APPLICATION_ID` and the Secret as `AUTH_APPLICATION_SECRET`.

## Update `ApplicationController`

Change your `ApplicationController` to inherit from
`CommutybleAuth::ApplicationController`. The first line should look like this.

```ruby
class ApplicationController < CommutybleAuth::ApplicationController
```

## Protect some stuff in a controller

Use a `before_filter` to protect some controller actions.

```ruby
before_filter :login_required
```
