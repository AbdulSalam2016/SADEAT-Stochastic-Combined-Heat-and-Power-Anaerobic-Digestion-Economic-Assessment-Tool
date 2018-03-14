function [genFIT,expFIT,Heat_WholeSale_Price,RHI,mirrFinanceRate,mirrReinvestmentRate,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,...
    tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,...
    discountFactor,totalCapitalInvestment,numberMonteCarloScenarios,projectLifetime,annualOpex,loanRepaymentSchedule] = aaa_getCalculatedParameters(gui)
%{
  This function is called in four functions; model.m , onEditBoxChange.m,
  plotResultPart3.m and onRun.m
%}
%%
Seed = str2double(get(gui.stochasticitySeed,'String')); % retention period of feedstock
rng(Seed);

genFIT = str2double(get(gui.genFIT,'String'));
expFIT = str2double(get(gui.expFIT,'String'));

Heat_WholeSale_Price = str2double(get(gui.heatPrice,'String'));
RHI = str2double(get(gui.RHI,'String'));

feedAmountDistribution = get(gui.triangularQuantity,'Value');                       % 0 = uniform; 1 = triangular
feedYieldDistribution = get(gui.triangularYield,'Value');                           % 0 = uniform; 1 = triangular
conversionParametersDistribution = get(gui.triangularEnergyConversionTab,'Value');  % 0 = uniform; 1 = triangular  #####################

numberMonteCarloScenarios = str2double(get(gui.editNumSimulationCases,'String')); % number of Monte Carlo trials
projectLifetime = str2double(get(gui.editProjectHorizon,'String')); % lifetime of AD project
Retention_Period = str2double(get(gui.editRetentionPeriod,'String')); % retention period of feedstock  ###########

%
interest_rate_Loan = str2double(get(gui.editInterestRate,'String'))./100;
inflation_rate = str2double(get(gui.editInflationRate,'String'))./100;
discountRate = str2double(get(gui.editDiscountRate,'String'))./100;
tax_Rate = str2double(get(gui.editTaxRate,'String'))./100;

loanPercent = str2double(get(gui.editDebtRatio,'String'))./100;
loanRepaymentTerm = str2double(get(gui.editDebtRepaymentTerm,'String'));
mirrFinanceRate = str2double(get(gui.editFinanceRate,'String'))./100;
mirrReinvestmentRate= str2double(get(gui.editReinvestmentRate,'String'))./100;

%% Energy conversion
energyInMethaneMin = str2double(get(gui.energyInMethaneMin,'String'));
energyInMethaneLikely = str2double(get(gui.energyInMethaneModal,'String'));
energyInMethaneMax = str2double(get(gui.energyInMethaneMax,'String'));

Estimated_Biogas_Methane_ContentMin = str2double(get(gui.methaneInBiogasMin,'String'))./100;
Estimated_Biogas_Methane_ContentLikely = str2double(get(gui.methaneInBiogasModal,'String'))./100;
Estimated_Biogas_Methane_ContentMax = str2double(get(gui.methaneInBiogasMax,'String'))./100;

CHP_Electricity_EfficiencyMin = str2double(get(gui.chpElectricityEfficiencyMin,'String'))./100;
CHP_Electricity_EfficiencyLikely = str2double(get(gui.chpElectricityEfficiencyModal,'String'))./100;
CHP_Electricity_EfficiencyMax = str2double(get(gui.chpElectricityEfficiencyMax,'String'))./100;

CHP_Heat_EfficiencyMin = str2double(get(gui.chpHeatEfficiencyMin,'String'))./100;
CHP_Heat_EfficiencyLikely = str2double(get(gui.chpHeatEfficiencyModal,'String'))./100;
CHP_Heat_EfficiencyMax = str2double(get(gui.chpHeatEfficiencyMax,'String'))./100;

CHP_Losses_InefficienciesMin = str2double(get(gui.chpOverallInefficiencyMin,'String'))./100;
CHP_Losses_InefficienciesLikely = str2double(get(gui.chpOverallInefficiencyModal,'String'))./100;
CHP_Losses_InefficienciesMax = str2double(get(gui.chpOverallInefficiencyMax,'String'))./100;

Parasitic_load_electricity_Min = str2double(get(gui.parasiticLoadElectricityMin,'String'))./100;
Parasitic_load_electricity_Likely = str2double(get(gui.parasiticLoadElectricityModal,'String'))./100;
Parasitic_load_electricity_Max = str2double(get(gui.parasiticLoadElectricityMax,'String'))./100;

Parasitic_load_to_heat_digesterMin = str2double(get(gui.parasiticLoadHeatMin,'String'))./100;
Parasitic_load_to_heat_digesterLikely = str2double(get(gui.parasiticLoadHeatModal,'String'))./100;
Parasitic_load_to_heat_digesterMax = str2double(get(gui.parasiticLoadHeatMax,'String'))./100;

downtimeMin = str2double(get(gui.DowntimeMin,'String'))./100;
downtimeLikely = str2double(get(gui.DowntimeModal,'String'))./100;
downtimeMax = str2double(get(gui.DowntimeMax,'String'))./100;

if conversionParametersDistribution == 0 % uniform
    disp ('uniform distribution for energy conversion parameters')
    energyInMethane = (energyInMethaneMax - energyInMethaneMin) * rand(numberMonteCarloScenarios,projectLifetime) + energyInMethaneMin;
    Estimated_Biogas_Methane_Content = (Estimated_Biogas_Methane_ContentMax - Estimated_Biogas_Methane_ContentMin) * rand(numberMonteCarloScenarios,projectLifetime) + Estimated_Biogas_Methane_ContentMin;
    CHP_Electricity_Efficiency = (CHP_Electricity_EfficiencyMax - CHP_Electricity_EfficiencyMin) * rand(numberMonteCarloScenarios,projectLifetime) + CHP_Electricity_EfficiencyMin;
    CHP_Heat_Efficiency = (CHP_Heat_EfficiencyMax - CHP_Heat_EfficiencyMin) * rand(numberMonteCarloScenarios,projectLifetime) + CHP_Heat_EfficiencyMin;
    CHP_Losses_Inefficiencies = (CHP_Losses_InefficienciesMax - CHP_Losses_InefficienciesMin) * rand(numberMonteCarloScenarios,projectLifetime) + CHP_Losses_InefficienciesMin;
    Parasitic_load_electricity = (Parasitic_load_electricity_Max - Parasitic_load_electricity_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Parasitic_load_electricity_Min;
    Parasitic_load_to_heat_digester = (Parasitic_load_to_heat_digesterMax - Parasitic_load_to_heat_digesterMin) * rand(numberMonteCarloScenarios,projectLifetime) + Parasitic_load_to_heat_digesterMin;
    downtime = (downtimeMax - downtimeMin) * rand(numberMonteCarloScenarios,projectLifetime) + downtimeMin;
    
else
    disp ('triangular distribution for energy conversion parameters')
    
    energyInMethane = trirnd(energyInMethaneMin,energyInMethaneLikely,energyInMethaneMax,numberMonteCarloScenarios*projectLifetime);
    energyInMethane = reshape(energyInMethane,numberMonteCarloScenarios,projectLifetime);
    
    Estimated_Biogas_Methane_Content = trirnd(Estimated_Biogas_Methane_ContentMin,Estimated_Biogas_Methane_ContentLikely,Estimated_Biogas_Methane_ContentMax,numberMonteCarloScenarios*projectLifetime);
    Estimated_Biogas_Methane_Content = reshape(Estimated_Biogas_Methane_Content,numberMonteCarloScenarios,projectLifetime);
    
    CHP_Electricity_Efficiency = trirnd(CHP_Electricity_EfficiencyMin,CHP_Electricity_EfficiencyLikely,CHP_Electricity_EfficiencyMax,numberMonteCarloScenarios*projectLifetime);
    CHP_Electricity_Efficiency = reshape(CHP_Electricity_Efficiency,numberMonteCarloScenarios,projectLifetime);
    
    CHP_Heat_Efficiency = trirnd(CHP_Heat_EfficiencyMin,CHP_Heat_EfficiencyLikely,CHP_Heat_EfficiencyMax,numberMonteCarloScenarios*projectLifetime);
    CHP_Heat_Efficiency = reshape(CHP_Heat_Efficiency,numberMonteCarloScenarios,projectLifetime);
    
    CHP_Losses_Inefficiencies = trirnd(CHP_Losses_InefficienciesMin,CHP_Losses_InefficienciesLikely,CHP_Losses_InefficienciesMax,numberMonteCarloScenarios*projectLifetime);
    CHP_Losses_Inefficiencies = reshape(CHP_Losses_Inefficiencies,numberMonteCarloScenarios,projectLifetime);
    
    Parasitic_load_electricity = trirnd(Parasitic_load_electricity_Min,Parasitic_load_electricity_Likely,Parasitic_load_electricity_Max,numberMonteCarloScenarios*projectLifetime);
    Parasitic_load_electricity = reshape(Parasitic_load_electricity,numberMonteCarloScenarios,projectLifetime);
    
    Parasitic_load_to_heat_digester = trirnd(Parasitic_load_to_heat_digesterMin,Parasitic_load_to_heat_digesterLikely,Parasitic_load_to_heat_digesterMax,numberMonteCarloScenarios*projectLifetime);
    Parasitic_load_to_heat_digester = reshape(Parasitic_load_to_heat_digester,numberMonteCarloScenarios,projectLifetime);
    
    downtime = trirnd(downtimeMin,downtimeLikely,downtimeMax,numberMonteCarloScenarios*projectLifetime);
    downtime = reshape(downtime,numberMonteCarloScenarios,projectLifetime);
    
end

%% Feed entries
Anml_1_feed_Min = str2double(get(gui.editAnmlFeed1Min,'String'));
Anml_1_feed_Likely = str2double(get(gui.editAnmlFeed1Modal,'String'));
Anml_1_feed_Max = str2double(get(gui.editAnmlFeed1Max,'String'));

Anml_2_feed_Min = str2double(get(gui.editAnmlFeed2Min,'String'));
Anml_2_feed_Likely = str2double(get(gui.editAnmlFeed2Modal,'String'));
Anml_2_feed_Max = str2double(get(gui.editAnmlFeed2Max,'String'));

Anml_3_feed_Min = str2double(get(gui.editAnmlFeed3Min,'String'));
Anml_3_feed_Likely = str2double(get(gui.editAnmlFeed3Modal,'String'));
Anml_3_feed_Max = str2double(get(gui.editAnmlFeed3Max,'String'));

Anml_4_feed_Min = str2double(get(gui.editAnmlFeed4Min,'String'));
Anml_4_feed_Likely = str2double(get(gui.editAnmlFeed4Modal,'String'));
Anml_4_feed_Max = str2double(get(gui.editAnmlFeed4Max,'String'));

Anml_5_feed_Min = str2double(get(gui.editAnmlFeed5Min,'String'));
Anml_5_feed_Likely = str2double(get(gui.editAnmlFeed5Modal,'String'));
Anml_5_feed_Max = str2double(get(gui.editAnmlFeed5Max,'String'));

%
EngyCrop_1_feed_Min = str2double(get(gui.editEngyCropFeed1Min,'String'));
EngyCrop_1_feed_Likely = str2double(get(gui.editEngyCropFeed1Modal,'String'));
EngyCrop_1_feed_Max = str2double(get(gui.editEngyCropFeed1Max,'String'));

EngyCrop_2_feed_Min = str2double(get(gui.editEngyCropFeed2Min,'String'));
EngyCrop_2_feed_Likely = str2double(get(gui.editEngyCropFeed2Modal,'String'));
EngyCrop_2_feed_Max = str2double(get(gui.editEngyCropFeed2Max,'String'));

EngyCrop_3_feed_Min = str2double(get(gui.editEngyCropFeed3Min,'String'));
EngyCrop_3_feed_Likely = str2double(get(gui.editEngyCropFeed3Modal,'String'));
EngyCrop_3_feed_Max = str2double(get(gui.editEngyCropFeed3Max,'String'));

EngyCrop_4_feed_Min = str2double(get(gui.editEngyCropFeed4Min,'String'));
EngyCrop_4_feed_Likely = str2double(get(gui.editEngyCropFeed4Modal,'String'));
EngyCrop_4_feed_Max = str2double(get(gui.editEngyCropFeed4Max,'String'));

EngyCrop_5_feed_Min = str2double(get(gui.editEngyCropFeed5Min,'String'));
EngyCrop_5_feed_Likely = str2double(get(gui.editEngyCropFeed5Modal,'String'));
EngyCrop_5_feed_Max = str2double(get(gui.editEngyCropFeed5Max,'String'));

%
Other_1_feed_Min = str2double(get(gui.editOtherFeed1Min,'String'));
Other_1_feed_Likely = str2double(get(gui.editOtherFeed1Modal,'String'));
Other_1_feed_Max = str2double(get(gui.editOtherFeed1Max,'String'));

Other_2_feed_Min = str2double(get(gui.editOtherFeed2Min,'String'));
Other_2_feed_Likely = str2double(get(gui.editOtherFeed2Modal,'String'));
Other_2_feed_Max = str2double(get(gui.editOtherFeed2Max,'String'));

Other_3_feed_Min = str2double(get(gui.editOtherFeed3Min,'String'));
Other_3_feed_Likely = str2double(get(gui.editOtherFeed3Modal,'String'));
Other_3_feed_Max = str2double(get(gui.editOtherFeed3Max,'String'));

Other_4_feed_Min = str2double(get(gui.editOtherFeed4Min,'String'));
Other_4_feed_Likely = str2double(get(gui.editOtherFeed4Modal,'String'));
Other_4_feed_Max = str2double(get(gui.editOtherFeed4Max,'String'));

Other_5_feed_Min = str2double(get(gui.editOtherFeed5Min,'String'));
Other_5_feed_Likely = str2double(get(gui.editOtherFeed5Modal,'String'));
Other_5_feed_Max = str2double(get(gui.editOtherFeed5Max,'String'));

%% Yield entries
Anml_1_yield_Min = str2double(get(gui.editAnmlYield1Min,'String'));
Anml_1_yield_Likely = str2double(get(gui.editAnmlYield1Modal,'String'));
Anml_1_yield_Max = str2double(get(gui.editAnmlYield1Max,'String'));

Anml_2_yield_Min = str2double(get(gui.editAnmlYield2Min,'String'));
Anml_2_yield_Likely = str2double(get(gui.editAnmlYield2Modal,'String'));
Anml_2_yield_Max = str2double(get(gui.editAnmlYield2Max,'String'));

Anml_3_yield_Min = str2double(get(gui.editAnmlYield3Min,'String'));
Anml_3_yield_Likely = str2double(get(gui.editAnmlYield3Modal,'String'));
Anml_3_yield_Max = str2double(get(gui.editAnmlYield3Max,'String'));

Anml_4_yield_Min = str2double(get(gui.editAnmlYield4Min,'String'));
Anml_4_yield_Likely = str2double(get(gui.editAnmlYield4Modal,'String'));
Anml_4_yield_Max = str2double(get(gui.editAnmlYield4Max,'String'));

Anml_5_yield_Min = str2double(get(gui.editAnmlYield5Min,'String'));
Anml_5_yield_Likely = str2double(get(gui.editAnmlYield5Modal,'String'));
Anml_5_yield_Max = str2double(get(gui.editAnmlYield5Max,'String'));

%
EngyCrop_1_yield_Min = str2double(get(gui.editEngyCropYield1Min,'String'));
EngyCrop_1_yield_Likely = str2double(get(gui.editEngyCropYield1Modal,'String'));
EngyCrop_1_yield_Max = str2double(get(gui.editEngyCropYield1Max,'String'));

EngyCrop_2_yield_Min = str2double(get(gui.editEngyCropYield2Min,'String'));
EngyCrop_2_yield_Likely = str2double(get(gui.editEngyCropYield2Modal,'String'));
EngyCrop_2_yield_Max = str2double(get(gui.editEngyCropYield2Max,'String'));

EngyCrop_3_yield_Min = str2double(get(gui.editEngyCropYield3Min,'String'));
EngyCrop_3_yield_Likely = str2double(get(gui.editEngyCropYield3Modal,'String'));
EngyCrop_3_yield_Max = str2double(get(gui.editEngyCropYield3Max,'String'));

EngyCrop_4_yield_Min = str2double(get(gui.editEngyCropYield4Min,'String'));
EngyCrop_4_yield_Likely = str2double(get(gui.editEngyCropYield4Modal,'String'));
EngyCrop_4_yield_Max = str2double(get(gui.editEngyCropYield4Max,'String'));

EngyCrop_5_yield_Min = str2double(get(gui.editEngyCropYield5Min,'String'));
EngyCrop_5_yield_Likely = str2double(get(gui.editEngyCropYield5Modal,'String'));
EngyCrop_5_yield_Max = str2double(get(gui.editEngyCropYield5Max,'String'));

%
Other_1_yield_Min = str2double(get(gui.editOtherYield1Min,'String'));
Other_1_yield_Likely = str2double(get(gui.editOtherYield1Modal,'String'));
Other_1_yield_Max = str2double(get(gui.editOtherYield1Max,'String'));

Other_2_yield_Min = str2double(get(gui.editOtherYield2Min,'String'));
Other_2_yield_Likely = str2double(get(gui.editOtherYield2Modal,'String'));
Other_2_yield_Max = str2double(get(gui.editOtherYield2Max,'String'));

Other_3_yield_Min = str2double(get(gui.editOtherYield3Min,'String'));
Other_3_yield_Likely = str2double(get(gui.editOtherYield3Modal,'String'));
Other_3_yield_Max = str2double(get(gui.editOtherYield3Max,'String'));

Other_4_yield_Min = str2double(get(gui.editOtherYield4Min,'String'));
Other_4_yield_Likely = str2double(get(gui.editOtherYield4Modal,'String'));
Other_4_yield_Max = str2double(get(gui.editOtherYield4Max,'String'));

Other_5_yield_Min = str2double(get(gui.editOtherYield5Min,'String'));
Other_5_yield_Likely = str2double(get(gui.editOtherYield5Modal,'String'));
Other_5_yield_Max = str2double(get(gui.editOtherYield5Max,'String'));


%% Feedstock distribution
if feedAmountDistribution == 0
    disp ('uniform feed distribution')
    Anml_1_feed = (Anml_1_feed_Max - Anml_1_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_1_feed_Min;
    Anml_2_feed = (Anml_2_feed_Max - Anml_2_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_2_feed_Min;
    Anml_3_feed = (Anml_3_feed_Max - Anml_3_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_3_feed_Min;
    Anml_4_feed = (Anml_4_feed_Max - Anml_4_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_4_feed_Min;
    Anml_5_feed = (Anml_5_feed_Max - Anml_5_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_5_feed_Min;
    
    EngyCrop_1_feed = (EngyCrop_1_feed_Max - EngyCrop_1_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_1_feed_Min;
    EngyCrop_2_feed = (EngyCrop_2_feed_Max - EngyCrop_2_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_2_feed_Min;
    EngyCrop_3_feed = (EngyCrop_3_feed_Max - EngyCrop_3_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_3_feed_Min;
    EngyCrop_4_feed = (EngyCrop_4_feed_Max - EngyCrop_4_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_4_feed_Min;
    EngyCrop_5_feed = (EngyCrop_5_feed_Max - EngyCrop_5_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_5_feed_Min;
    
    Other_1_feed = (Other_1_feed_Max - Other_1_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_1_feed_Min;
    Other_2_feed = (Other_2_feed_Max - Other_2_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_2_feed_Min;
    Other_3_feed = (Other_3_feed_Max - Other_3_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_3_feed_Min;
    Other_4_feed = (Other_4_feed_Max - Other_4_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_4_feed_Min;
    Other_5_feed = (Other_5_feed_Max - Other_5_feed_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_5_feed_Min;
    
else
    disp ('triangular feed distribution')
    
    Anml_1_feed = trirnd(Anml_1_feed_Min,Anml_1_feed_Likely,Anml_1_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_1_feed = reshape(Anml_1_feed,numberMonteCarloScenarios,projectLifetime);
    
    Anml_2_feed = trirnd(Anml_2_feed_Min,Anml_2_feed_Likely,Anml_2_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_2_feed = reshape(Anml_2_feed,numberMonteCarloScenarios,projectLifetime);
    
    Anml_3_feed = trirnd(Anml_3_feed_Min,Anml_3_feed_Likely,Anml_3_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_3_feed = reshape(Anml_3_feed,numberMonteCarloScenarios,projectLifetime);
    
    Anml_4_feed = trirnd(Anml_4_feed_Min,Anml_4_feed_Likely,Anml_4_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_4_feed = reshape(Anml_4_feed,numberMonteCarloScenarios,projectLifetime);
    
    Anml_5_feed = trirnd(Anml_5_feed_Min,Anml_5_feed_Likely,Anml_5_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_5_feed = reshape(Anml_5_feed,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_1_feed = trirnd(EngyCrop_1_feed_Min,EngyCrop_1_feed_Likely,EngyCrop_1_feed_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_1_feed = reshape(EngyCrop_1_feed,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_2_feed = trirnd(EngyCrop_2_feed_Min,EngyCrop_2_feed_Likely,EngyCrop_2_feed_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_2_feed = reshape(EngyCrop_2_feed,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_3_feed = trirnd(EngyCrop_3_feed_Min,EngyCrop_3_feed_Likely,EngyCrop_3_feed_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_3_feed = reshape(EngyCrop_3_feed,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_4_feed = trirnd(EngyCrop_4_feed_Min,EngyCrop_4_feed_Likely,EngyCrop_4_feed_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_4_feed = reshape(EngyCrop_4_feed,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_5_feed = trirnd(EngyCrop_5_feed_Min,EngyCrop_5_feed_Likely,EngyCrop_5_feed_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_5_feed = reshape(EngyCrop_5_feed,numberMonteCarloScenarios,projectLifetime);
    
    Other_1_feed = trirnd(Other_1_feed_Min,Other_1_feed_Likely,Other_1_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Other_1_feed = reshape(Other_1_feed,numberMonteCarloScenarios,projectLifetime);
    
    Other_2_feed = trirnd(Other_2_feed_Min,Other_2_feed_Likely,Other_2_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Other_2_feed = reshape(Other_2_feed,numberMonteCarloScenarios,projectLifetime);
    
    Other_3_feed = trirnd(Other_3_feed_Min,Other_3_feed_Likely,Other_3_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Other_3_feed = reshape(Other_3_feed,numberMonteCarloScenarios,projectLifetime);
    
    Other_4_feed = trirnd(Other_4_feed_Min,Other_4_feed_Likely,Other_4_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Other_4_feed = reshape(Other_4_feed,numberMonteCarloScenarios,projectLifetime);
    
    Other_5_feed = trirnd(Other_5_feed_Min,Other_5_feed_Likely,Other_5_feed_Max,numberMonteCarloScenarios*projectLifetime);
    Other_5_feed = reshape(Other_5_feed,numberMonteCarloScenarios,projectLifetime);
    
end

%
if feedYieldDistribution == 0
    disp ('uniform yield distribution')
    Anml_1_yield = (Anml_1_yield_Max - Anml_1_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_1_yield_Min;
    Anml_2_yield = (Anml_2_yield_Max - Anml_2_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_2_yield_Min;
    Anml_3_yield = (Anml_3_yield_Max - Anml_3_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_3_yield_Min;
    Anml_4_yield = (Anml_4_yield_Max - Anml_4_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_4_yield_Min;
    Anml_5_yield = (Anml_5_yield_Max - Anml_5_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Anml_5_yield_Min;
    
    EngyCrop_1_yield = (EngyCrop_1_yield_Max - EngyCrop_1_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_1_yield_Min;
    EngyCrop_2_yield = (EngyCrop_2_yield_Max - EngyCrop_2_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_2_yield_Min;
    EngyCrop_3_yield = (EngyCrop_3_yield_Max - EngyCrop_3_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_3_yield_Min;
    EngyCrop_4_yield = (EngyCrop_4_yield_Max - EngyCrop_4_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_4_yield_Min;
    EngyCrop_5_yield = (EngyCrop_5_yield_Max - EngyCrop_5_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + EngyCrop_5_yield_Min;
    
    Other_1_yield = (Other_1_yield_Max - Other_1_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_1_yield_Min;
    Other_2_yield = (Other_2_yield_Max - Other_2_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_2_yield_Min;
    Other_3_yield = (Other_3_yield_Max - Other_3_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_3_yield_Min;
    Other_4_yield = (Other_4_yield_Max - Other_4_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_4_yield_Min;
    Other_5_yield = (Other_5_yield_Max - Other_5_yield_Min) * rand(numberMonteCarloScenarios,projectLifetime) + Other_5_yield_Min;
    
else
    disp ('triangular yield distribution')
    
    Anml_1_yield = trirnd(Anml_1_yield_Min,Anml_1_yield_Likely,Anml_1_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_1_yield = reshape(Anml_1_yield,numberMonteCarloScenarios,projectLifetime);
    
    Anml_2_yield = trirnd(Anml_2_yield_Min,Anml_2_yield_Likely,Anml_2_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_2_yield = reshape(Anml_2_yield,numberMonteCarloScenarios,projectLifetime);
    
    Anml_3_yield = trirnd(Anml_3_yield_Min,Anml_3_yield_Likely,Anml_3_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_3_yield = reshape(Anml_3_yield,numberMonteCarloScenarios,projectLifetime);
    
    Anml_4_yield = trirnd(Anml_4_yield_Min,Anml_4_yield_Likely,Anml_4_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_4_yield = reshape(Anml_4_yield,numberMonteCarloScenarios,projectLifetime);
    
    Anml_5_yield = trirnd(Anml_5_yield_Min,Anml_5_yield_Likely,Anml_5_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Anml_5_yield = reshape(Anml_5_yield,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_1_yield = trirnd(EngyCrop_1_yield_Min,EngyCrop_1_yield_Likely,EngyCrop_1_yield_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_1_yield = reshape(EngyCrop_1_yield,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_2_yield = trirnd(EngyCrop_2_yield_Min,EngyCrop_2_yield_Likely,EngyCrop_2_yield_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_2_yield = reshape(EngyCrop_2_yield,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_3_yield = trirnd(EngyCrop_3_yield_Min,EngyCrop_3_yield_Likely,EngyCrop_3_yield_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_3_yield = reshape(EngyCrop_3_yield,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_4_yield = trirnd(EngyCrop_4_yield_Min,EngyCrop_4_yield_Likely,EngyCrop_4_yield_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_4_yield = reshape(EngyCrop_4_yield,numberMonteCarloScenarios,projectLifetime);
    
    EngyCrop_5_yield = trirnd(EngyCrop_5_yield_Min,EngyCrop_5_yield_Likely,EngyCrop_5_yield_Max,numberMonteCarloScenarios*projectLifetime);
    EngyCrop_5_yield = reshape(EngyCrop_5_yield,numberMonteCarloScenarios,projectLifetime);
    
    Other_1_yield = trirnd(Other_1_yield_Min,Other_1_yield_Likely,Other_1_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Other_1_yield = reshape(Other_1_yield,numberMonteCarloScenarios,projectLifetime);
    
    Other_2_yield = trirnd(Other_2_yield_Min,Other_2_yield_Likely,Other_2_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Other_2_yield = reshape(Other_2_yield,numberMonteCarloScenarios,projectLifetime);
    
    Other_3_yield = trirnd(Other_3_yield_Min,Other_3_yield_Likely,Other_3_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Other_3_yield = reshape(Other_3_yield,numberMonteCarloScenarios,projectLifetime);
    
    Other_4_yield = trirnd(Other_4_yield_Min,Other_4_yield_Likely,Other_4_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Other_4_yield = reshape(Other_4_yield,numberMonteCarloScenarios,projectLifetime);
    
    Other_5_yield = trirnd(Other_5_yield_Min,Other_5_yield_Likely,Other_5_yield_Max,numberMonteCarloScenarios*projectLifetime);
    Other_5_yield = reshape(Other_5_yield,numberMonteCarloScenarios,projectLifetime);
    
end

%% Biogas
Annual_BiogasProduction = Anml_1_feed.*Anml_1_yield + Anml_2_feed.*Anml_2_yield + Anml_3_feed.*Anml_3_yield + Anml_4_feed.*Anml_4_yield + Anml_5_feed.*Anml_5_yield;
Annual_BiogasProduction = Annual_BiogasProduction + EngyCrop_1_feed.*EngyCrop_1_yield + EngyCrop_2_feed.*EngyCrop_2_yield + EngyCrop_3_feed.*EngyCrop_3_yield + EngyCrop_4_feed.*EngyCrop_4_yield + EngyCrop_5_feed.*EngyCrop_5_yield;
Annual_BiogasProduction = Annual_BiogasProduction + Other_1_feed.*Other_1_yield + Other_2_feed.*Other_2_yield + Other_3_feed.*Other_3_yield + Other_4_feed.*Other_4_yield + Other_5_feed.*Other_5_yield;

Annual_FeedstockTonnage = Anml_1_feed + Anml_2_feed + Anml_3_feed + Anml_4_feed + Anml_5_feed;
Annual_FeedstockTonnage = Annual_FeedstockTonnage + EngyCrop_1_feed + EngyCrop_2_feed + EngyCrop_3_feed + EngyCrop_4_feed + EngyCrop_5_feed;
Annual_FeedstockTonnage = Annual_FeedstockTonnage + Other_1_feed + Other_2_feed + Other_3_feed + Other_4_feed + Other_5_feed;

Digester_Capacity = max(Annual_FeedstockTonnage)*Retention_Period./365;

%% Buiding and Machinery
Final_Building_And_Infrastructure_Cost = str2double(get(gui.editTotalBuildingCost,'String')); % Present value of building cost £ over the life of the project, all replacements accounted for
Depreciation_Building_And_Infrastructure = str2double(getappdata(gui.editBuildingDepreciationPeriod,'annualDepreciation')); % Based on straightline depreciation
DepreciationBuildingScheduleDummy = zeros(1,projectLifetime);
DepreciationBuildingScheduleDummy(1,[1:str2double(get(gui.editBuildingDepreciationPeriod,'String'))])=1;
DepreciationBuildingScheduleDummy=DepreciationBuildingScheduleDummy';
DepreciationBuildingSchedule = Depreciation_Building_And_Infrastructure.*DepreciationBuildingScheduleDummy; DepreciationBuildingSchedule = DepreciationBuildingSchedule';
DepreciationBuildingSchedule = repmat(DepreciationBuildingSchedule,numberMonteCarloScenarios,1);

%
Final_Machinery_Cost = str2double(get(gui.editTotalMachineryCost,'String')); % Present value of building cost £ over the life of the project, all replacements accounted for
Depreciation_Machinery = str2double(getappdata(gui.editMachineryDepreciationPeriod,'annualDepreciation')); % Based on straightline depreciation
DepreciationMachineryScheduleDummy = zeros(1,projectLifetime);
DepreciationMachineryScheduleDummy(1,[1:str2double(get(gui.editMachineryDepreciationPeriod,'String'))])=1;
DepreciationMachineryScheduleDummy=DepreciationMachineryScheduleDummy';
DepreciationMachinerySchedule = Depreciation_Machinery.*DepreciationMachineryScheduleDummy; DepreciationMachinerySchedule = DepreciationMachinerySchedule';
DepreciationMachinerySchedule = repmat(DepreciationMachinerySchedule,numberMonteCarloScenarios,1);

%
totalCapitalInvestment = Final_Building_And_Infrastructure_Cost + Final_Machinery_Cost;

% annualOpex
annualOpexBase = str2double(get(gui.txtOperationsCost,'String'));

%%
inflationFactor = ((1+inflation_rate).^(0:projectLifetime-1)');
inflationFactor = repmat(inflationFactor',numberMonteCarloScenarios,1);

annualOpex = annualOpexBase.*inflationFactor(1,:);
annualOpex = repmat(annualOpex,numberMonteCarloScenarios,1);

loanAmount = loanPercent*totalCapitalInvestment;
loanRepaymentTerm = min([projectLifetime loanRepaymentTerm]); % consider fixed across simulations

loanRepaymentAmount = (interest_rate_Loan.*loanAmount)./(1-(1+interest_rate_Loan)^-loanRepaymentTerm);
% loanRepaymentAmount = repmat(loanRepaymentAmount,1,projectLifetime);

loanRepaymentScheduleDummy = zeros(1,projectLifetime);
loanRepaymentScheduleDummy(1,[1:loanRepaymentTerm])=1;
loanRepaymentScheduleDummy=loanRepaymentScheduleDummy';
% loanRepaymentScheduleDummy = repmat(loanRepaymentScheduleDummy',numberMonteCarloScenarios,1);

loanRepaymentSchedule = loanRepaymentAmount.*loanRepaymentScheduleDummy; loanRepaymentSchedule = loanRepaymentSchedule';
loanRepaymentSchedule = repmat(loanRepaymentSchedule,numberMonteCarloScenarios,1);

annualCost = annualOpex + loanRepaymentSchedule + DepreciationBuildingSchedule + DepreciationMachinerySchedule;

%% Electricity and heat generation with parasitic load
Energy_Content_Biogas = energyInMethane.*Estimated_Biogas_Methane_Content;
Electricity_Output = CHP_Electricity_Efficiency.*(1-CHP_Losses_Inefficiencies).*Energy_Content_Biogas; %kWh/m3 biogas
Heat_Output = CHP_Heat_Efficiency.*(1-CHP_Losses_Inefficiencies).*Energy_Content_Biogas; %kWh/m3 biogas;

Annual_Electricity_Generation = Electricity_Output.*Annual_BiogasProduction.*(1-downtime); % kWh of total electricity generated including parasitic electricity
Annual_Heat_Generation = Heat_Output.*Annual_BiogasProduction.*(1-downtime); % kWh of total heat generated including parasitc heat

%% Now calculate electricity and heat CHP capacitities
max_CHP_Heat_Capacity = max(max(Annual_Heat_Generation))./((1-min(min(downtime))).*8760);
max_CHP_Elec_Capacity = max(max(Annual_Electricity_Generation))./((1-min(min(downtime))).*8760);
totalMaxCapacity = max_CHP_Elec_Capacity + max_CHP_Heat_Capacity;
setappdata(gui.dummyStorage,'totalMaxCapacity',totalMaxCapacity);

%% Saleable energy i.e. energy with parasitic load taken out
Annual_Electricity_Generation = Annual_Electricity_Generation.*(1-Parasitic_load_electricity); % kWh of saleable electricity, parasitic electricity removed
Annual_Heat_Generation = Annual_Heat_Generation.*(1-Parasitic_load_to_heat_digester); % kWh of saleable heat, parasitic heat removed

%%
discountFactor = ((1+discountRate).^(0:projectLifetime-1)');
discountFactor = repmat(discountFactor',numberMonteCarloScenarios,1);

end

