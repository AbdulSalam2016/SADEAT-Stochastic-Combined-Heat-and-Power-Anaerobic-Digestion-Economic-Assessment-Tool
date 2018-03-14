function [gui,data] = updateInterface(gui,data)

% Update various parts of the interface 
% Update the list and menu 
set(gui.ListBox,'Value',data.SelectedDemo);
set(gui.ViewContainer,'Selection',data.SelectedDemo);

% Update the help button label
demoName = data.DemoNames{data.SelectedDemo};
demoInstruction = data.DemoInstruction{data.SelectedDemo};
% set( gui.HelpButton, 'String', ['Help for ',demoName]);

% Update the view panel title
set( gui.ViewPanel, 'Title', sprintf( 'Viewing: %s', [demoName demoInstruction]));

end % updateInterface