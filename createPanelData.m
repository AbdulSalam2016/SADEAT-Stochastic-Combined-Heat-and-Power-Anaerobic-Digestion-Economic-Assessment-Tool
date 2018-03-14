function data = createPanelData(src,inflationFactor,numberMonteCarloScenarios,projectLifetime,Annual_Electricity_Generation,genFIT,expFIT,F,Annual_Electricity_Revenue,Heat_WholeSale_Price,RHI,Annual_Heat_Generation,Annual_Heat_Revenue,annualRevenue,annualOpex,...
    loanRepaymentSchedule,DepreciationBuildingSchedule,DepreciationMachinerySchedule,annualCost,preTaxProfit,tax,postTaxProfit,cashFlow,discountedCashFlow,x)

counter = 0;
data = zeros(numberMonteCarloScenarios*projectLifetime,19);

%
if strcmpi(get(src,'Tag'),'NPV') || strcmpi(get(src,'Tag'),'MIRR') || strcmpi(get(src,'Tag'),'BreakEvenHeatPrice')
    Electricity_price = genFIT + expFIT;
    Electricity_price = Electricity_price.*inflationFactor;
    
elseif strcmpi(get(src,'Tag'),'BreakEvenElectricityPrice')
    Electricity_price = x;
    Electricity_price = Electricity_price'*inflationFactor(1,:);
end

%
if strcmpi(get(src,'Tag'),'NPV') || strcmpi(get(src,'Tag'),'MIRR') || strcmpi(get(src,'Tag'),'BreakEvenElectricityPrice')
    Heat_price = Heat_WholeSale_Price + RHI;
    Heat_price = Heat_price*inflationFactor;
    
elseif strcmpi(get(src,'Tag'),'BreakEvenHeatPrice')
    Heat_price = x;
    Heat_price = Heat_price'*inflationFactor(1,:);
end


for i = 1:numberMonteCarloScenarios
    for j = 1:projectLifetime
        counter = counter+1;
        
        data(counter,1) = i;
        data(counter,2) = j;
        data(counter,3) = Annual_Electricity_Generation(i,j);
        data(counter,4) = Electricity_price(i,j);
        data(counter,5) = Annual_Electricity_Revenue(i,j);
        data(counter,6) = Annual_Heat_Generation(i,j);
        data(counter,7) = Heat_price(i,j);
        data(counter,8) = Annual_Heat_Revenue(i,j);
        data(counter,9) = annualRevenue(i,j);
        data(counter,10) = annualOpex(i,j);
        data(counter,11) = loanRepaymentSchedule(i,j);
        data(counter,12) = DepreciationBuildingSchedule(i,j);
        data(counter,13) = DepreciationMachinerySchedule(i,j);
        data(counter,14) = annualCost(i,j);
        
        data(counter,15) = preTaxProfit(i,j);
        data(counter,16) = tax(i,j);
        data(counter,17) = postTaxProfit(i,j);
        data(counter,18) = cashFlow(i,j);
        data(counter,19) = discountedCashFlow(i,j);
    end
    
end
end