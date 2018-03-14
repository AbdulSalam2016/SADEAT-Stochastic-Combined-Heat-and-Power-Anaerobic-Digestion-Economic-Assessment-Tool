function SADEAT()

%{
***************************************************************************
A stochastic combined heat and power anaerobic digestion economic
assessment tool for the UK

Copyright (C) 2016  Yakubu Abdul-Salam, The James Hutton Institute, Aberdeen
										      
This program is free software: you can redistribute it and/or modify		                               
it under the terms of the GNU General Public License as published by                                       
the Free Software Foundation, either version 3 of the License, or                                          
(at your option) any later version.                                                                        
  											                                                               
This program is distributed in the hope that it will be useful,                                            
but WITHOUT ANY WARRANTY; without even the implied warranty of                                             
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                                              
GNU General Public License for more details.                                                               
 											                                                                   
You should have received a copy of the GNU General Public License                                          
along with this program.  If not, see <http://www.gnu.org/licenses/>.                                      
***************************************************************************  
%}

clear
close all
clc

%% Define structures for passing information 
data = createData(); % create the 'data' structure to control data
[gui,data] = createInterface(data); % create the 'gui' structure to control ui objects
updateInterface(gui,data);

%%
set(gui.Window,'Position',get(groot,'ScreenSize'));

%% define callback
[gui,data] = defineCallBacks(gui,data);
gui = updateDataStructure(gui);

%% File menu
% File menus have to be defined here so that all the properties of 'gui' are inherited to file menu callbacks
gui.FileMenu = uimenu( gui.Window, 'Label', 'File');
uimenu( gui.FileMenu, 'Label', 'Exit','Callback', @(x,y,a) onExit(x,y,gui));

gui.Run = uimenu( gui.Window, 'Label', 'Run' );
gui.npvRun = uimenu( gui.Run, 'Label', 'Net Present Value (NPV)','Tag','NPV','Callback', @(x,y,a) onRun(x,y,gui,data), 'Checked','off');
gui.irrRun = uimenu( gui.Run, 'Label', 'Modified Internal Rate of Return (MIRR)','Tag','MIRR','Callback', @(x,y,a) onRun(x,y,gui,data), 'Checked','off');
gui.beElectRun = uimenu( gui.Run, 'Label', 'Breakeven electricity prices','Tag','BreakEvenElectricityPrice','Callback', @(x,y,a) onRun(x,y,gui,data),'Checked','off');
gui.beHeatRun = uimenu( gui.Run, 'Label', 'Breakeven heat prices','Tag','BreakEvenHeatPrice','Callback', @(x,y,a) onRun(x,y,gui,data),'Checked','off');

gui.ExportResults = uimenu( gui.Window, 'Label', 'Export results' );
uimenu( gui.ExportResults, 'Label', 'Export data in tab "Simulated data"','Tag','exportSimulatedData','Callback', @(x,y,a) onExportData(x,y,gui), 'Checked','off');
uimenu( gui.ExportResults, 'Label', 'Export data in tab "Distribution"','Tag','exportDecisionCriterionData','Callback', @(x,y,a) onExportData(x,y,gui), 'Checked','off');
uimenu( gui.ExportResults, 'Label', 'Export graphs (Disabled: see next version of tool)','Tag','exportDecisionCriterionGraphs','Enable','off','Callback', @(x,y,a) onExportData(x,y,gui), 'Checked','off');

gui.Help = uimenu( gui.Window, 'Label', 'Help' );
uimenu( gui.Help, 'Label', 'Open user guide','Callback', @(x,y,a) onHelp(x,y,gui,data), 'Checked','off');

%% fire call back function onEditBoxChange.m so that all calculations in the tabs; and graphical and textual notes in the tabs are updated 
gui = onEditBoxChange(gui.editAnmlFeed1Max,0,gui); 

%% run the tool to update results for the default entries
model(gui,gui.npvRun); 
set(gui.npvRun,'Checked','on');

end

