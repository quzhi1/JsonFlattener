# JsonFlattener

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/JsonFlattener`. To experiment with that code, run `bin/json_flattener` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'JsonFlattener'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install JsonFlattener

## Usage

You can run below interactively:
```bash
./bin/json_flattener
```

You can also pipe input and output:
```bash
cat test/test_files/test.json | ./bin/json_flattener > temp.json
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/json_flattener` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing
In the repository root, run
```bash
ruby -Ilib:test test/json_flattener_test.rb
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/JsonFlattener. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/JsonFlattener/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the JsonFlattener project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/JsonFlattener/blob/master/CODE_OF_CONDUCT.md).
