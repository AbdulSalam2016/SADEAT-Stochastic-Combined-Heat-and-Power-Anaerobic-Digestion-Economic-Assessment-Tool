function [gui,data] = createResultPart3(resultsPart3,gui,data)

% Distributions 
result3PanelFrame = uix.Panel( 'Parent', resultsPart3,'Padding', 3,'Title','Results: Showing distribution of results');
result3PanelFrame1 = uix.HBox( 'Parent', result3PanelFrame,'Padding', 3, 'Spacing', 3 );

HBox1 = uix.VBox('Parent',result3PanelFrame1);
gui.R1C1Result3 = axes( 'Parent', HBox1,'ActivePositionProperty', 'outerposition' );

cla(gui.R1C1Result3);

notesPanelFrame = uix.Panel( 'Parent', resultsPart3,'Padding', 3,'Title','Notes');
gui.notesResult3 = uicontrol('Parent',notesPanelFrame,'Style','text','HorizontalAlignment','left');

set( resultsPart3, 'Widths', [-4 -1] );
end
