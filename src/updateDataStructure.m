function gui = updateDataStructure(gui)

%% Tab 1
setappdata(gui.editProjectHorizon,'prevValue',str2double(get(gui.editProjectHorizon,'String')));
setappdata(gui.editNumSimulationCases,'prevValue',str2double(get(gui.editNumSimulationCases,'String')));
setappdata(gui.stochasticitySeed,'prevValue',str2double(get(gui.stochasticitySeed,'String')));


%% Tab 2
% Building
setappdata(gui.editADDigesterCost,'prevValue',str2double(get(gui.editADDigesterCost,'String')));
setappdata(gui.editSeparatorCost,'prevValue',str2double(get(gui.editSeparatorCost,'String')));
setappdata(gui.editFeedstockStorageCost,'prevValue',str2double(get(gui.editFeedstockStorageCost,'String')));
setappdata(gui.editDigestateStorageCost,'prevValue',str2double(get(gui.editDigestateStorageCost,'String')));
setappdata(gui.editGridConnectionCost,'prevValue',str2double(get(gui.editGridConnectionCost,'String')));
setappdata(gui.editStartBackupBoilerCost,'prevValue',str2double(get(gui.editStartBackupBoilerCost,'String')));
setappdata(gui.editWaterConnectionCost,'prevValue',str2double(get(gui.editWaterConnectionCost,'String')));
setappdata(gui.editGroundworksCost,'prevValue',str2double(get(gui.editGroundworksCost,'String')));
setappdata(gui.editReceptionBuildingCost,'prevValue',str2double(get(gui.editReceptionBuildingCost,'String')));
setappdata(gui.editSilageClampCost,'prevValue',str2double(get(gui.editSilageClampCost,'String')));
setappdata(gui.editWeighbridgeCost,'prevValue',str2double(get(gui.editWeighbridgeCost,'String')));
setappdata(gui.editGreaseTrapCost,'prevValue',str2double(get(gui.editGreaseTrapCost,'String')));
setappdata(gui.editWheelWashCost,'prevValue',str2double(get(gui.editWheelWashCost,'String')));
setappdata(gui.editRoadwaysCost,'prevValue',str2double(get(gui.editRoadwaysCost,'String')));
setappdata(gui.editDistrictHeatingCost,'prevValue',str2double(get(gui.editDistrictHeatingCost,'String')));
setappdata(gui.editMixingPitCost,'prevValue',str2double(get(gui.editMixingPitCost,'String')));
setappdata(gui.editNoiseReductionCost,'prevValue',str2double(get(gui.editNoiseReductionCost,'String')));
setappdata(gui.editProjectDevelopmentCost,'prevValue',str2double(get(gui.editProjectDevelopmentCost,'String')));
setappdata(gui.editProfessionalCost,'prevValue',str2double(get(gui.editProfessionalCost,'String')));
setappdata(gui.editOtherBuildingCost,'prevValue',str2double(get(gui.editOtherBuildingCost,'String')));
setappdata(gui.editGrantAssistanceBuilding,'prevValue',str2double(get(gui.editGrantAssistanceBuilding,'String')));

% Machinery
setappdata(gui.editCHPGeneratorCost,'prevValue',str2double(get(gui.editCHPGeneratorCost,'String')));
setappdata(gui.editCablesAndPipesCost,'prevValue',str2double(get(gui.editCablesAndPipesCost,'String')));
setappdata(gui.editHeatExchangerCost,'prevValue',str2double(get(gui.editHeatExchangerCost,'String')));
setappdata(gui.editBiogasScrubberCost,'prevValue',str2double(get(gui.editBiogasScrubberCost,'String')));
setappdata(gui.editFencingCost,'prevValue',str2double(get(gui.editFencingCost,'String')));
setappdata(gui.editDepackagingCost,'prevValue',str2double(get(gui.editDepackagingCost,'String')));
setappdata(gui.editCleaningTechnologyCost,'prevValue',str2double(get(gui.editCleaningTechnologyCost,'String')));
setappdata(gui.editDegritterCost,'prevValue',str2double(get(gui.editDegritterCost,'String')));
setappdata(gui.editOdourManagementCost,'prevValue',str2double(get(gui.editOdourManagementCost,'String')));
setappdata(gui.editFrontEndLoaderCost,'prevValue',str2double(get(gui.editFrontEndLoaderCost,'String')));
setappdata(gui.editPumpsCost,'prevValue',str2double(get(gui.editPumpsCost,'String')));
setappdata(gui.editShredderCost,'prevValue',str2double(get(gui.editShredderCost,'String')));
setappdata(gui.editPasteuriserCost,'prevValue',str2double(get(gui.editPasteuriserCost,'String')));
setappdata(gui.editOtherMachinerCost,'prevValue',str2double(get(gui.editOtherMachinerCost,'String')));
setappdata(gui.editGrantAssistanceMachinery,'prevValue',str2double(get(gui.editGrantAssistanceMachinery,'String')));

% Overhead
setappdata(gui.editLabourCost,'prevValue',str2double(get(gui.editLabourCost,'String')));
setappdata(gui.editRegularCasualCost,'prevValue',str2double(get(gui.editRegularCasualCost,'String')));
setappdata(gui.editManagementCost,'prevValue',str2double(get(gui.editManagementCost,'String')));
setappdata(gui.editGeneralInsuranceCost,'prevValue',str2double(get(gui.editGeneralInsuranceCost,'String')));
setappdata(gui.editTransportCost,'prevValue',str2double(get(gui.editTransportCost,'String')));
setappdata(gui.editWaterCost,'prevValue',str2double(get(gui.editWaterCost,'String')));
setappdata(gui.editAssurancesCost,'prevValue',str2double(get(gui.editAssurancesCost,'String')));
setappdata(gui.editProfessionalFeesCost,'prevValue',str2double(get(gui.editProfessionalFeesCost,'String')));
setappdata(gui.editTestingFeesCost,'prevValue',str2double(get(gui.editTestingFeesCost,'String')));
setappdata(gui.editOfficeAndTelephoneCost,'prevValue',str2double(get(gui.editOfficeAndTelephoneCost,'String')));
setappdata(gui.editMiscellaneousCost,'prevValue',str2double(get(gui.editMiscellaneousCost,'String')));
setappdata(gui.editRentCost,'prevValue',str2double(get(gui.editRentCost,'String')));

%% Tab 3
setappdata(gui.editBuildingDepreciationPeriod,'prevValue',str2double(get(gui.editBuildingDepreciationPeriod,'String')));
setappdata(gui.editMachineryDepreciationPeriod,'prevValue',str2double(get(gui.editMachineryDepreciationPeriod,'String')));
setappdata(gui.editDebtRatio,'prevValue',str2double(get(gui.editDebtRatio,'String')));
setappdata(gui.editDebtRepaymentTerm,'prevValue',str2double(get(gui.editDebtRepaymentTerm,'String')));


%% Tab 4
setappdata(gui.genFIT,'prevValue',str2double(get(gui.genFIT,'String')));
setappdata(gui.expFIT,'prevValue',str2double(get(gui.expFIT,'String')));
setappdata(gui.RHI,'prevValue',str2double(get(gui.RHI,'String')));
setappdata(gui.heatPrice,'prevValue',str2double(get(gui.heatPrice,'String')));

setappdata(gui.editInterestRate,'prevValue',str2double(get(gui.editInterestRate,'String')));
setappdata(gui.editInflationRate,'prevValue',str2double(get(gui.editInflationRate,'String')));
setappdata(gui.editDiscountRate,'prevValue',str2double(get(gui.editDiscountRate,'String')));
setappdata(gui.editTaxRate,'prevValue',str2double(get(gui.editTaxRate,'String')));
setappdata(gui.editFinanceRate,'prevValue',str2double(get(gui.editFinanceRate,'String')));
setappdata(gui.editReinvestmentRate,'prevValue',str2double(get(gui.editReinvestmentRate,'String')));


%% Tab 5
% Quantity
setappdata(gui.editAnmlFeed1Min,'prevValue',str2double(get(gui.editAnmlFeed1Min,'String')));
setappdata(gui.editAnmlFeed2Min,'prevValue',str2double(get(gui.editAnmlFeed2Min,'String')));
setappdata(gui.editAnmlFeed3Min,'prevValue',str2double(get(gui.editAnmlFeed3Min,'String')));
setappdata(gui.editAnmlFeed4Min,'prevValue',str2double(get(gui.editAnmlFeed4Min,'String')));
setappdata(gui.editAnmlFeed5Min,'prevValue',str2double(get(gui.editAnmlFeed5Min,'String')));

setappdata(gui.editAnmlFeed1Modal,'prevValue',str2double(get(gui.editAnmlFeed1Modal,'String')));
setappdata(gui.editAnmlFeed2Modal,'prevValue',str2double(get(gui.editAnmlFeed2Modal,'String')));
setappdata(gui.editAnmlFeed3Modal,'prevValue',str2double(get(gui.editAnmlFeed3Modal,'String')));
setappdata(gui.editAnmlFeed4Modal,'prevValue',str2double(get(gui.editAnmlFeed4Modal,'String')));
setappdata(gui.editAnmlFeed5Modal,'prevValue',str2double(get(gui.editAnmlFeed5Modal,'String')));

setappdata(gui.editAnmlFeed1Max,'prevValue',str2double(get(gui.editAnmlFeed1Max,'String')));
setappdata(gui.editAnmlFeed2Max,'prevValue',str2double(get(gui.editAnmlFeed2Max,'String')));
setappdata(gui.editAnmlFeed3Max,'prevValue',str2double(get(gui.editAnmlFeed3Max,'String')));
setappdata(gui.editAnmlFeed4Max,'prevValue',str2double(get(gui.editAnmlFeed4Max,'String')));
setappdata(gui.editAnmlFeed5Max,'prevValue',str2double(get(gui.editAnmlFeed5Max,'String')));

% Energy crop
setappdata(gui.editEngyCropFeed1Min,'prevValue',str2double(get(gui.editEngyCropFeed1Min,'String')));
setappdata(gui.editEngyCropFeed2Min,'prevValue',str2double(get(gui.editEngyCropFeed2Min,'String')));
setappdata(gui.editEngyCropFeed3Min,'prevValue',str2double(get(gui.editEngyCropFeed3Min,'String')));
setappdata(gui.editEngyCropFeed4Min,'prevValue',str2double(get(gui.editEngyCropFeed4Min,'String')));
setappdata(gui.editEngyCropFeed5Min,'prevValue',str2double(get(gui.editEngyCropFeed5Min,'String')));

setappdata(gui.editEngyCropFeed1Modal,'prevValue',str2double(get(gui.editEngyCropFeed1Modal,'String')));
setappdata(gui.editEngyCropFeed2Modal,'prevValue',str2double(get(gui.editEngyCropFeed2Modal,'String')));
setappdata(gui.editEngyCropFeed3Modal,'prevValue',str2double(get(gui.editEngyCropFeed3Modal,'String')));
setappdata(gui.editEngyCropFeed4Modal,'prevValue',str2double(get(gui.editEngyCropFeed4Modal,'String')));
setappdata(gui.editEngyCropFeed5Modal,'prevValue',str2double(get(gui.editEngyCropFeed5Modal,'String')));

setappdata(gui.editEngyCropFeed1Max,'prevValue',str2double(get(gui.editEngyCropFeed1Max,'String')));
setappdata(gui.editEngyCropFeed2Max,'prevValue',str2double(get(gui.editEngyCropFeed2Max,'String')));
setappdata(gui.editEngyCropFeed3Max,'prevValue',str2double(get(gui.editEngyCropFeed3Max,'String')));
setappdata(gui.editEngyCropFeed4Max,'prevValue',str2double(get(gui.editEngyCropFeed4Max,'String')));
setappdata(gui.editEngyCropFeed5Max,'prevValue',str2double(get(gui.editEngyCropFeed5Max,'String')));

% Other
setappdata(gui.editOtherFeed1Min,'prevValue',str2double(get(gui.editOtherFeed1Min,'String')));
setappdata(gui.editOtherFeed2Min,'prevValue',str2double(get(gui.editOtherFeed2Min,'String')));
setappdata(gui.editOtherFeed3Min,'prevValue',str2double(get(gui.editOtherFeed3Min,'String')));
setappdata(gui.editOtherFeed4Min,'prevValue',str2double(get(gui.editOtherFeed4Min,'String')));
setappdata(gui.editOtherFeed5Min,'prevValue',str2double(get(gui.editOtherFeed5Min,'String')));

setappdata(gui.editOtherFeed1Modal,'prevValue',str2double(get(gui.editOtherFeed1Modal,'String')));
setappdata(gui.editOtherFeed2Modal,'prevValue',str2double(get(gui.editOtherFeed2Modal,'String')));
setappdata(gui.editOtherFeed3Modal,'prevValue',str2double(get(gui.editOtherFeed3Modal,'String')));
setappdata(gui.editOtherFeed4Modal,'prevValue',str2double(get(gui.editOtherFeed4Modal,'String')));
setappdata(gui.editOtherFeed5Modal,'prevValue',str2double(get(gui.editOtherFeed5Modal,'String')));

setappdata(gui.editOtherFeed1Max,'prevValue',str2double(get(gui.editOtherFeed1Max,'String')));
setappdata(gui.editOtherFeed2Max,'prevValue',str2double(get(gui.editOtherFeed2Max,'String')));
setappdata(gui.editOtherFeed3Max,'prevValue',str2double(get(gui.editOtherFeed3Max,'String')));
setappdata(gui.editOtherFeed4Max,'prevValue',str2double(get(gui.editOtherFeed4Max,'String')));
setappdata(gui.editOtherFeed5Max,'prevValue',str2double(get(gui.editOtherFeed5Max,'String')));


% Yield
setappdata(gui.editAnmlYield1Min,'prevValue',str2double(get(gui.editAnmlYield1Min,'String')));
setappdata(gui.editAnmlYield2Min,'prevValue',str2double(get(gui.editAnmlYield2Min,'String')));
setappdata(gui.editAnmlYield3Min,'prevValue',str2double(get(gui.editAnmlYield3Min,'String')));
setappdata(gui.editAnmlYield4Min,'prevValue',str2double(get(gui.editAnmlYield4Min,'String')));
setappdata(gui.editAnmlYield5Min,'prevValue',str2double(get(gui.editAnmlYield5Min,'String')));

setappdata(gui.editAnmlYield1Modal,'prevValue',str2double(get(gui.editAnmlYield1Modal,'String')));
setappdata(gui.editAnmlYield2Modal,'prevValue',str2double(get(gui.editAnmlYield2Modal,'String')));
setappdata(gui.editAnmlYield3Modal,'prevValue',str2double(get(gui.editAnmlYield3Modal,'String')));
setappdata(gui.editAnmlYield4Modal,'prevValue',str2double(get(gui.editAnmlYield4Modal,'String')));
setappdata(gui.editAnmlYield5Modal,'prevValue',str2double(get(gui.editAnmlYield5Modal,'String')));

setappdata(gui.editAnmlYield1Max,'prevValue',str2double(get(gui.editAnmlYield1Max,'String')));
setappdata(gui.editAnmlYield2Max,'prevValue',str2double(get(gui.editAnmlYield2Max,'String')));
setappdata(gui.editAnmlYield3Max,'prevValue',str2double(get(gui.editAnmlYield3Max,'String')));
setappdata(gui.editAnmlYield4Max,'prevValue',str2double(get(gui.editAnmlYield4Max,'String')));
setappdata(gui.editAnmlYield5Max,'prevValue',str2double(get(gui.editAnmlYield5Max,'String')));

% Energy crop
setappdata(gui.editEngyCropYield1Min,'prevValue',str2double(get(gui.editEngyCropYield1Min,'String')));
setappdata(gui.editEngyCropYield2Min,'prevValue',str2double(get(gui.editEngyCropYield2Min,'String')));
setappdata(gui.editEngyCropYield3Min,'prevValue',str2double(get(gui.editEngyCropYield3Min,'String')));
setappdata(gui.editEngyCropYield4Min,'prevValue',str2double(get(gui.editEngyCropYield4Min,'String')));
setappdata(gui.editEngyCropYield5Min,'prevValue',str2double(get(gui.editEngyCropYield5Min,'String')));

setappdata(gui.editEngyCropYield1Modal,'prevValue',str2double(get(gui.editEngyCropYield1Modal,'String')));
setappdata(gui.editEngyCropYield2Modal,'prevValue',str2double(get(gui.editEngyCropYield2Modal,'String')));
setappdata(gui.editEngyCropYield3Modal,'prevValue',str2double(get(gui.editEngyCropYield3Modal,'String')));
setappdata(gui.editEngyCropYield4Modal,'prevValue',str2double(get(gui.editEngyCropYield4Modal,'String')));
setappdata(gui.editEngyCropYield5Modal,'prevValue',str2double(get(gui.editEngyCropYield5Modal,'String')));

setappdata(gui.editEngyCropYield1Max,'prevValue',str2double(get(gui.editEngyCropYield1Max,'String')));
setappdata(gui.editEngyCropYield2Max,'prevValue',str2double(get(gui.editEngyCropYield2Max,'String')));
setappdata(gui.editEngyCropYield3Max,'prevValue',str2double(get(gui.editEngyCropYield3Max,'String')));
setappdata(gui.editEngyCropYield4Max,'prevValue',str2double(get(gui.editEngyCropYield4Max,'String')));
setappdata(gui.editEngyCropYield5Max,'prevValue',str2double(get(gui.editEngyCropYield5Max,'String')));

% Other
setappdata(gui.editOtherYield1Min,'prevValue',str2double(get(gui.editOtherYield1Min,'String')));
setappdata(gui.editOtherYield2Min,'prevValue',str2double(get(gui.editOtherYield2Min,'String')));
setappdata(gui.editOtherYield3Min,'prevValue',str2double(get(gui.editOtherYield3Min,'String')));
setappdata(gui.editOtherYield4Min,'prevValue',str2double(get(gui.editOtherYield4Min,'String')));
setappdata(gui.editOtherYield5Min,'prevValue',str2double(get(gui.editOtherYield5Min,'String')));

setappdata(gui.editOtherYield1Modal,'prevValue',str2double(get(gui.editOtherYield1Modal,'String')));
setappdata(gui.editOtherYield2Modal,'prevValue',str2double(get(gui.editOtherYield2Modal,'String')));
setappdata(gui.editOtherYield3Modal,'prevValue',str2double(get(gui.editOtherYield3Modal,'String')));
setappdata(gui.editOtherYield4Modal,'prevValue',str2double(get(gui.editOtherYield4Modal,'String')));
setappdata(gui.editOtherYield5Modal,'prevValue',str2double(get(gui.editOtherYield5Modal,'String')));

setappdata(gui.editOtherYield1Max,'prevValue',str2double(get(gui.editOtherYield1Max,'String')));
setappdata(gui.editOtherYield2Max,'prevValue',str2double(get(gui.editOtherYield2Max,'String')));
setappdata(gui.editOtherYield3Max,'prevValue',str2double(get(gui.editOtherYield3Max,'String')));
setappdata(gui.editOtherYield4Max,'prevValue',str2double(get(gui.editOtherYield4Max,'String')));
setappdata(gui.editOtherYield5Max,'prevValue',str2double(get(gui.editOtherYield5Max,'String')));

%% Tab 6
setappdata(gui.energyInMethaneMin,'prevValue',str2double(get(gui.energyInMethaneMin,'String')));
setappdata(gui.methaneInBiogasMin,'prevValue',str2double(get(gui.methaneInBiogasMin,'String')));
setappdata(gui.chpElectricityEfficiencyMin,'prevValue',str2double(get(gui.chpElectricityEfficiencyMin,'String')));
setappdata(gui.chpHeatEfficiencyMin,'prevValue',str2double(get(gui.chpHeatEfficiencyMin,'String')));
setappdata(gui.chpOverallInefficiencyMin,'prevValue',str2double(get(gui.chpOverallInefficiencyMin,'String')));
setappdata(gui.parasiticLoadElectricityMin,'prevValue',str2double(get(gui.parasiticLoadElectricityMin,'String')));
setappdata(gui.parasiticLoadHeatMin,'prevValue',str2double(get(gui.parasiticLoadHeatMin,'String')));
setappdata(gui.DowntimeMin,'prevValue',str2double(get(gui.DowntimeMin,'String')));

setappdata(gui.energyInMethaneModal,'prevValue',str2double(get(gui.energyInMethaneModal,'String')));
setappdata(gui.methaneInBiogasModal,'prevValue',str2double(get(gui.methaneInBiogasModal,'String')));
setappdata(gui.chpElectricityEfficiencyModal,'prevValue',str2double(get(gui.chpElectricityEfficiencyModal,'String')));
setappdata(gui.chpHeatEfficiencyModal,'prevValue',str2double(get(gui.chpHeatEfficiencyModal,'String')));
setappdata(gui.chpOverallInefficiencyModal,'prevValue',str2double(get(gui.chpOverallInefficiencyModal,'String')));
setappdata(gui.parasiticLoadElectricityModal,'prevValue',str2double(get(gui.parasiticLoadElectricityModal,'String')));
setappdata(gui.parasiticLoadHeatModal,'prevValue',str2double(get(gui.parasiticLoadHeatModal,'String')));
setappdata(gui.DowntimeModal,'prevValue',str2double(get(gui.DowntimeModal,'String')));

setappdata(gui.energyInMethaneMax,'prevValue',str2double(get(gui.energyInMethaneMax,'String')));
setappdata(gui.methaneInBiogasMax,'prevValue',str2double(get(gui.methaneInBiogasMax,'String')));
setappdata(gui.chpElectricityEfficiencyMax,'prevValue',str2double(get(gui.chpElectricityEfficiencyMax,'String')));
setappdata(gui.chpHeatEfficiencyMax,'prevValue',str2double(get(gui.chpHeatEfficiencyMax,'String')));
setappdata(gui.chpOverallInefficiencyMax,'prevValue',str2double(get(gui.chpOverallInefficiencyMax,'String')));
setappdata(gui.parasiticLoadElectricityMax,'prevValue',str2double(get(gui.parasiticLoadElectricityMax,'String')));
setappdata(gui.parasiticLoadHeatMax,'prevValue',str2double(get(gui.parasiticLoadHeatMax,'String')));
setappdata(gui.DowntimeMax,'prevValue',str2double(get(gui.DowntimeMax,'String')));

setappdata(gui.editRetentionPeriod,'prevValue',str2double(get(gui.editRetentionPeriod,'String')));

setappdata(gui.dummyStorage,'totalCapacity',0);

end
