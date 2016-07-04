tempfolder=TMP-Nordkette-Video
mkdir $tempfolder
cp *.jpg "$tempfolder/"
cd $tempfolder
avconv  -r 10 -f image2 -i Nordkette_%04d.jpg -b:v 5000k Nordkette.avi
