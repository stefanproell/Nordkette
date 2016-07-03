cd /home/stefan-srv/Gitlab-Workspace/Nordkette
now=$(date +"%m_%d_%Y %H %M %S")
echo "$now"
git pull --rebase
convert -dither none -matte -depth 8 -deconstruct  -colors 32 -delay 10 -loop 0 *.jpg Nordkette.gif
git add *.gif
git commit -am "Nordkettenupdate"
git push

