function [gui,data] = defineCallBacks(gui,data)

%% Define callbacks
set(gui.ListBox,'Callback', @(x,y,a,b) onListSelection(x,y,gui,data)); % callback for listbox on left used to select and control tabs
set(gui.ViewContainer,'SelectionChangedFcn', @(x,y,a,b) onTabSelection(x,y,gui,data)); % callback when a tab is selected

%% Tab 1
set(gui.editProjectHorizon,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editNumSimulationCases,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.stochasticitySeed,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

%% Tab 2
% Building
set( gui.editADDigesterCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editSeparatorCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editFeedstockStorageCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editDigestateStorageCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editGridConnectionCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editStartBackupBoilerCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editWaterConnectionCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editGroundworksCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editReceptionBuildingCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editSilageClampCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editWeighbridgeCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editGreaseTrapCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editWheelWashCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editRoadwaysCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editDistrictHeatingCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editMixingPitCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editNoiseReductionCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editProjectDevelopmentCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editProfessionalCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editOtherBuildingCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editOtherBuildingCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editGrantAssistanceBuilding, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

% Machinery
set( gui.editCHPGeneratorCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editCablesAndPipesCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editHeatExchangerCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editBiogasScrubberCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editFencingCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editDepackagingCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editCleaningTechnologyCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editDegritterCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editOdourManagementCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editFrontEndLoaderCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editPumpsCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editShredderCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editPasteuriserCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editOtherMachinerCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editGrantAssistanceMachinery, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));


% Overhead
set(gui.editLabourCost,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editRegularCasualCost,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editManagementCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editGeneralInsuranceCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editTransportCost,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editWaterCost,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAssurancesCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editProfessionalFeesCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editTestingFeesCost,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOfficeAndTelephoneCost,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editMiscellaneousCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editRentCost, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));


%% Tab 3
set(gui.editBuildingDepreciationPeriod,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editMachineryDepreciationPeriod,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editDebtRatio, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editDebtRepaymentTerm, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

%% Tab 4
set( gui.genFIT, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.expFIT, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.RHI, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.heatPrice, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

set( gui.editInterestRate, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editInflationRate, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editDiscountRate, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editTaxRate, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editFinanceRate, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set( gui.editReinvestmentRate, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));



%% Tab 5
% Quantity
set(gui.editAnmlFeed1Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlFeed2Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlFeed3Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlFeed4Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlFeed5Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed1Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed2Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropFeed3Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropFeed4Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed5Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherFeed1Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed2Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed3Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherFeed4Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed5Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

set(gui.editAnmlFeed1Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlFeed2Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlFeed3Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlFeed4Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlFeed5Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed1Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed2Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropFeed3Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropFeed4Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed5Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherFeed1Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed2Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed3Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherFeed4Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed5Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

set(gui.editAnmlFeed1Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlFeed2Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlFeed3Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlFeed4Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlFeed5Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed1Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed2Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropFeed3Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropFeed4Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropFeed5Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherFeed1Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed2Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed3Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherFeed4Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherFeed5Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

% Yield
set(gui.editAnmlYield1Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlYield2Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlYield3Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlYield4Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlYield5Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield1Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield2Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropYield3Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropYield4Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield5Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherYield1Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield2Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield3Min,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherYield4Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield5Min, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

set(gui.editAnmlYield1Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlYield2Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlYield3Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlYield4Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlYield5Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield1Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield2Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropYield3Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropYield4Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield5Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherYield1Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield2Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield3Modal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherYield4Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield5Modal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

set(gui.editAnmlYield1Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlYield2Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editAnmlYield3Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlYield4Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editAnmlYield5Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield1Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield2Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropYield3Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editEngyCropYield4Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editEngyCropYield5Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherYield1Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield2Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield3Max,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.editOtherYield4Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.editOtherYield5Max, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));

% Distribution
set(gui.triangularQuantity,'Callback', @(x,y,a,b) onRadioButtonSelection(x,y,gui,data)); % callback for listbox on left used to select and control tabs
set(gui.uniformQuantity,'Callback', @(x,y,a,b) onRadioButtonSelection(x,y,gui,data)); % callback when a tab is selected
set(gui.triangularYield,'Callback', @(x,y,a,b) onRadioButtonSelection(x,y,gui,data) ); % callback for help button on bottom of listbox on left
set(gui.uniformYield,'Callback', @(x,y,a,b) onRadioButtonSelection(x,y,gui,data) ); % callback for help button on bottom of listbox on left

%% Tab 6
set(gui.energyInMethaneMin,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.methaneInBiogasMin, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.chpElectricityEfficiencyMin, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.chpHeatEfficiencyMin,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.chpOverallInefficiencyMin,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.parasiticLoadElectricityMin, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.parasiticLoadHeatMin, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.DowntimeMin,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );

set(gui.energyInMethaneModal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.methaneInBiogasModal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.chpElectricityEfficiencyModal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.chpHeatEfficiencyModal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.chpOverallInefficiencyModal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.parasiticLoadElectricityModal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.parasiticLoadHeatModal, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.DowntimeModal,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );

set(gui.energyInMethaneMax,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.methaneInBiogasMax, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.chpElectricityEfficiencyMax, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.chpHeatEfficiencyMax,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.chpOverallInefficiencyMax,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );
set(gui.parasiticLoadElectricityMax, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.parasiticLoadHeatMax, 'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui));
set(gui.DowntimeMax,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );


set(gui.editRetentionPeriod,'Callback', @(x,y,a,b) onEditBoxChange(x,y,gui) );


%
set(gui.triangularEnergyConversionTab,'Callback', @(x,y,a,b) onRadioButtonSelection(x,y,gui));
set(gui.uniformEnergyConversionTab,'Callback', @(x,y,a,b) onRadioButtonSelection(x,y,gui) );

end
