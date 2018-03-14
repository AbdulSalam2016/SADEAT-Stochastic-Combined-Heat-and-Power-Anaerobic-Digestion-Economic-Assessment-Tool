function plotResultPart1(src,gui,panelData)
% http://uk.mathworks.com/matlabcentral/answers/96131-is-there-a-format-in-matlab-to-display-numbers-such-that-commas-are-automatically-inserted-into-the

if strcmpi(get(src,'Tag'),'NPV') % for NPV run
    selectedRun = 1;
    elseif strcmpi(get(src,'Tag'),'MIRR') % for MIRR run
        selectedRun = 2;
        elseif strcmpi(get(src,'Tag'),'BreakEvenElectricityPrice') % for breakeven electricity prices run
            selectedRun = 3;
            elseif strcmpi(get(src,'Tag'),'BreakEvenHeatPrice') % for breakeven heat prices run
                selectedRun = 4;
end

%% column names depends on the run
if selectedRun==1 || selectedRun==2 % for NPV run or IRR run
    cnames = {'Simulated case number','Year','Electricity generation,kWh','(FIT+export) electricity prices,p/kWh','Electricity revenue,£','Heat generation,kWh','(RHI+export) heat prices,p/kWh','Heat revenue,£','Total revenue,£','Overhead cost,£','Loan repayment cost,£','Building depreciation cost,£','Machinery depreciation cost,£','Total annual cost,£','Pre-tax profit,£','Tax,£','Post-tax profit,£','Cash flow,£','Discounted cash flow,£'}; % dataset({data 'FOO','BAR','BAZ','BUZZ','FUZZ'})
elseif selectedRun==3 % for breakeven electricity prices run
    cnames = {'Simulated case number','Year','Electricity generation,kWh','Breakeven electricity prices,p/kWh','Electricity revenue,£','Heat generation,kWh','(RHI+export) heat prices,p/kWh','Heat revenue,£','Total revenue,£','Overhead cost,£','Loan repayment cost,£','Building depreciation cost,£','Machinery depreciation cost,£','Total annual cost,£','Pre-tax profit,£','Tax,£','Post-tax profit,£','Cash flow,£','Discounted cash flow,£'}; % dataset({data 'FOO','BAR','BAZ','BUZZ','FUZZ'})
elseif selectedRun==4 % for breakeven heat prices run
    cnames = {'Simulated case number','Year','Electricity generation,kWh','(FIT+export) electricity prices,p/kWh','Electricity revenue,£','Heat generation,kWh','Breakeven heat prices,p/kWh','Heat revenue,£','Total revenue,£','Overhead cost,£','Loan repayment cost,£','Building depreciation cost,£','Machinery depreciation cost,£','Total annual cost,£','Pre-tax profit,£','Tax,£','Post-tax profit,£','Cash flow,£','Discounted cash flow,£'}; % dataset({data 'FOO','BAR','BAZ','BUZZ','FUZZ'})
end

%% Prepare data for export to excel
% data_cells=num2cell(panelData);     %Convert data to cell array
% output_matrix=[cnames; data_cells];     % Join cell arrays
% xlswrite('ToolData.xls',output_matrix);     %Write data and both headers

%% prepapre data for export to the tool
panelData = num2bank(panelData);
set(gui.result1,'Data',panelData,'ColumnName',cnames,'ColumnFormat',{'short','short','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank','bank'});

    function [str]=num2bank(num)
        str = arrayfun(@(x) num2bankScalar(x) , num, 'UniformOutput', false);
    end

    function [str]=num2bankScalar(num)
        num=floor(num*100)/100;
        str = num2str(num);
        k=find(str == '.', 1);
        if(isempty(k))
            str=[str,'.00'];
        end
        FIN = min(length(str),find(str == '.')-1);
        for i = FIN-2:-3:2
            str(i+1:end+1) = str(i:end);
            str(i) = ',';
        end
    end

end