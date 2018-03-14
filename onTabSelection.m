function onTabSelection( src, ~ , gui, data )
% User selected a demo from the list - update "data" and refresh
data.SelectedDemo = get( src, 'Selection' );
updateInterface(gui,data);
end % onTabSelection
