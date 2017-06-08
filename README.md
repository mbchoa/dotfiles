# mbchoa's Dotfiles

This is a collection of dotfiles and scripts I use for customizing OS X to my liking and setting up the software development tools I use on a day-to-day basis. They should be cloned to your home directory so that the path is `~/dotfiles/`.  The included setup script creates symlinks from your home directory to the files which are located in `~/dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a `~/dotfiles_old/` directory if you already have any dotfiles of the same name as the dotfile symlinks being created in your home directory.

So, to recap, the install script will:

- back up any existing dotfiles in your home directory to `~/dotfiles_old/`
- create symlinks to the dotfiles in `~/dotfiles/` in your home directory

## Installation

```sh
$ git clone https://github.com/mbchoa/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ ./setup.sh
```

## Remotely install using curl

Alternatively, you can install this into `~/dotfiles` remotely without Git using curl:

```sh
sh -c "`curl -fsSL https://raw.github.com/mbchoa/dotfiles/master/remote-setup.sh`"
```

Or, using wget:

```sh
sh -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/mbchoa/dotfiles/master/remote-setup.sh`"
```

## Customize

### Local Settings

The dotfiles can be easily extended to suit additional local
requirements by using the following files:

#### `~/.gitconfig.local`

If the `~/.gitconfig.local` file exists, it will be automatically
included after the configurations from [`~/.gitconfig`](git/gitconfig), thus, allowing
its content to overwrite or add to the existing `git` configurations.

**Note:** Use `~/.gitconfig.local` to store sensitive information such
as the `git` user credentials, e.g.:

```sh
[user]
  name = Michael-Bryant Choa
  email = mbc@test.com
```

## OS X Defaults

My favorite part of this repo is the [set-defaults](osx/set-defaults.sh) script for OS X.

## Resources

I actively watch the following repositories and add the best changes to this repository:

- [GitHub ❤ ~/](http://dotfiles.github.com/)
- [Nick's dotfiles](https://github.com/nicksp/dotfiles)
- [Oscar's dotfiles](https://github.com/ooHmartY/dotfiles)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Nicolas Gallagher’s dotfiles](https://github.com/necolas/dotfiles)
- [Cătălin’s dotfiles](https://github.com/alrra/dotfiles)
- [Paul's dotfiles](https://github.com/paulirish/dotfiles)
- [Jacob Gillespie’s dotfiles](https://github.com/jacobwg/dotfiles)

## License

The code is available under the [MIT license](LICENSE).
