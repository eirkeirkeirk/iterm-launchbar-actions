-- LaunchBar Action Script
-- Opens a folder/directory/path in a new iTerm window

on handle_string(_string)
	makeWindowAtPath(_string)
end handle_string

on open (_path)
	set _path to POSIX path of _path
	makeWindowAtPath(_path)
end open

on escapeSpaces(_string)
	-- insert backslashes in front of all spaces
	set _string to (do shell script "echo \"" & _string & "\" | sed 's/ /\\\\ /g'")
	-- sed does not support lookbehind, so replace double backslashes with single backslashes
	-- (you might end up with double backslashes if the user already escaped spaces with a backslash)
	set _string to (do shell script "echo \"" & _string & "\" | sed 's/(\\\\)+/\\\\/g'")
	return _string
end escapeSpaces

on makeWindowAtPath(path)
	set command to "cd " & escapeSpaces(path)
	tell application "iTerm"
		activate
		set newWindow to (create window with default profile)
		tell current session of first window
			write text command
		end tell
	end tell
end makeWindowAtPath
