# Single User Auth

Single User Auth is a rails project template with single user authorization.

* Only one user can sign up
* User can log in and log out.
* User can reset password.

## Getting started

To get started with the app, clone the repo:

```
$ git clone git@github.com:leesc22/single-user-auth.git
```

Then, install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Go to `http://localhost:3000` in your browser.

## Deployment

For sending email in production to reset password, single-user-auth is using Action Mailer configuration for Gmail.

### Gmail

To continue using Gmail requires setting up `ENV` variables:

* GMAIL_USERNAME
* GMAIL_PASSWORD

#### Heroku

    $ heroku config:set GMAIL_USERNAME=<username>  
    $ heroku config:set GMAIL_PASSWORD=<password>

#### Other Hosts
Look it up at your favorite search engine.

### Other Email Providers

Look it up at your favorite search engine.
Then, update the Action Mailer configuration at `config/environments/production.rb`
