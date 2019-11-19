# A Shaka Player . test page with media.

Uses: 2.5.6/shaka-player.compiled.debug.js

## Test of seek backwards in shaka player.

This repo is to demonstrate a seeking issue in Shaka player where when seeking backwards or forwards into a new segment and seeking again quickly, the video stalls.

## instructions:
Serve from a local server, e.g. 'web server for chrome'
Direct playback from Github seems to work, but locally served 10s segments, using 'Bad Reverse' stalls immediately, and ir pause then 'Bad Reverse', at 40s (when it needs to load a new segment going backwards)
What it seems to do is go into a 'clear buffers' frenzy.  Since it does not fail for remote serving, it is likely a time race condition.

'Good Reverse' avoids the issue by NOT seeking if either (video or audio) of the mediastate.performingUpdate is true
2 second segments also seem to work better than 10
