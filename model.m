function model(gui,src)

%% Bring in calcuated parameters
[genFIT,expFIT,Heat_WholeSale_Price,RHI,mirrFinanceRate,mirrReinvestmentRate,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,...
    tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,...
    discountFactor,totalCapitalInvestment,numberMonteCarloScenarios,projectLifetime,annualOpex,loanRepaymentSchedule] = aaa_getCalculatedParameters(gui);

if strcmpi(get(src,'Tag'),'NPV') % for NPV run
    
    disp ('NPV run');
    aggElecPrice = genFIT + expFIT;
    aggHeatPrice = RHI + Heat_WholeSale_Price;
    
    x = aggElecPrice.*ones(1,numberMonteCarloScenarios);
    y = aggHeatPrice.*ones(1,numberMonteCarloScenarios);
    [Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow] ...
            = objFcnNPVandIRR(x,y,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor);
    F = sum(discountedCashFlow,2) - totalCapitalInvestment; % definition of NPV
    
    panelData = createPanelData(src,inflationFactor,numberMonteCarloScenarios,projectLifetime,Annual_Electricity_Generation,genFIT,expFIT,F,Annual_Electricity_Revenue,Heat_WholeSale_Price,RHI,Annual_Heat_Generation,Annual_Heat_Revenue,annualRevenue,annualOpex,...
        loanRepaymentSchedule,DepreciationBuildingSchedule,DepreciationMachinerySchedule,annualCost,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow,x);
    
    plotResultPart1(src,gui,panelData);
    plotResultPart2(gui,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,annualCost,projectLifetime);
    plotResultPart3(gui,src,F,0);
    set(gui.hiddenDecisionCriterionData,'Data',F); % decision criteria data stored for users interested in exporting using the 'Export result' function
    
    
elseif strcmpi(get(src,'Tag'),'MIRR') % for MIRR run
    
    disp ('MIRR run');
    aggElecPrice = genFIT + expFIT;
    aggHeatPrice = RHI + Heat_WholeSale_Price;
    
    x = aggElecPrice.*ones(1,numberMonteCarloScenarios);
    y = aggHeatPrice.*ones(1,numberMonteCarloScenarios);
    [Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow] ...
            = objFcnNPVandIRR(x,y,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor);    
    F = ([-totalCapitalInvestment*ones(1,numberMonteCarloScenarios); cashFlow']); % definition of irr; see http://www.propertymetrics.com/blog/2015/10/28/how-to-use-the-modified-internal-rate-of-return-mirr/
    F = mirr(F,mirrFinanceRate,mirrReinvestmentRate);
    
    panelData = createPanelData(src,inflationFactor,numberMonteCarloScenarios,projectLifetime,Annual_Electricity_Generation,genFIT,expFIT,F,Annual_Electricity_Revenue,Heat_WholeSale_Price,RHI,Annual_Heat_Generation,Annual_Heat_Revenue,annualRevenue,annualOpex,...
        loanRepaymentSchedule,DepreciationBuildingSchedule,DepreciationMachinerySchedule,annualCost,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow,x);
    
    plotResultPart1(src,gui,panelData);
    plotResultPart2(gui,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,annualCost,projectLifetime);
    plotResultPart3(gui,src,F,0);
    set(gui.hiddenDecisionCriterionData,'Data',F'*100); % decision criteria data stored for users interested in exporting using the 'Export result' function

elseif strcmpi(get(src,'Tag'),'BreakEvenElectricityPrice') % for breakeven electricity prices run
    disp ('Breakeven electricity prices run')
    % Find breakeven electricity price
    x0 = zeros(1,numberMonteCarloScenarios);
    f = @(x)objFcnBE_Elec(x,RHI,Heat_WholeSale_Price,inflationFactor,numberMonteCarloScenarios,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,...
            DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor,totalCapitalInvestment);
    options = optimoptions('fsolve','Display','none');
    x = fsolve(f,x0,options);
    
    % Check that Breakeven electricity price satisfy equations
    [F,Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow]...
            = objFcnBE_Elec(x,RHI,Heat_WholeSale_Price,inflationFactor,numberMonteCarloScenarios,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,...
            DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor,totalCapitalInvestment);
    
    panelData = createPanelData(src,inflationFactor,numberMonteCarloScenarios,projectLifetime,Annual_Electricity_Generation,genFIT,expFIT,F,Annual_Electricity_Revenue,Heat_WholeSale_Price,RHI,Annual_Heat_Generation,Annual_Heat_Revenue,annualRevenue,annualOpex,...
        loanRepaymentSchedule,DepreciationBuildingSchedule,DepreciationMachinerySchedule,annualCost,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow,x);
    
    plotResultPart1(src,gui,panelData);
    plotResultPart2(gui,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,annualCost,projectLifetime);
    plotResultPart3(gui,src,0,x);
    set(gui.hiddenDecisionCriterionData,'Data',x'); % decision criteria data stored for users interested in exporting using the 'Export result' function

    
elseif strcmpi(get(src,'Tag'),'BreakEvenHeatPrice') % for breakeven heat prices run
    disp ('Breakeven heat prices run')
    % Find breakeven heat price
    x0 = zeros(1,numberMonteCarloScenarios);
    f = @(x)objFcnBE_Heat(x,genFIT,expFIT,inflationFactor,numberMonteCarloScenarios,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,...
            DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor,totalCapitalInvestment);
    options = optimoptions('fsolve','Display','none');
    x = fsolve(f,x0,options);
    
    % Check that Breakeven heat price satisfy equations
    [F,Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow]...
            = objFcnBE_Heat(x,genFIT,expFIT,inflationFactor,numberMonteCarloScenarios,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,...
            DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor,totalCapitalInvestment);
    
    panelData = createPanelData(src,inflationFactor,numberMonteCarloScenarios,projectLifetime,Annual_Electricity_Generation,genFIT,expFIT,F,Annual_Electricity_Revenue,Heat_WholeSale_Price,RHI,Annual_Heat_Generation,Annual_Heat_Revenue,annualRevenue,annualOpex,...
        loanRepaymentSchedule,DepreciationBuildingSchedule,DepreciationMachinerySchedule,annualCost,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow,x);
    
    plotResultPart1(src,gui,panelData);
    plotResultPart2(gui,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,annualCost,projectLifetime);
    plotResultPart3(gui,src,0,x);
    set(gui.hiddenDecisionCriterionData,'Data',x'); % decision criteria data stored for users interested in exporting using the 'Export result' function

end


%%
% ****************** objective function for NPV or MIRR
    function [Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow] ...
            = objFcnNPVandIRR(x,y,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor)
        
        infl = inflationFactor(1,:);
        
        Annual_Electricity_Revenue = (x'*infl).*Annual_Electricity_Generation./100;
        Annual_Heat_Revenue = (y'*infl).*Annual_Heat_Generation./100;
        
        annualRevenue = Annual_Electricity_Revenue + Annual_Heat_Revenue;
        
        preTaxProfit = annualRevenue - annualCost;
        
        tax = tax_Rate.*preTaxProfit;
        tax(tax<0) = 0; % only apply tax to cases where pretax is positive
        
        postTaxProfit = preTaxProfit - tax;
        
        cashFlow = postTaxProfit + DepreciationBuildingSchedule + DepreciationMachinerySchedule;
        
        discountedCashFlow = cashFlow./discountFactor;
        
    end

% ****************** objective function for breakeven electricity prices; pass x as breakeven
%  electricity price variable, pass RHI and Heat_WholeSale_Price as parameters
    function [F,Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow]...
            = objFcnBE_Elec(x,RHI,Heat_WholeSale_Price,inflationFactor,numberMonteCarloScenarios,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,...
            DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor,totalCapitalInvestment)
        
        infl = inflationFactor(1,:);
        aggHeatPrice = RHI + Heat_WholeSale_Price;
        y = aggHeatPrice.*ones(1,numberMonteCarloScenarios);
        
        Annual_Electricity_Revenue = (x'*infl).*Annual_Electricity_Generation./100;
        Annual_Heat_Revenue = (y'*infl).*Annual_Heat_Generation./100;
        
        annualRevenue = Annual_Electricity_Revenue + Annual_Heat_Revenue;
        
        preTaxProfit = annualRevenue - annualCost;
        
        tax = tax_Rate.*preTaxProfit;
        tax(tax<0) = 0; % only apply tax to cases where pretax is positive
        
        postTaxProfit = preTaxProfit - tax;
        
        cashFlow = postTaxProfit + DepreciationBuildingSchedule + DepreciationMachinerySchedule;
        
        discountedCashFlow = cashFlow./discountFactor;
        
        F =  sum(discountedCashFlow,2) - totalCapitalInvestment;
    end

% ****************** objective function for breakeven heat prices; pass x as breakeven
%  heat price, pass genFIT and expFIT as parameters
    function [F,Annual_Electricity_Revenue,Annual_Heat_Revenue,annualRevenue,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow]...
            = objFcnBE_Heat(x,genFIT,expFIT,inflationFactor,numberMonteCarloScenarios,Annual_Electricity_Generation,Annual_Heat_Generation,tax_Rate,annualCost,...
            DepreciationBuildingSchedule,DepreciationMachinerySchedule,discountFactor,totalCapitalInvestment)
        
        infl = inflationFactor(1,:);
        aggElecPrice = genFIT + expFIT;
        y = aggElecPrice.*ones(1,numberMonteCarloScenarios);
        
        Annual_Electricity_Revenue = (y'*infl).*Annual_Electricity_Generation./100;
        Annual_Heat_Revenue = (x'*infl).*Annual_Heat_Generation./100;
        
        annualRevenue = Annual_Electricity_Revenue + Annual_Heat_Revenue;
        
        preTaxProfit = annualRevenue - annualCost;
        
        tax = tax_Rate.*preTaxProfit;
        tax(tax<0) = 0; % only apply tax to cases where pretax is positive
        
        postTaxProfit = preTaxProfit - tax;
        
        cashFlow = postTaxProfit + DepreciationBuildingSchedule + DepreciationMachinerySchedule;
        
        discountedCashFlow = cashFlow./discountFactor;
        
        F =  sum(discountedCashFlow,2) - totalCapitalInvestment;
    end
end