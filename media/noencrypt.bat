rem C:\Data\Common\Apps\ffmpeg-20191109-0f89a22-win64-static\bin\ffmpeg ^
rem -i test.mp4 ^
rem   -strict -2 -c:a opus ^
rem   -vf "scale=-2:360" ^
rem   -c:v libvpx-vp9 -profile:v 0 ^
rem   -keyint_min 72 -g 72 ^
rem   -tile-columns 4 -frame-parallel 1 -speed 1 ^
rem   -auto-alt-ref 1 -lag-in-frames 25 ^
rem   -b:v 300k ^
rem   -y test.webm

packager-win ^
  in=test.webm,output_format=webm,stream=audio,output=neb10.webma ^
  in=test.webm,output_format=webm,stream=video,output=neb10.webmv ^
  --mpd_output neb10.mpd ^
  --segment_duration=10

packager-win ^
  in=test.webm,output_format=webm,stream=audio,output=neb2.webma ^
  in=test.webm,output_format=webm,stream=video,output=neb2.webmv ^
  --mpd_output neb2.mpd ^
  --segment_duration=2
