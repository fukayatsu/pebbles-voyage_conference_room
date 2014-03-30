# Pebbles::VoyageConferenceRoom

Floor map of VoyageGroup 8F

Ruby port of [Acme::VOYAGEGROUP::ConferenceRoom - search.cpan.org](http://search.cpan.org/~monmon/Acme-VOYAGEGROUP-ConferenceRoom-0.01/lib/Acme/VOYAGEGROUP/ConferenceRoom.pm)

## Installation

Add this line to your application's Gemfile:

    gem 'pebbles-voyage_conference_room'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pebbles-voyage_conference_room

## Usage

```
$ voyage_conference_room list
pangea
ultima
...

$ voyage_conference_room map
$ voyage_conference_room map --with-code
$ voyage_conference_room map --name=pangea
$ voyage_conference_room map --name=パンゲア
$ voyage_conference_room map --name=AJITO
$ voyage_conference_room map --code=a

```


## Contributing

1. Fork it ( http://github.com/fukayatsu/pebbles-voyage_conference_room/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
