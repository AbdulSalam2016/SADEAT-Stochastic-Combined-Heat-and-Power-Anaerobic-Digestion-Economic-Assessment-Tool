function onExportData(src,~,gui)

%% check the option being run
set( get(gui.ExportResults, 'Children'), 'Checked', 'off' );
set(src,'Checked','on');

%%
if strcmpi(get(src,'Tag'),'exportSimulatedData')
    h = gui.result1;
    Data = get(h,'Data');
    ColumnName = get(h,'ColumnName');
    CombData = [ColumnName';Data];
    
    [FileNameBodeWrite, PathNameBodeWrite] = uiputfile({'*.xls';'*.csv'},'Save As...',['Export data in tab Simulated data' '.xls']);
    if FileNameBodeWrite ~= 0
        if exist([PathNameBodeWrite FileNameBodeWrite],'file')
            delete([PathNameBodeWrite FileNameBodeWrite ]);
        end
        xlswrite([PathNameBodeWrite FileNameBodeWrite ], CombData)            
    end
end

if strcmpi(get(src,'Tag'),'exportDecisionCriterionData')
    Data = get(gui.hiddenDecisionCriterionData,'Data');
    
    [FileNameBodeWrite, PathNameBodeWrite] = uiputfile({'*.xls';'*.csv'},'Save As...',['Export data in tab Distribution' '.xls']);
    if FileNameBodeWrite ~= 0
        if exist([PathNameBodeWrite FileNameBodeWrite],'file')
            delete([PathNameBodeWrite FileNameBodeWrite ]);
        end
        xlswrite([PathNameBodeWrite FileNameBodeWrite ],Data)  
    end
end

%{
if strcmpi(get(src,'Tag'),'exportDecisionCriterionGraphs')
    gui
    axes(gui.R1C1Result3);
    FileName = uiputfile('*.jpg','Save as');
    saveTightFigure(gui.R1C1Result3,FileName)
%     export_fig(gui.R1C1Result3);
end
%}

end