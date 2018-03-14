function [gui,data] = onListSelection( src, ~ ,gui,data)
% User selected a demo from the list - update "data" and refresh
data.SelectedDemo = get( src, 'Value' );
updateInterface(gui,data);
end % onListSelection
