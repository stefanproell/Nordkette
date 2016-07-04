i=1; temp=$(mktemp -p .); for file in *.jpg
do
	mv "$file" $temp;
	mv $temp $(printf "Nordkette_%0.4d.jpg" $i)
	i=$((i + 1))
done

