# Plurb

Another [Plurk](http://www.plurk.com) API wrapper for Ruby.

## Features

Plurb allows us to use the following Plurk API endpoints:

- Get Plurks
- Add Plurk
- Edit Plurk
- Delete Plurk

There are still [a lot of other features of Plurk accessible through their endpoints](http://www.plurk.com/API). Will add more of them to Plurb.

## Installation

```
gem install plurb
```

## Usage

```rb
require 'plurb'

client = Plurb::Client.new('your_app_key', 'your_app_secret')
client.authorize('your_user_token', 'your_user_token_secret')

client.get_plurks # retrieving plurks from your timeline
client.plurk('you a Merry Christmas', 'wishes') # plurks: `wishes` you a Merry Christmas
client.edit_plurk(543623, 'you a happy new year') # edits previous plurk to: `wishes` you a happy new year
client.delete_plurk(543623)
```

## Contributing

- Fork this repository
- Create a new branch, implement your awesome feature
- Create a pull request

## License

MIT License