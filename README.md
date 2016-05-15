# Open Folder in iTerm LaunchBar Actions

These actions shouldn't be needed. After all, LaunchBar lets you choose iTerm as your preferred terminal application. But the built-in actions to open a selected folder in a new terminal window or tab fail silently if you've made that choice. At least if you are running the betas. This is due to some changes in [iTerm's AppleScript definitions](http://iterm2.com/applescript.html).

## Installation

Download these these `.lbactions` and drop them in your LaunchBar actions folder: `~/Library/Application Support/LaunchBar/Actions/`.

Alternatively, you could clone this Git repo into the actions folder:

```bash
cd ~/Library/Application\ Support/LaunchBar/Actions
git clone git@github.com:eirkeirkeirk/iterm-launchbar-actions.git
```

## Usage

Once you install these actions, you can use the actions a few different ways. These are really just some general LaunchBar tips that aren't unique to these actions:

- Select a folder in LaunchBar, hit `tab`, then type the action name that you'd like
- Or, after you select a folder, hit `tab`, type `iterm`, and tap the right arrow key to see these two actions (and any other additional actions that are associated with iTerm)
- You could also have a folder selected in the Finder and use Instant Send to pass that folder to LaunchBar. Just in case you find that faster and easier than using LaunchBar to navigate to the folder that you want to open in iTerm.
- You could use the Enter Text command to type (or paste) the folder path you want to open in iTerm.
- Finally, you could do things in the opposite order. That is, select the iTerm action first and have LaunchBar prompt you for the folder you want to open. You could also choose the iTerm action, hit `space`, and type the name of the folder.

Personally, I find it easiest to use LaunchBar to navigate to the folder I want and then send it to one of these iTerm actions.

Thanks for checking this out. And here's to LaunchBar's built-in support for iTerm (beta versions) getting caught up with the times so that my custom actions aren't needed anymore! 🍺