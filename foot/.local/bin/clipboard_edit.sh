f=$(mktemp)
wl-paste > $f
foot --app-id=float_foot -- helix $f
cat $f | wl-copy
rm $f
