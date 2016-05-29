-- LaunchBar Action Script
-- Opens a folder/directory/path in a new tab in iTerm

-- when you pass in an arbitrary string from LaunchBar
on handle_string(_string)
	makeTabAtPath(_string)
end handle_string

-- when you pass in a folder reference from LaunchBar
on open(_path)
	set _path to POSIX path of _path
	makeTabAtPath(_path)
end open

on escapeSpaces(_string)
	-- insert backslashes in front of all spaces
	set _string to (do shell script "echo \"" & _string & "\" | sed 's/ /\\\\ /g'")
	-- the string that was passed in already contained backslash-escaped spaces,
	-- you'll now have double backslashes
	-- sed does not support lookbehind, so replace double backslashes with single backslashes
	set _string to (do shell script "echo \"" & _string & "\" | sed 's/(\\\\)+/\\\\/g'")
	return _string
end escapeSpaces

on makeTabAtPath(path)
	set command to "cd " & escapeSpaces(path)
	tell application "iTerm"
		activate
		-- send a ⌘-T keystroke to iTerm
		-- this is an easier way to make a new tab than the "real" AppleScript way
		tell application "System Events" to keystroke "t" using command down
		-- run the command
		tell current session of first window
			write text command
		end tell
	end tell
end makeTabAtPath
