function [gui,data] = createCostSummaryInterface(costSummary,gui,data)

% Capital, finance and other information
capitalFianceAndOtherInformationPanel1 = uix.Panel( 'Parent', costSummary,'Padding', 3,'Title','Depreciation, finance and summary');
capitalFianceAndOtherInformationPanel = uix.VBox( 'Parent', capitalFianceAndOtherInformationPanel1,'Padding', 3);

% sub-panel 1
capitalDepreciationSchedule = uix.Panel( 'Parent', capitalFianceAndOtherInformationPanel,'Padding', 3,'Title','Capital (straight line) depreciation schedule');
depreciationAndFinancePanelFrame = uix.VBox( 'Parent', capitalDepreciationSchedule,'Padding', 3, 'Spacing', 3 );
depreciationAndFinancePanelFrame1 = uix.HBox( 'Parent', depreciationAndFinancePanelFrame,'Padding', 3, 'Spacing', 3 );
depreciationAndFinancePanelItems = uix.VBox( 'Parent', depreciationAndFinancePanelFrame1,'Padding', 3, 'Spacing', 3 );
uix.Empty( 'Parent', depreciationAndFinancePanelItems );
uix.Text('Parent',depreciationAndFinancePanelItems,'String','Building depreciation period','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',depreciationAndFinancePanelItems,'String','Machinery depreciation period','HorizontalAlignment','left','VerticalAlignment','middle');

depreciationAndFinancePanelInfo = uix.VBox( 'Parent', depreciationAndFinancePanelFrame1,'Padding', 3, 'Spacing', 3 );
uicontrol('Parent',depreciationAndFinancePanelInfo,'Style','text','String','Years','HorizontalAlignment','center');
gui.editBuildingDepreciationPeriod = uicontrol('Parent',depreciationAndFinancePanelInfo,'Style','edit','String','20.00','Tag','editBuildingDepreciationPeriod');
gui.editMachineryDepreciationPeriod = uicontrol('Parent',depreciationAndFinancePanelInfo,'Style','edit','String','20.00','Tag','editMachineryDepreciationPeriod');

warnOfCorection = uix.VBox( 'Parent', depreciationAndFinancePanelFrame,'Padding', 3, 'Spacing', 3 ); % warn of correction when depreciation duration is greater project horizon
gui.buildingDepreciationPeriodCorrection = uix.Text('Parent',warnOfCorection,'HorizontalAlignment','left','VerticalAlignment','middle');
gui.machineryDepreciationPeriodCorrection = uix.Text('Parent',warnOfCorection,'HorizontalAlignment','left','VerticalAlignment','middle');


% sub-panel 2
financeInformationPanel = uix.Panel( 'Parent', capitalFianceAndOtherInformationPanel,'Padding', 3,'Title','Finance and other information');
financeInformationPanelFrame = uix.VBox( 'Parent', financeInformationPanel,'Padding', 3, 'Spacing', 3 );
financeInformationPanelFrame1 = uix.HBox( 'Parent', financeInformationPanelFrame,'Padding', 3, 'Spacing', 3 );
financeInformationPanelItems = uix.VBox( 'Parent', financeInformationPanelFrame1,'Padding', 3, 'Spacing', 3 );
uix.Text('Parent',financeInformationPanelItems,'String','% Debt (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle'); % remember the percentage expression
uix.Text('Parent',financeInformationPanelItems,'String','Debt repayment term (years)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', financeInformationPanelItems );

financeInformationPanelInfo = uix.VBox( 'Parent', financeInformationPanelFrame1,'Padding', 3, 'Spacing', 3 );
gui.editDebtRatio = uicontrol('Parent',financeInformationPanelInfo,'Style','edit','String','0.00','Tag','editDebtRatio');
gui.editDebtRepaymentTerm = uicontrol('Parent',financeInformationPanelInfo,'Style','edit','String','10.00','Tag','editDebtRepaymentTerm');
uix.Empty( 'Parent', financeInformationPanelInfo );

%
warnOfCorection2 = uix.VBox( 'Parent', financeInformationPanelFrame,'Padding', 3, 'Spacing', 3 );
gui.repaymentTermCorrection = uix.Text('Parent',warnOfCorection2,'HorizontalAlignment','left','VerticalAlignment','middle'); % warn of correction when repayment duration is greater project horizon

% sub-panel 3
summary1 = uix.Panel( 'Parent', capitalFianceAndOtherInformationPanel,'Padding', 3,'Title','Summary' );
summary = uix.VBox( 'Parent', summary1,'Padding', 3);
gui.txtSummaryStatement1 = uicontrol('Parent',summary,'Style','text','HorizontalAlignment','left');
gui.txtSummaryStatement2 = uicontrol('Parent',summary,'Style','text','HorizontalAlignment','left');
gui.txtSummaryStatement3 = uicontrol('Parent',summary,'Style','text','HorizontalAlignment','left');


%
graphAndNotes = uix.VBox( 'Parent', costSummary,'Padding', 3, 'Spacing', 3 );
overheadCostGraph = uix.Panel( 'Parent', graphAndNotes,'Padding', 3,'Title','Annual cost projections, £');
gui.overheadCostGrph = axes( 'Parent', overheadCostGraph,'ActivePositionProperty', 'outerposition' );

notes = uix.HBox( 'Parent', graphAndNotes,'Padding', 3, 'Spacing', 3 );
legend = uix.Panel( 'Parent', notes,'Padding', 3,'Title','Legend');
gui.notesLegend = uicontrol('Parent',legend,'Style','text','HorizontalAlignment','left');

notesPanelFrame = uix.Panel( 'Parent', notes,'Padding', 3,'Title','Notes');
gui.notesOther = uicontrol('Parent',notesPanelFrame,'Style','text','HorizontalAlignment','left');


%
set( costSummary, 'Widths', [-3 -5] );
set( graphAndNotes, 'Heights', [-6 -2] );
set( notes, 'Widths', [-3 -5] );

end