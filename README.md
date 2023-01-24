# Bloodpoint spender for Dead by Daylight

## Important
*While this tool does not technically affect gameplay, tools like this are technically not approved by BHVR,
and using it can count as breaching terms and conditions.*

With that said, I have used it now for weeks, and I have not been on the end of a banhammer.

**USE AT YOUR OWN DISCRETION**

## Installation - Autohotkey
This tool comes in the form of a simple script for an automation scripting language called AutoHotkey.
Here's how to get going:
1. Download and install AutoHotKey: https://www.autohotkey.com/
2. Download the tool from GitHub (click the green CODE button on the top right, then Download ZIP)
3. Unpack the ZIP into a folder of your choice.
4. Double click the bw_random.ahk file to run the script

## How to use
Once the script is running, open DBD and open up a bloodweb for a character of your choice.
Then, press **CTRL + TAB**, and the script should start spending the bloodpoints for you.

*with the current version, it always seeks things out from the top left corner, line by line, but I might write
a more complex system that focuses on perks and such later*

If at any time you want the script to stop, **CTRL + SHIFT + TAB** will do that. (last spending action will complete first)

## Notes, bugs
- the script should handle popups (opening boxes) but sometimes it might hang
- the script has a max run limit, it will stop after spending around 1M blood points.
- It should deal with the first prestige upgrade, but each prestige upgrade has a unique icon, and I haven't spent the time on making them each work. As of now, it will stop at the prestige screen.

## Questions, problems?
Please open a ticket under issues, or leave a comment.