function [gui,data] = createInterface(data)
% Create the user interface for the application and return a structure of handles for global use.
gui = struct();

%% main figure and menu properties
% Open a window and add some menus
gui.Window = figure( ...
    'Name', data.programTitle, ...
    'NumberTitle', 'off', ...
    'MenuBar', 'none', ...
    'Toolbar', 'none', ...
    'HandleVisibility', 'off',...
    'DockControls','off');


%% Arrange the main interface
mainLayout = uix.HBoxFlex( 'Parent', gui.Window, 'Spacing', 3 );

% Create the panels
gui.controlPanel = uix.BoxPanel( ...
    'Parent', mainLayout, ...
    'Title', 'Select a tab to view or edit');
gui.ViewPanel = uix.BoxPanel( ...
    'Parent', mainLayout, ...
    'Title', 'Viewing: ???' );

% Adjust the main layout
set( mainLayout, 'Widths', [-1,-9]  );


% Create the controls for the left hand selection listbox
demoNames = data.DemoNames;
controlLayout = uix.VBox( 'Parent', gui.controlPanel, ...
    'Padding', 3, 'Spacing', 3 );
gui.ListBox = uicontrol( 'Style', 'listBox', ...
    'BackgroundColor', 'w', ...
    'Parent', controlLayout, ...
    'String', demoNames(:), ...
    'Value', 1);

% Create the controls for the right hand tab panels
gui.ViewContainer = uix.TabPanel( 'Parent',gui.ViewPanel,'Padding', 0);

% Tab 1: Welcome
welcome = uix.VBox( 'Parent', gui.ViewContainer, 'Padding', 5); % first call to gui.ViewContainer produces first tab
logoHutton = imread('logoHutton.jpg');
logoAD = imread('leavesley-group-anaerobic-digestion-1.jpg');
logoMDT = imread('logoMDT.png');
[gui,data] = createWelcomeTabInterface(welcome,gui,data,logoHutton,logoAD,logoMDT);

% Tab 2: Number of trials and project horizon
numTrialsAndHorizonTab = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % second call to gui.ViewContainer produces second tab
[gui,data] = createNumTrialsAndHorizonInterface(numTrialsAndHorizonTab,gui,data);

% Tab 3: Costs
costs = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % third call to gui.ViewContainer produces third tab
[gui,data] = createCostsInterface(costs,gui,data);

% Tab 4: Costs summary
costSummary = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % fourth call to gui.ViewContainer produces fourth tab
[gui,data] = createCostSummaryInterface(costSummary,gui,data);

% Tab 5: Money and finance rates
moneyRatesParametersTab = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % first call to gui.ViewContainer produces first tab
[gui,data] = createMoneyRatesInterface(moneyRatesParametersTab,gui,data);

% Tab 6: Feedstock and gas
feedstockAndGasTab = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % second call to gui.ViewContainer produces second tab
[gui,data] = createfeedstockAndGasTabInterface(feedstockAndGasTab,gui,data);

% Tab 7: Energy conversion
energyConversionParametersTab = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % first call to gui.ViewContainer produces first tab
[gui,data] = createEnergyConversionParametersInterface(energyConversionParametersTab,gui,data);

% Tab 8
resultsPart1 = uix.VBox( 'Parent', gui.ViewContainer, 'Padding', 5); % fifth call to gui.ViewContainer produces fifth tab
[gui,data] = createResultPart1(resultsPart1,gui,data);

% Tab 9
resultsPart2 = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % sixth call to gui.ViewContainer produces sixth tab
[gui,data] = createResultPart2(resultsPart2,gui,data);

% Tab 10
resultsPart3 = uix.HBox( 'Parent', gui.ViewContainer, 'Padding', 5); % sixth call to gui.ViewContainer produces sixth tab
[gui,data] = createResultPart3(resultsPart3,gui,data);


%Update the tabs
set(gui.ViewContainer,'TabTitles',demoNames,'TabWidth',[-1],'Selection',...
    data.SelectedDemo);

end % createInterface