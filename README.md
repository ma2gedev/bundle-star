[![Stories in Ready](https://badge.waffle.io/ma2gedev/bundle-star.png?label=ready)](https://waffle.io/ma2gedev/bundle-star)  
# Bundle-star

Bundle-star starred gem's github repository when bundle installing by `bundle-star` command.

![Demo](https://github.com/ma2gedev/bundle-star/raw/master/try-bundle-star.gif)

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
  password <your 40 char github token, you can get a token from https://github.com/settings/tokens>
```

### Use `bundle-star` instead of `bundle`:

    $ bundle-star install
    $ bundle-star update

### Pro tip:

    alias bsi="bundle-star install"

### See Also

- About GitHub token
  - Creating a personal access token for the command line - User Documentation
    - https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/
- `.netrc` file
  - GNU Inetutils: The .netrc file
    - https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Development

### DEBUG environment variable

It is useful for develop with DEBUG environment variable like the following:

```
DEBUG=true bin/bundle-star
```

