function [gui,data] = createCostsInterface(costs,gui,data)

%% Building and infrastructure panel
buildingAndInfractructurePanelFrame = uix.Panel( 'Parent', costs,'Padding', 3,'Title','Building and infrastructure capital costs, £');
buildingAndInfractructurePanel = uix.HBox( 'Parent', buildingAndInfractructurePanelFrame,'Padding', 3, 'Spacing', 3 );

% Building and infrastructure panel items
buildingAndInfractructurePanelItemPanelItems = uix.VBox('Parent',buildingAndInfractructurePanel);
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','AD Digester','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Separator','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Feedstock and other storage','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Digestate storage','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Grid connection','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Start/Backup boiler','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Water connection','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Groundworks','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Reception building','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Silage clamp','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Weighbridge','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Grease trap','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Wheel wash','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Roadways','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','District heating system','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Mixing pit','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Noise reduction','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Project development','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Professional costs','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Other','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', buildingAndInfractructurePanelItemPanelItems );
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Grant assistance','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',buildingAndInfractructurePanelItemPanelItems,'String','Total buidling cost','HorizontalAlignment','left','VerticalAlignment','middle');


% Building and infrastructure panel item costs
buildingAndInfractructurePanelItemCosts = uix.VBox('Parent',buildingAndInfractructurePanel);
gui.editADDigesterCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editADDigesterCost');
gui.editSeparatorCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editSeparatorCost');
gui.editFeedstockStorageCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editFeedstockStorageCost');
gui.editDigestateStorageCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editDigestateStorageCost');
gui.editGridConnectionCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editGridConnectionCost');
gui.editStartBackupBoilerCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editStartBackupBoilerCost');
gui.editWaterConnectionCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editWaterConnectionCost');
gui.editGroundworksCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editGroundworksCost');
gui.editReceptionBuildingCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editReceptionBuildingCost');
gui.editSilageClampCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editSilageClampCost');
gui.editWeighbridgeCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editWeighbridgeCost');
gui.editGreaseTrapCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editGreaseTrapCost');
gui.editWheelWashCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editWheelWashCost');
gui.editRoadwaysCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editRoadwaysCost');
gui.editDistrictHeatingCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editDistrictHeatingCost');
gui.editMixingPitCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editMixingPitCost');
gui.editNoiseReductionCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editNoiseReductionCost');
gui.editProjectDevelopmentCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editProjectDevelopmentCost');
gui.editProfessionalCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editProfessionalCost');
gui.editOtherBuildingCost = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editOtherBuildingCost');
uix.Empty( 'Parent', buildingAndInfractructurePanelItemCosts );
gui.editGrantAssistanceBuilding = uicontrol('Parent',buildingAndInfractructurePanelItemCosts,'Style','edit','String','0.00','Tag','editGrantAssistanceBuilding');
gui.editTotalBuildingCost = uix.Text('Parent',buildingAndInfractructurePanelItemCosts,'String','0.00','VerticalAlignment','middle');



%% Machinery panel
machineryAndCapitalPanelFrame = uix.Panel( 'Parent', costs,'Padding', 3,'Title','Machinery capital costs, £');
machineryAndCapitalPanel = uix.HBox( 'Parent', machineryAndCapitalPanelFrame,'Padding', 3, 'Spacing', 3 );

% Machinery panel items
machineryAndCapitalPanelItem = uix.VBox('Parent',machineryAndCapitalPanel);
uix.Text('Parent',machineryAndCapitalPanelItem,'String','CHP generator','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Cables and pipes','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Heat exchanger','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Biogas scrubber','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Fencing','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Depackaging','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Cleaning technology','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Degritter','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Odour management','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Front end loader','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Pumps','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Shredder','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Pasteuriser','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Other','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', machineryAndCapitalPanelItem );
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Grant assistance','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',machineryAndCapitalPanelItem,'String','Total machinery cost','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', machineryAndCapitalPanelItem );
uix.Empty( 'Parent', machineryAndCapitalPanelItem );
uix.Empty( 'Parent', machineryAndCapitalPanelItem );
uix.Empty( 'Parent', machineryAndCapitalPanelItem );
uix.Empty( 'Parent', machineryAndCapitalPanelItem );
uix.Empty( 'Parent', machineryAndCapitalPanelItem );


% Machinery panel item costs
machineryAndCapitalPanelItemCosts = uix.VBox('Parent',machineryAndCapitalPanel);
gui.editCHPGeneratorCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editCHPGeneratorCost');
gui.editCablesAndPipesCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editCablesAndPipesCost');
gui.editHeatExchangerCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editHeatExchangerCost');
gui.editBiogasScrubberCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editBiogasScrubberCost');
gui.editFencingCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editFencingCost');
gui.editDepackagingCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editDepackagingCost');
gui.editCleaningTechnologyCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editCleaningTechnologyCost');
gui.editDegritterCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editDegritterCost');
gui.editOdourManagementCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editOdourManagementCost');
gui.editFrontEndLoaderCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editFrontEndLoaderCost');
gui.editPumpsCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editPumpsCost');
gui.editShredderCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editShredderCost');
gui.editPasteuriserCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editPasteuriserCost');
gui.editOtherMachinerCost = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editOtherMachinerCost');
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );
gui.editGrantAssistanceMachinery = uicontrol('Parent',machineryAndCapitalPanelItemCosts,'Style','edit','String','0.00','Tag','editGrantAssistanceMachinery');
gui.editTotalMachineryCost = uix.Text('Parent',machineryAndCapitalPanelItemCosts,'String','0.00','VerticalAlignment','middle');
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );
uix.Empty( 'Parent', machineryAndCapitalPanelItemCosts );


%%
overheadCostsPanelFrame = uix.Panel( 'Parent', costs,'Padding', 3,'Title','Overhead costs, £');
overheadCostsPanel = uix.HBox( 'Parent', overheadCostsPanelFrame,'Padding', 3, 'Spacing', 3);

% Overhead cost panel items
overheadCostsPanelPanelItems = uix.VBox( 'Parent', overheadCostsPanel,'Padding', 3, 'Spacing', 3);
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Initial year overhead cost','HorizontalAlignment','left','VerticalAlignment','middle','FontWeight','Bold');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Labour','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Regular and casual','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Management','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', overheadCostsPanelPanelItems );
uix.Text('Parent',overheadCostsPanelPanelItems,'String','General overheads','HorizontalAlignment','left','VerticalAlignment','middle','FontWeight','Bold');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','General insurance','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Transport','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Water','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Assurances','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Professional fees','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Testing fees','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Office and telephone','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Miscellaneous','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', overheadCostsPanelPanelItems );
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Land and building','HorizontalAlignment','left','VerticalAlignment','middle','FontWeight','Bold');
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Rent','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', overheadCostsPanelPanelItems );
uix.Text('Parent',overheadCostsPanelPanelItems,'String','Total','HorizontalAlignment','left','VerticalAlignment','middle','FontWeight','Bold');
uix.Empty( 'Parent', overheadCostsPanelPanelItems );
uix.Empty( 'Parent', overheadCostsPanelPanelItems );
uix.Empty( 'Parent', overheadCostsPanelPanelItems );
uix.Empty( 'Parent', overheadCostsPanelPanelItems );


% Overhead cost panel item costs
overheadCostsPanelPanelCosts = uix.VBox( 'Parent', overheadCostsPanel,'Padding', 3, 'Spacing', 3 );
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
gui.editLabourCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editLabourCost');
gui.editRegularCasualCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editRegularCasualCost');
gui.editManagementCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editManagementCost');
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
gui.editGeneralInsuranceCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editGeneralInsuranceCost');
gui.editTransportCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editTransportCost');
gui.editWaterCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editWaterCost');
gui.editAssurancesCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editAssurancesCost');
gui.editProfessionalFeesCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editProfessionalFeesCost');
gui.editTestingFeesCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editTestingFeesCost');
gui.editOfficeAndTelephoneCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editOfficeAndTelephoneCost');
gui.editMiscellaneousCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editMiscellaneousCost');
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
gui.editRentCost = uicontrol('Parent',overheadCostsPanelPanelCosts,'Style','edit','String','0.00','Tag','editRentCost');
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
gui.txtOperationsCost = uix.Text('Parent',overheadCostsPanelPanelCosts,'String','0.00','VerticalAlignment','middle');
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );
uix.Empty( 'Parent', overheadCostsPanelPanelCosts );

end