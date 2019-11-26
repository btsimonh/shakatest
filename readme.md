# A Shaka Player . test page with media.

# **** NOTE: Seems git may corrupt the media - so if you have trouble, download as a zip ****

Uses: 2.5.6/shaka-player.compiled.debug.js

## Test of seek backwards in shaka player.

This repo is to demonstrate a seeking issue in Shaka player where when seeking backwards, if the seeked time is within smallGapLimit before the start of the first loaded segment, the seek does not complete, but currentTime is updated.

In these test pages, smallGapLimit is set unreasonably large to easily demonstrate the issue (9s for the 10s segment version, 1.9s for the 2s segment version).

## instructions:
Seek manually to ~1 minute.
Use Arrow left to seek back by 1s increments until the video stops responding.
Note that the time changes, but the buffer indication on the timeline shows no data has been loaded.
The time range covered by the video not responding corresponds to the value of smallGapLimit.

