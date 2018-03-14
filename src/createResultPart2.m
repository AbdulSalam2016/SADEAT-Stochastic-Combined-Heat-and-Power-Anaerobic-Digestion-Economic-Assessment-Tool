function [gui,data] = createResultPart2(resultsPart2,gui,data)

% Distributions 
result2PanelFrame = uix.Panel( 'Parent', resultsPart2,'Padding', 3,'Title','Results: Showing mean (blue), upper and lower 95% confidence intervals (dashed red), and minimum and maximum intervals (green)');
result2PanelFrame1 = uix.HBox( 'Parent', result2PanelFrame,'Padding', 3, 'Spacing', 3 );

HBox1 = uix.VBox('Parent',result2PanelFrame1);
gui.R1C1Result2 = axes( 'Parent', HBox1,'ActivePositionProperty', 'outerposition' );  
gui.R2C1Result2 = axes( 'Parent', HBox1,'ActivePositionProperty', 'outerposition' );

HBox2 = uix.VBox('Parent',result2PanelFrame1);
gui.R1C2Result2 = axes( 'Parent', HBox2,'ActivePositionProperty', 'outerposition' );
gui.R2C2Result2 = axes( 'Parent', HBox2,'ActivePositionProperty', 'outerposition' );

HBox3 = uix.VBox('Parent',result2PanelFrame1);
gui.R1C3Result2 = axes( 'Parent', HBox3,'ActivePositionProperty', 'outerposition' );
gui.R2C3Result2 = axes( 'Parent', HBox3,'ActivePositionProperty', 'outerposition' );

cla(gui.R1C1Result2);
cla(gui.R1C2Result2);
cla(gui.R1C3Result2);
cla(gui.R2C1Result2);
cla(gui.R2C2Result2);
cla(gui.R2C3Result2);

end
