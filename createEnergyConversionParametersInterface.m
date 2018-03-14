function [gui,data] = createEnergyConversionParametersInterface(energyConversionParametersTab,gui,data)

energyConversionPanelItemsFrame = uix.Panel( 'Parent', energyConversionParametersTab,'Padding', 3,'Title','Energy conversion and efficiency parameters');
energyConversionPanelItems1 = uix.HBox( 'Parent', energyConversionPanelItemsFrame,'Padding', 3, 'Spacing', 3 );

% Items
energyConversionPanelItems = uix.VBox( 'Parent', energyConversionPanelItems1,'Padding', 3, 'Spacing', 3 );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Text('Parent',energyConversionPanelItems,'String','Energy in methane (kWh/m3)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','Amount of methane in biogas (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','CHP plant electricity efficiency (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','CHP heat efficiency (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','Overall plant inefficiency (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','Parasitic load electricity (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','Parasitic load heat (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',energyConversionPanelItems,'String','Downtime (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Text('Parent',energyConversionPanelItems,'String','Other','HorizontalAlignment','left','VerticalAlignment','middle','Visible','off');
uix.Text('Parent',energyConversionPanelItems,'String','Retention period (days)','HorizontalAlignment','left','VerticalAlignment','middle','Visible','off');
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
uix.Empty( 'Parent', energyConversionPanelItems );
gui.dummyStorage = uicontrol('Parent',energyConversionPanelItems,'Style','edit','Visible','off'); %%  STORAGE OF PARAMETERS NOT IN GUI OBJECTS. WE USE 'setappdata'. See function 'updateDataStructure.m'


% Items Min
energyConversionPanelMin = uix.VBox( 'Parent', energyConversionPanelItems1,'Padding', 3, 'Spacing', 3 );
uix.Text('Parent',energyConversionPanelMin,'String','Minimum','HorizontalAlignment','center','VerticalAlignment','middle');
gui.energyInMethaneMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','11.10','Tag','energyInMethaneMin');
gui.methaneInBiogasMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','45.00','Tag','methaneInBiogasMin');
gui.chpElectricityEfficiencyMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','33.00','Tag','chpElectricityEfficiencyMin');
gui.chpHeatEfficiencyMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','38.00','Tag','chpHeatEfficiencyMin');
gui.chpOverallInefficiencyMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','5.00','Tag','chpOverallInefficiencyMin');
gui.parasiticLoadElectricityMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','6.00','Tag','parasiticLoadElectricityMin');
gui.parasiticLoadHeatMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','20.00','Tag','parasiticLoadHeatMin');
gui.DowntimeMin = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','10.00','Tag','DowntimeMin');
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
gui.editRetentionPeriod = uicontrol('Parent',energyConversionPanelMin,'Style','edit','String','56.00','Tag','retentionPeriod','Enable','off','Visible','off');
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );
uix.Empty( 'Parent', energyConversionPanelMin );


% Items Modal
energyConversionPanelModal = uix.VBox( 'Parent', energyConversionPanelItems1,'Padding', 3, 'Spacing', 3 );
uix.Text('Parent',energyConversionPanelModal,'String','Modal','HorizontalAlignment','center','VerticalAlignment','middle');
gui.energyInMethaneModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','11.20','Tag','energyInMethaneModal');
gui.methaneInBiogasModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','50.00','Tag','methaneInBiogasModal');
gui.chpElectricityEfficiencyModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','39.00','Tag','chpElectricityEfficiencyModal');
gui.chpHeatEfficiencyModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','43.00','Tag','chpHeatEfficiencyModal');
gui.chpOverallInefficiencyModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','10.00','Tag','chpOverallInefficiencyModal');
gui.parasiticLoadElectricityModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','8.00','Tag','parasiticLoadElectricityModal');
gui.parasiticLoadHeatModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','30.00','Tag','parasiticLoadHeatModal');
gui.DowntimeModal = uicontrol('Parent',energyConversionPanelModal,'Style','edit','String','15.00','Tag','DowntimeModal');
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );
uix.Empty( 'Parent', energyConversionPanelModal );


% Items Max
energyConversionPanelMax = uix.VBox( 'Parent', energyConversionPanelItems1,'Padding', 3, 'Spacing', 3 );
uix.Text('Parent',energyConversionPanelMax,'String','Maximum','HorizontalAlignment','center','VerticalAlignment','middle');
gui.energyInMethaneMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','11.30','Tag','energyInMethaneMax');
gui.methaneInBiogasMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','55.00','Tag','methaneInBiogasMax');
gui.chpElectricityEfficiencyMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','45.00','Tag','chpElectricityEfficiencyMax');
gui.chpHeatEfficiencyMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','48.00','Tag','chpHeatEfficiencyMax');
gui.chpOverallInefficiencyMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','15.00','Tag','chpOverallInefficiencyMax');
gui.parasiticLoadElectricityMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','10.00','Tag','parasiticLoadElectricityMax');
gui.parasiticLoadHeatMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','40.00','Tag','parasiticLoadHeatMax');
gui.DowntimeMax = uicontrol('Parent',energyConversionPanelMax,'Style','edit','String','20.00','Tag','DowntimeMax');
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );
uix.Empty( 'Parent', energyConversionPanelMax );

%
% uix.Empty( 'Parent', energyConversionPanelItems1 );

% Select distribution
energyConversionDistributionItems = uix.VBox( 'Parent', energyConversionPanelItems1,'Padding', 3, 'Spacing', 3 );
uix.Text('Parent',energyConversionDistributionItems,'String','Select distribution','HorizontalAlignment','left','VerticalAlignment','middle');

gui.triangularEnergyConversionTab = uicontrol('Parent',energyConversionDistributionItems,'Style','radiobutton','String','Triangular','Tag','triangularEnergyConversionTab','Value',1) ;
gui.uniformEnergyConversionTab = uicontrol('Parent',energyConversionDistributionItems,'Style','radiobutton','String','Uniform','Tag','uniformEnergyConversionTab','Value',0) ;
uix.Empty( 'Parent', energyConversionDistributionItems );
uix.Empty( 'Parent', energyConversionDistributionItems );
uix.Empty( 'Parent', energyConversionDistributionItems );
uix.Empty( 'Parent', energyConversionDistributionItems );
uix.Empty( 'Parent', energyConversionDistributionItems );
uix.Empty( 'Parent', energyConversionDistributionItems );
uix.Empty( 'Parent', energyConversionDistributionItems );

end