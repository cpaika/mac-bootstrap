## Mac-Bootstrap
A utility to create a Mac developer laptop, from scratch, using Homebrew.  This is specifically intended for me, and is opinionated, but has a lot of hard learned lessons baked in.

Useful for anyone who needs to quickly boot up on a new Mac, or needs to keep the dev environment between two Mac's in sync.

Note: The script is idempotent, you can run it multiple times and it will not harm your system.


# Setting up a new Mac
1. Log on to the wifi
1. Log in to iCloud in System Preferences
1. Airdrop this repo from another Mac, clone it, whatever
1. Give this mac a good name in System Preferences (Sharing, Computer Name)
1. Assign it to an eero profile

### Run mac-bootstrap
1. Open the terminal and cd to this repo
1. Run `./mac-bootstrap.sh`

### While that's running...
1. Customize your dock icons (aka remove all of them)
1. In System Preferences -> Dock & Menu Bar select "Automatically hide and show the dock"
1. Disable the ding sound: System Preferences -> Sound -> Sound Effects.  Uncheck Play User Interface Sound Effects
1. Disable Caps Lock: System Preferences -> Keyboard -> Modifier Keys.  Change Caps Lock to Option
1. Under users, add an account for Kristen
1. Increase the scroll speed: Keyboard -> Adjust Key Repeat and Delay Until Repeat to all the way Fast and Short
1. Update Security: Under System Preferences -> "Security and Privacy":
  - Disable "Require a password 5 minutes after sleep"
  - Enable Use your apple watch to unlock apps and your mac
  -

### Once mac-bootstrap is finished
1. Log in and allow notifications for everything
1. Log in to Spotify
1. Do everything in TODO.md
1. Disable iTerm2 Bell and unlimited scrollback: iTerm2 -> Preferences -> Profiles -> Terminal:
  - Check "Unlimited Scrollback"
  - Check "Silence Bell" under notifications
1. Do anything customized to you in `personal-todo.md`

### Brave:
1. Make a Chris Profile
1. Add Lastpass to Brave: https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd
1. Pin the Lastpass extension to Brave
1. Disable "Offer to Save Passwords"

### Customize Finder
- In Finder -> Preferences Check "cpaika" in favorites
- Add the Projects folder to the left sidebar favorites
- Under view-> enable show tab bar and show path bar

### Enable Text Message Forwarding
- On iOS Settings -> Messages -> Enable Text Message Forwarding to the new mac
