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

![example](https://github.com/ma2gedev/bundle-star/raw/master/exec_bundle-star.png)

### Pro tip:

    alias bsi="bundle-star install"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
