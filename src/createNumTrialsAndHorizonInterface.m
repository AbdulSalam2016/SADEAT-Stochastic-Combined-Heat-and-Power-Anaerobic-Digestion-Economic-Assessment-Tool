function [gui,data] = createNumTrialsAndHorizonInterface(numTrialsAndHorizonTab,gui,data)

numTrialsAndHorizonParametersPanelFrame = uix.Panel( 'Parent', numTrialsAndHorizonTab,'Padding', 3,'Title','Simulation parameters');
numTrialsAndHorizonParametersPanel = uix.HBox( 'Parent', numTrialsAndHorizonParametersPanelFrame,'Padding', 3, 'Spacing', 3);

% Items
numTrialsAndHorizonParametersPanelItems = uix.VBox( 'Parent', numTrialsAndHorizonParametersPanel,'Padding', 3, 'Spacing', 3);
uix.Text('Parent',numTrialsAndHorizonParametersPanelItems,'String','Project lifetime (years)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',numTrialsAndHorizonParametersPanelItems,'String','Number of cases to simulate','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',numTrialsAndHorizonParametersPanelItems,'String','Seed (for reproducibility of results)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
% uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelItems );
gui.hiddenDecisionCriterionData = uitable(numTrialsAndHorizonParametersPanelItems,'Visible','off');


% Information
numTrialsAndHorizonParametersPanelInfo = uix.VBox( 'Parent', numTrialsAndHorizonParametersPanel,'Padding', 3, 'Spacing', 3 );
gui.editProjectHorizon = uicontrol('Parent',numTrialsAndHorizonParametersPanelInfo,'Style','edit','String','20.00','Tag','editProjectHorizon');
gui.editNumSimulationCases = uicontrol('Parent',numTrialsAndHorizonParametersPanelInfo,'Style','edit','String','10.00','Tag','editNumSimulationCases');
gui.stochasticitySeed = uicontrol('Parent',numTrialsAndHorizonParametersPanelInfo,'Style','edit','String','123.00','Tag','editStochasticitySeed');
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );
uix.Empty( 'Parent', numTrialsAndHorizonParametersPanelInfo );

%
uix.Empty( 'Parent', numTrialsAndHorizonTab );
uix.Empty( 'Parent', numTrialsAndHorizonTab );
set( numTrialsAndHorizonTab, 'Width', [-4 -2 -2] );

end