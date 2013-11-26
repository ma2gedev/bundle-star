[![Stories in Ready](https://badge.waffle.io/ma2gedev/bundle-star.png?label=ready)](https://waffle.io/ma2gedev/bundle-star)  
# Bundle-star

Bundle-star starred gem's github repository when `bundle-star install`ed

See Also my slide for M3 TechTalk https://speakerdeck.com/ma2gedev/bundle-star-how-to-appreciate-oss-projects

## Installation

Install it yourself as:

    $ gem install bundle-star

## Usage

### Setup a .netrc file

Bundle-star depends on Netrc gem and Octokit gem to access GitHub API. 
Write your GitHub credentials into `.netrc` file(locating to `~/.netrc`), you can now access to GitHub API by bundle-star command.

The following is a sample `.netrc` file. And execute `chmod 600 ~/.netrc` to avoid permission error.

```
machine api.github.com
  login <your github account>
  password <your 40 char github token>
```

### Use `bundle-star` instead of `bundle`:

    $ bundle-star install
    $ bundle-star update

### Example

    $ echo "source 'https://rubygems.org'" >> Gemfile
    $ echo "gem 'bundle-star'" >> Gemfile
    $ bundle-star install --path vendor/bundle
    Fetching gem metadata from https://rubygems.org/............
    Fetching gem metadata from https://rubygems.org/..
    Resolving dependencies...
    Installing addressable (2.3.5)
    Using bundler (1.4.0.pre.2)
    starred geemus/netrc                <------ starred
    Installing netrc (0.7.7)
    starred nicksieger/multipart-post   <------ starred
    Installing multipart-post (1.2.0)
    starred lostisland/faraday          <------ starred
    Installing faraday (0.8.8)
    starred lostisland/sawyer           <------ starred
    Installing sawyer (0.5.1)
    starred octokit/octokit.rb          <------ starred
    Installing octokit (2.6.0)
    starred ma2gedev/bundle-star        <------ starred
    Installing bundle-star (1.0.0)
    Your bundle is complete!
    It was installed into ./vendor/bundle

### Pro tip:

    alias bsi="bundle-star install"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
