# Kato::Cli

Post to a [kato.im](https://kato.im) room from the command line.

## Installation

Add this line to your application's Gemfile:

    gem 'kato-cli'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kato-cli

## Configuration

At minimum, `kato` needs to be given a list of available rooms. This is
specified in `~/.kato.yml`. Provide nicknames for rooms to access them more
easily when posting. For example,

	room-list:
	  dev: de8cba109388dee98498
	  meetings: 3d809831aa8481177dcce

defines a room called `dev` with the room id `de8cba109388dee98498` and another
room called `meetings` with room id `3d809831aa8481177dcce`.

This allows you to specify the room by its nickname when invoking the `kato`
command:

	kato --room dev

You can also configure a default room to send messages to as well as a default
display name.

	room: dev
	user: tommcdo

## Usage

    kato [-u|--user USERNAME] [-f|--renderer text|markdown|code] [-r|--room ROOM]

* `-u` or `--user` specifies the display name to send the message from
* `-f` or `--renderer` specifies how the message will be rendered (`text`, `markdown`
   or `code`)
* `-r` or `--room` specifies the room (by its nickname as set in `~/.kato.yml`) to
   send the message to

The message will be read from standard input. You can either pipe another program's
output into `kato` or type it into the command line, followed by the end-of-file
signal (usually `Ctrl-D`).

## Vim integration

Check out [kato.vim](https://github.com/tommcdo/vim-kato) if you'd like to send
code snippets directly from inside Vim.

## Contributing

1. Fork it ( http://github.com/tommcdo/kato-cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
