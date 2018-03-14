function gui = onEditBoxChange(src,~,gui)
%% User entry control: non-numbers, empties and string entries
% Reset edit box to previous value if user sets it to empty
if isempty(get(src,'String'))
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Invalid Value: You have not entered a number. Please enter a non-negative number. The previous value in the box has been restored.','Error','Warn','modal'));
end

% Reset edit box to previous number if user sets it to non-number
if isnan(str2double(get(src,'String')))
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Invalid Value: You have entered a non-number. Please enter a non-negative number. The previous value in the box has been restored.','Error','Warn','modal'));
end

% Reset edit box to previous number if user sets it to negative
if str2double(get(src,'String')) < 0.00
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Invalid Value: You have entered a negative number. Please enter a non-negative number. The previous value in the box has been restored.','Error','Warn','modal'));
end

%% User entry control: check for inconsistent entries
checkTriangularUniformEntryConsistency(src,gui);

%% User entry control: round up for integer entries
if strcmpi(get(src,'Tag'),'editProjectHorizon') && rem(str2double((get(src,'String'))),1) ~= 0
    set(src,'String',num2str(round(str2double((get(src,'String')))),'%6.2f'));
    uiwait(msgbox('Project lifetime must be an integer. The number you have entered has been rounded to the nearest integer.','Error','Warn','modal'));
end

if strcmpi(get(src,'Tag'),'editNumSimulationCases') && rem(str2double((get(src,'String'))),1) ~= 0
    set(src,'String',num2str(round(str2double((get(src,'String')))),'%6.2f'));
    uiwait(msgbox('Number of cases must be an integer. The number you have entered has been rounded to the nearest integer.','Error','Warn','modal'));
end

if strcmpi(get(src,'Tag'),'editStochasticitySeed') && rem(str2double((get(src,'String'))),1) ~= 0
    set(src,'String',num2str(round(str2double((get(src,'String')))),'%6.2f'));
    uiwait(msgbox('The seed has to be an integer. The number you have entered has been rounded to the nearest integer.','Error','Warn','modal'));
end

if strcmpi(get(src,'Tag'),'editBuildingDepreciationPeriod') && rem(str2double((get(src,'String'))),1) ~= 0
    set(src,'String',num2str(round(str2double((get(src,'String')))),'%6.2f'));
    uiwait(msgbox('Building depreciation period has to be an integer. The number you have entered has been rounded to the nearest integer.','Error','Warn','modal'));
end

if strcmpi(get(src,'Tag'),'editMachineryDepreciationPeriod') && rem(str2double((get(src,'String'))),1) ~= 0
    set(src,'String',num2str(round(str2double((get(src,'String')))),'%6.2f'));
    uiwait(msgbox('Machinery depreciation period has to be an integer. The number you have entered has been rounded to the nearest integer.','Error','Warn','modal'));
end

if strcmpi(get(src,'Tag'),'editDebtRepaymentTerm') && rem(str2double((get(src,'String'))),1) ~= 0
    set(src,'String',num2str(round(str2double((get(src,'String')))),'%6.2f'));
    uiwait(msgbox('Debt repayment term has to be an integer. The number you have entered has been rounded to the nearest integer.','Error','Warn','modal'));
end

%% User entry control: Other
% Re-set project lifetime to 5.00 years if user specifies it to be less than
% 5 years. Hence the minimum project lifetime is 5.00 years
if ((strcmpi(get(src,'Tag'),'editProjectHorizon') && str2double(get(src,'String')) < 5)) || ((strcmpi(get(src,'Tag'),'editProjectHorizon') && str2double(get(src,'String')) > 20))
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Project lifetime must be more than or equal to 5 years and less than or equal to 20 years. Please enter a number more than or equal to 5 and less than or equal to 20. The maximum of 20 years has been imposed because Feed-in-tariff (FIT) and Renewable heat incentive (RHI) payments are awarded for up to a maximum of 20 years only. The previous value in the box has been restored.','Error','Warn','modal'));
end

% Re-set number of trials if user specifies it to be less than
% 10 trials. Hence the minimum number of trials is 10
if (strcmpi(get(src,'Tag'),'editNumSimulationCases') && str2double(get(src,'String')) < 10) || (strcmpi(get(src,'Tag'),'editNumSimulationCases') && str2double(get(src,'String')) > 10000)
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
%     uiwait(msgbox('Number of cases must be at least 10 and less than or equal to 10,000. Please enter a number more than or equal to 10 and less than or equal to 10,000. The previous value in the box has been restored.','Error','Warn','modal'));
    uiwait(msgbox('Number of cases to simulate have been restricted to between 10 and 10000 only. Please enter a number more than or equal to 10 and less than or equal to 10000. The previous value in the box has been restored.','Error','Warn','modal'));
end

% Re-set retention period to previous value if user specifies it to be more than 365.
if strcmpi(get(src,'Tag'),'retentionPeriod') && str2double(get(src,'String')) > 365
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Retention period must be less than 365. Please correct your entry. The previous value in the box has been restored.','Error','Warn','modal'));
end

% Reset building depreciation duration to at most the duration of the
% project lifetime. Depreciation duration cannot be more than project
% duration
if str2double(get(gui.editBuildingDepreciationPeriod,'String')) > str2double(get(gui.editProjectHorizon,'String'))
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: "Building depreciation period" must not be greater than "Project lifetime". Please reduce "Building depreciation period" in tab "Costs summary", or increase "Project lifetime" in tab "Cases/Lifetime/Seed". The previous value in the box has been restored.','Error','Warn','modal'));
end

% Reset machinery depreciation duration to at most the duration of the
% project lifetime. Depreciation duration cannot be more than project
% duration
if str2double(get(gui.editMachineryDepreciationPeriod,'String')) > str2double(get(gui.editProjectHorizon,'String'))
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: "Machinery depreciation period" must not be greater than "Project lifetime". Please reduce "Machinery depreciation period" in tab "Costs summary", or increase "Project lifetime" in tab "Cases/Lifetime/Seed". The previous value in the box has been restored.','Error','Warn','modal'));
end

% Reset debt repayment duration to at most the duration of the
% project lifetime. Depreciation duration cannot be more than project
% duration
if str2double(get(gui.editDebtRepaymentTerm,'String')) > str2double(get(gui.editProjectHorizon,'String'))
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: "Debt repayemnt term" must not be greater than "Project lifetime". Please reduce "Debt repayment term" in tab "Costs summary", or increase "Project lifetime" in tab "Cases/Lifetime/Seed". The previous value in the box has been restored.','Error','Warn','modal'));
end

% Division by 0 checks
if str2double(get(gui.editBuildingDepreciationPeriod,'String')) < 1
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: "Building depreciation period" cannot be 0 as this would cause a mathematical error in some formulae (i.e. division by 0). The previous value in the box has been restored.','Error','Warn','modal'));
end

% Division by 0 checks
if str2double(get(gui.editMachineryDepreciationPeriod,'String')) < 1
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: "Machinery depreciation period" cannot be 0 as this would cause a mathematical error in some formulae (i.e. division by 0). The previous value in the box has been restored.','Error','Warn','modal'));
end

% Division by checks
if str2double(get(gui.editDebtRepaymentTerm,'String')) < 1
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: "Debt repayemnt term" cannot be 0 as this would cause a mathematical error in some formulae (i.e. division by 0). The previous value in the box has been restored.','Error','Warn','modal'));
end


% Interest rate
if str2double(get(gui.editInterestRate,'String')) < 0.01 || str2double(get(gui.editInterestRate,'String')) > 100
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: Interest rate for debt must be greater than or equal to 0.01 and less than or equal to 100. The minimum restriction of 0.01 is to avoid a Math error in the formula for calculating repayments of project debts. The previous value in the box has been restored.','Error','Warn','modal'));
end

% Inflation rate
if str2double(get(gui.editInflationRate,'String')) < 0.00 || str2double(get(gui.editInflationRate,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.editDiscountRate,'String')) < 0.00 || str2double(get(gui.editDiscountRate,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.editTaxRate,'String')) < 0.00 || str2double(get(gui.editTaxRate,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.editDebtRatio,'String')) < 0.00 || str2double(get(gui.editDebtRatio,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.energyInMethaneMin,'String')) < 0.00 || str2double(get(gui.energyInMethaneMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.methaneInBiogasMin,'String')) < 0.00 || str2double(get(gui.methaneInBiogasMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpElectricityEfficiencyMin,'String')) < 0.00 || str2double(get(gui.chpElectricityEfficiencyMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpHeatEfficiencyMin,'String')) < 0.00 || str2double(get(gui.chpHeatEfficiencyMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpOverallInefficiencyMin,'String')) < 0.00 || str2double(get(gui.chpOverallInefficiencyMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.parasiticLoadElectricityMin,'String')) < 0.00 || str2double(get(gui.parasiticLoadElectricityMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.parasiticLoadHeatMin,'String')) < 0.00 || str2double(get(gui.parasiticLoadHeatMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.DowntimeMin,'String')) < 0.00 || str2double(get(gui.DowntimeMin,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.energyInMethaneModal,'String')) < 0.00 || str2double(get(gui.energyInMethaneModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.methaneInBiogasModal,'String')) < 0.00 || str2double(get(gui.methaneInBiogasModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpElectricityEfficiencyModal,'String')) < 0.00 || str2double(get(gui.chpElectricityEfficiencyModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpHeatEfficiencyModal,'String')) < 0.00 || str2double(get(gui.chpHeatEfficiencyModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpOverallInefficiencyModal,'String')) < 0.00 || str2double(get(gui.chpOverallInefficiencyModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.parasiticLoadElectricityModal,'String')) < 0.00 || str2double(get(gui.parasiticLoadElectricityModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.parasiticLoadHeatModal,'String')) < 0.00 || str2double(get(gui.parasiticLoadHeatModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.DowntimeModal,'String')) < 0.00 || str2double(get(gui.DowntimeModal,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.energyInMethaneMax,'String')) < 0.00 || str2double(get(gui.energyInMethaneMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.methaneInBiogasMax,'String')) < 0.00 || str2double(get(gui.methaneInBiogasMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpElectricityEfficiencyMax,'String')) < 0.00 || str2double(get(gui.chpElectricityEfficiencyMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpHeatEfficiencyMax,'String')) < 0.00 || str2double(get(gui.chpHeatEfficiencyMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.chpOverallInefficiencyMax,'String')) < 0.00 || str2double(get(gui.chpOverallInefficiencyMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.parasiticLoadElectricityMax,'String')) < 0.00 || str2double(get(gui.parasiticLoadElectricityMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.parasiticLoadHeatMax,'String')) < 0.00 || str2double(get(gui.parasiticLoadHeatMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.DowntimeMax,'String')) < 0.00 || str2double(get(gui.DowntimeMax,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.editFinanceRate,'String')) < 0.00 || str2double(get(gui.editFinanceRate,'String')) > 100
    checkPercentage(src)
elseif str2double(get(gui.editReinvestmentRate,'String')) < 0.00 || str2double(get(gui.editReinvestmentRate,'String')) > 100
    checkPercentage(src)  
end


%% update decimal places
set(src,'String',num2str(sprintf('%6.2f', str2double(get(src,'String')))));


%% Calculate total building cost
gui.totalBuildingCost = num2str(...
    str2double(get(gui.editADDigesterCost,'String')) + ...
    str2double(get(gui.editSeparatorCost,'String')) + ...
    str2double(get(gui.editFeedstockStorageCost,'String')) + ...
    str2double(get(gui.editDigestateStorageCost,'String')) + ...
    str2double(get(gui.editGridConnectionCost,'String')) + ...
    str2double(get(gui.editStartBackupBoilerCost,'String')) + ...
    str2double(get(gui.editWaterConnectionCost,'String')) + ...
    str2double(get(gui.editGroundworksCost,'String')) + ...
    str2double(get(gui.editReceptionBuildingCost,'String')) + ...
    str2double(get(gui.editSilageClampCost,'String')) + ...
    str2double(get(gui.editWeighbridgeCost,'String')) + ...
    str2double(get(gui.editGreaseTrapCost,'String')) + ...
    str2double(get(gui.editWheelWashCost,'String')) + ...
    str2double(get(gui.editRoadwaysCost,'String')) + ...
    str2double(get(gui.editDistrictHeatingCost,'String')) + ...
    str2double(get(gui.editMixingPitCost,'String')) + ...
    str2double(get(gui.editNoiseReductionCost,'String')) + ...
    str2double(get(gui.editProjectDevelopmentCost,'String')) + ...
    str2double(get(gui.editProfessionalCost,'String')) + ...
    str2double(get(gui.editOtherBuildingCost,'String')) - ...
    str2double(get(gui.editGrantAssistanceBuilding,'String'))...
    );

% Calculate total machinery cost
gui.totalMachineryCost = num2str(...
    str2double(get(gui.editCHPGeneratorCost,'String')) + ...
    str2double(get(gui.editCablesAndPipesCost,'String')) + ...
    str2double(get(gui.editHeatExchangerCost,'String')) + ...
    str2double(get(gui.editBiogasScrubberCost,'String')) + ...
    str2double(get(gui.editFencingCost,'String')) + ...
    str2double(get(gui.editDepackagingCost,'String')) + ...
    str2double(get(gui.editCleaningTechnologyCost,'String')) + ...
    str2double(get(gui.editDegritterCost,'String')) + ...
    str2double(get(gui.editOdourManagementCost,'String')) + ...
    str2double(get(gui.editFrontEndLoaderCost,'String')) + ...
    str2double(get(gui.editPumpsCost,'String')) + ...
    str2double(get(gui.editShredderCost,'String')) + ...
    str2double(get(gui.editPasteuriserCost,'String')) + ...
    str2double(get(gui.editOtherMachinerCost,'String')) - ...
    str2double(get(gui.editGrantAssistanceMachinery,'String'))...
    );

% Calculate annual operating expenditure
gui.totalOperationsCost = num2str(...
    str2double(get(gui.editLabourCost,'String')) + ...
    str2double(get(gui.editRegularCasualCost,'String')) + ...
    str2double(get(gui.editManagementCost,'String')) + ...
    str2double(get(gui.editGeneralInsuranceCost,'String')) + ...
    str2double(get(gui.editTransportCost,'String')) + ...
    str2double(get(gui.editWaterCost,'String')) + ...
    str2double(get(gui.editAssurancesCost,'String')) + ...
    str2double(get(gui.editProfessionalFeesCost,'String')) + ...
    str2double(get(gui.editTestingFeesCost,'String')) + ...
    str2double(get(gui.editOfficeAndTelephoneCost,'String')) + ...
    str2double(get(gui.editMiscellaneousCost,'String')) + ...
    str2double(get(gui.editRentCost,'String'))...
    );

% Total capital cost
gui.overallCapitalCost = num2str(...
    str2double(gui.totalBuildingCost)+...
    str2double(gui.totalMachineryCost)...
    );

% Total debt
gui.totalDebt = num2str(...
    (str2double(get(gui.editDebtRatio,'String'))/100) * str2double(gui.overallCapitalCost)...
    );

% Calculate interest and principal finance cost
gui.debtFinanceCost = num2str(...
    ((str2double(get(gui.editInterestRate,'String'))/100).*str2double(gui.totalDebt))./...
    (1-(1+(str2double(get(gui.editInterestRate,'String'))/100))^-str2double(get(gui.editDebtRepaymentTerm,'String')))...
    );

% Calculate depreciations
gui.annualBuildingDepreciation = num2str(str2double(gui.totalBuildingCost)./str2double(get(gui.editBuildingDepreciationPeriod,'String')));
gui.annualMachineryDepreciation = num2str(str2double(gui.totalMachineryCost)./str2double(get(gui.editMachineryDepreciationPeriod,'String')));
gui
% see tab 'Capital'
set( gui.editTotalBuildingCost, 'String', num2str(sprintf('%6.2f', str2double(gui.totalBuildingCost))));
setappdata(gui.editBuildingDepreciationPeriod,'annualDepreciation',gui.annualBuildingDepreciation)
set( gui.editTotalMachineryCost, 'String', num2str(sprintf('%6.2f', str2double(gui.totalMachineryCost))));
setappdata(gui.editMachineryDepreciationPeriod,'annualDepreciation',gui.annualMachineryDepreciation)
set( gui.txtOperationsCost, 'String', num2str(sprintf('%6.2f', str2double(gui.totalOperationsCost))));

% Update notes and summaries that are based on changes in edit boxes
set( gui.txtSummaryStatement1, 'String', sprintf( 'Overall capital cost is £ %6.2f with building and machinery costs (including replacements) being £ %6.2f and £ %6.2f respectively over % 3.1f years.', [str2double(gui.overallCapitalCost) str2double(get(gui.editTotalBuildingCost,'String')) str2double(get(gui.editTotalMachineryCost,'String')) str2double(get(gui.editProjectHorizon,'String'))]));
set( gui.txtSummaryStatement2, 'String', sprintf( 'Annual depreciation cost for building is £ %6.2f over the first % 3.1f years. Annual depreciation cost for machinery is £ %6.2f over the first % 3.1f years.', [str2double(gui.annualBuildingDepreciation) str2double(get(gui.editBuildingDepreciationPeriod,'String')) str2double(gui.annualMachineryDepreciation) str2double(get(gui.editMachineryDepreciationPeriod,'String'))]));
set( gui.txtSummaryStatement3, 'String', sprintf( 'Total amount of debt is £ %6.2f to be repaid at £ %6.2f annually (i.e. principal and interest inclusive) over %3.1f years.',[str2double(gui.totalDebt) str2double(gui.debtFinanceCost) str2double(get(gui.editDebtRepaymentTerm,'String'))]));

%%
%%
[genFIT,expFIT,Heat_WholeSale_Price,RHI,mirrFinanceRate,mirrReinvestmentRate,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,...
    tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,...
    discountFactor,totalCapitalInvestment,numberMonteCarloScenarios,projectLifetime,annualOpex,loanRepaymentSchedule] = aaa_getCalculatedParameters(gui);

s1 = sprintf(['The total overhead cost of  £ %6.2f in tab "Costs" is the first year total overhead cost only. This total will be inflated annually',...
    ' at the specified inflation rate, which you have currently entered as %6.2f percent (see tab "Prices and rates") over the project lifetime',...
    ' which you have currently entered as %6.2f years (see tab "Cases/Lifetime/Seed"). Hence the total overhead cost in the final year is £ %6.2f as shown by the blue line. \nNote that',...
    ' annual operations costs (red) are the sum of annual overhead costs (blue), annual loan repayment costs (black) and the annual costs of depreciation (green and yellow).'],...
    [str2double(get(gui.txtOperationsCost,'String')) str2double(get(gui.editInflationRate,'String')) str2double(get(gui.editProjectHorizon,'String'))...
    annualOpex(1,end)]);
set(gui.notesOther,'String',s1);

s2 = sprintf(['RED: Annual operations cost. \n\nBLUE: Annual overhead costs. \n\nBLACK: Annual loan repayment cost. \n\nGREEN: Annual building depreciation cost. \n\nYELLOW: Annual machinery depreciation cost.']);
set(gui.notesLegend,'String',s2);

scale = 1000;
cla(gui.overheadCostGrph);
x=1:projectLifetime;
plot(gui.overheadCostGrph,x,annualOpex(1,:)/scale,'-b',x,loanRepaymentSchedule(1,:)/scale,'-k',...
    x,DepreciationBuildingSchedule(1,:)/scale,'-g',x,DepreciationMachinerySchedule(1,:)/scale,'-y',x,annualCost(1,:)/scale,'-r'); grid(gui.overheadCostGrph,'on');
% ylim(gui.overheadCostGrph,[-10 (max(annualCost(1,:)/scale))+10])
xlim(gui.overheadCostGrph,[0.5 projectLifetime+0.5])
set(gui.overheadCostGrph,'xtick',[1:projectLifetime],'xticklabel',[1:projectLifetime]);

xlabel(gui.overheadCostGrph,'Year');
ylabel(gui.overheadCostGrph,'Costs, £ ,000');


%% Update structure
setappdata(src,'prevValue',str2double(get(src,'String')));

end