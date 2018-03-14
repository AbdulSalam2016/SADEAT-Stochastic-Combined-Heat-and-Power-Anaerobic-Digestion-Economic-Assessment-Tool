function onRun(src,~,gui,data)
% http://uk.mathworks.com/matlabcentral/newsreader/view_thread/155982
% http://www.matlabtips.com/cant-you-see-i-m-busy/
% http://uk.mathworks.com/matlabcentral/answers/11411-how-to-indicate-that-gui-is-busy-running

%% check the option being run
set( get(gui.Run, 'Children'), 'Checked', 'off' );
set(src,'Checked','on');

%% disable interface and show that tool is processing
InterfaceObj=findobj(gui.Window,'Enable','on');
set(InterfaceObj,'Enable','off');

set(gui.Window, 'pointer', 'watch');
drawnow;

%% On click of 'run', take me to the distribution page
data.SelectedDemo = 10;
updateInterface(gui,data);

%% clear all existing results
set(gui.result1,'Data',[]);

cla(gui.R1C1Result2);
cla(gui.R1C2Result2);
cla(gui.R1C3Result2);
cla(gui.R2C1Result2);
cla(gui.R2C2Result2);
cla(gui.R2C3Result2);

cla(gui.R1C1Result3);
set( gui.notesResult3, 'String', '');

%% import parameters
[genFIT,expFIT,Heat_WholeSale_Price,RHI,mirrFinanceRate,mirrReinvestmentRate,inflationFactor,Annual_Electricity_Generation,Annual_Heat_Generation,...
    tax_Rate,annualCost,DepreciationBuildingSchedule,DepreciationMachinerySchedule,...
    discountFactor,totalCapitalInvestment,numberMonteCarloScenarios,projectLifetime,annualOpex,loanRepaymentSchedule] = aaa_getCalculatedParameters(gui);

%% calculating NPV
if strcmpi(get(src,'Tag'),'NPV')
    disp NPV
    model(gui,src);
end

%% calculating IRR
if strcmpi(get(src,'Tag'),'MIRR')
    disp MIRR
    model(gui,src);
end

%% Calculating breakeven electricity prices
% if electricity generation is 0, then breakeven electrcitiy prices cannot be calculated because there is no electricity
if strcmpi(get(src,'Tag'),'BreakEvenElectricityPrice')
    if all(Annual_Electricity_Generation == 0)
        xlabel(gui.R1C1Result3,'Distribution of breakeven elecricity prices, p/kWh');
        ylabel(gui.R1C1Result3,'Number of cases');
        
        msg = sprintf(['Electricity generation is 0.00 kWh for all simulated cases. \n',...
            ' As a result, breakeven electricity prices have not been calculated by the tool. \n',...
            ' Possible sources of non generation of electricity include; \n',...
            '(1) All feedstock quantity inputs are 0.00  tonnes, or their associated feedstock biogas yield inputs are 0.00 m3/tonne \n',...
            '(2) All feedstock biogas yield inputs are 0.00 m3/tonne, or their associated feedstock quantity inputs are 0.00 tonnes \n',...
            '(3) All inputs for the parameter "Energy in methane" are 0.00 kWh/m3 \n',...
            '(4) All inputs for the parameter "Amount of methane in biogas" are 0.00 percent \n',...
            '(5) All inputs for the parameter "CHP plant electricity efficiency" are 0.00 percent \n',...
            '(6) All inputs for the parameter "Overall plant inefficiency" are 100.00 percent \n',...
            '(7) All inputs for the parameter "Parasitic load electricity" are 100.00 percent \n',...
            '(8) All inputs for the parameter "Downtime" are 100.00 percent. \n',...
            'Please check and correct in order to calculate breakeven electricity prices.',...
            ]);
        uiwait(msgbox(msg,'Error','Warn','modal'));
        
    else
        disp ('Breakeven electricity prices')
        model(gui,src);
    end
end

%% Calculating breakeven heat prices
% if heat generation is 0, then breakeven heat prices cannot be calculated because there is no heat
if strcmpi(get(src,'Tag'),'BreakEvenHeatPrice')
    if all(Annual_Heat_Generation == 0)
        xlabel(gui.R1C1Result3,'Distribution of breakeven heat prices, p/kWh');
        ylabel(gui.R1C1Result3,'Number of cases');
        
        msg = sprintf(['Heat generation is 0.00 kWh for all simulated cases. \n',...
            ' As a result, breakeven heat prices have not been calculated by the tool. \n',...
            ' Possible sources of non generation of heat include; \n',...
            '(1) All feedstock quantity inputs are 0.00  tonnes, or their associated feedstock biogas yield inputs are 0.00 m3/tonne \n',...
            '(2) All feedstock biogas yield inputs are 0.00 m3/tonne, or their associated feedstock quantity inputs are 0.00 tonnes \n',...
            '(3) All inputs for the parameter "Energy in methane" are 0.00 kWh/m3 \n',...
            '(4) All inputs for the parameter "Amount of methane in biogas" are 0.00 percent \n',...
            '(5) All inputs for the parameter "CHP plant electricity efficiency" are 0.00 percent \n',...
            '(6) All inputs for the parameter "Overall plant inefficiency" are 100.00 percent \n',...
            '(7) All inputs for the parameter "Parasitic load heat" are 100.00 percent \n',...
            '(8) All inputs for the parameter "Downtime" are 100.00 percent. \n',...
            'Please check and correct in order to calculate breakeven heat prices.',...
            ]);
        uiwait(msgbox(msg,'Error','Warn','modal'));
        
    else
        disp ('Breakeven heat prices')
        model(gui,src);
    end
end

%%  Turn the interface back on
set(InterfaceObj,'Enable','on');

% gui has finished processing. change pointer to arrow
set(gui.Window, 'pointer', 'arrow');

end