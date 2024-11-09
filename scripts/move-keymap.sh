KEYMAPPID=$(aerospace list-windows --format %{window-id} --app-bundle-id 'io.zsa.keymapp' --monitor all)
if [[ -z "$KEYMAPPID" ]]; then
    open /System/Volumes/Data/Applications/keymapp.app
fi

while [ -z "$KEYMAPPID" ]
do 
    echo "try again"
    KEYMAPPID=$(aerospace list-windows --format %{window-id} --app-bundle-id 'io.zsa.keymapp' --monitor all)
    sleep 1s
done 

CURRENT_WS=$(aerospace list-workspaces --focused)
aerospace move-node-to-workspace --window-id $KEYMAPPID $CURRENT_WS
