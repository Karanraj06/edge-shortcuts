#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy URL
# @raycast.mode silent

# Hotkey: Shift-Command-C (configured in Raycast, not by this script).

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author karanraj06
# @raycast.authorURL https://raycast.com/karanraj06

use framework "AppKit"
use scripting additions

set frontApp to current application's NSWorkspace's sharedWorkspace()'s frontmostApplication()
if (frontApp's bundleIdentifier() as text) is not "com.microsoft.edgemac" then return

tell application "Microsoft Edge"
	if (count of windows) is 0 then return
	set currentURL to URL of active tab of front window
end tell

set the clipboard to currentURL
return "Copied Current URL"
