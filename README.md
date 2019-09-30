# Redcarpet::Render::HTMLLazyImg

Specify "loading" attribute value to converted HTML from markdown.
You can choose "lazy", "auto", and "eager" to loading attribite by the custom renderer class in `Redcarpet::Markdown.new`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'redcarpet-render-html_lazy_img'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install redcarpet-render-html_lazy_img
```

## Usage

### loding="lazy"
```ruby
markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTMLLazyImg::Lazy)
markdown.render('![example image](https://example.com/img.png)')
# => '<p><img loading="lazy" src="https://example.com/img.png" alt="example image" /></p>'
```

### loding="auto"
```ruby
markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTMLLazyImg::Auto)
markdown.render('![example image](https://example.com/img.png)')
# => '<p><img loading="auto" src="https://example.com/img.png" alt="example image" /></p>'
```

### loding="eager"
```ruby
markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTMLLazyImg::Eager)
markdown.render('![example image](https://example.com/img.png)')
# => '<p><img loading="eager" src="https://example.com/img.png" alt="example image" /></p>'
```

See also [original document of the vmg/redcarpet](https://github.com/vmg/redcarpet#and-you-can-even-cook-your-own).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/unasuke/redcarpet-render-html_lazy_img. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Redcarpet::Render::HTMLLazyImg project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/unasuke/redcarpet-render-html_lazy_img/blob/master/CODE_OF_CONDUCT.md).
