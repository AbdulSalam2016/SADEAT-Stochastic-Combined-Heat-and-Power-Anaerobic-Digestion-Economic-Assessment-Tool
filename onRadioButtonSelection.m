function [gui,data] = onRadioButtonSelection( src, ~ ,gui,data)
% User selected a demo from the list - update "data" and refresh

%% Radio button responses for Quantity distribution type
if strcmpi('TriangularQuantity', get( src, 'Tag'))
    set(gui.triangularQuantity,'Value',1);
    set(gui.uniformQuantity,'Value',0);
    
    s = mean([str2double(get(gui.editAnmlFeed1Min,'String')) str2double(get(gui.editAnmlFeed1Max,'String'))]);
    set(gui.editAnmlFeed1Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlFeed2Min,'String')) str2double(get(gui.editAnmlFeed2Max,'String'))]);
    set(gui.editAnmlFeed2Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlFeed3Min,'String')) str2double(get(gui.editAnmlFeed3Max,'String'))]);
    set(gui.editAnmlFeed3Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlFeed4Min,'String')) str2double(get(gui.editAnmlFeed4Max,'String'))]);
    set(gui.editAnmlFeed4Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlFeed5Min,'String')) str2double(get(gui.editAnmlFeed5Max,'String'))]);
    set(gui.editAnmlFeed5Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    
    s = mean([str2double(get(gui.editEngyCropFeed1Min,'String')) str2double(get(gui.editEngyCropFeed1Max,'String'))]);
    set(gui.editEngyCropFeed1Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropFeed2Min,'String')) str2double(get(gui.editEngyCropFeed2Max,'String'))]);
    set(gui.editEngyCropFeed2Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropFeed3Min,'String')) str2double(get(gui.editEngyCropFeed3Max,'String'))]);
    set(gui.editEngyCropFeed3Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropFeed4Min,'String')) str2double(get(gui.editEngyCropFeed4Max,'String'))]);
    set(gui.editEngyCropFeed4Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropFeed5Min,'String')) str2double(get(gui.editEngyCropFeed5Max,'String'))]);
    set(gui.editEngyCropFeed5Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    
    s = mean([str2double(get(gui.editOtherFeed1Min,'String')) str2double(get(gui.editOtherFeed1Max,'String'))]);
    set(gui.editOtherFeed1Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherFeed2Min,'String')) str2double(get(gui.editOtherFeed2Max,'String'))]);
    set(gui.editOtherFeed2Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherFeed3Min,'String')) str2double(get(gui.editOtherFeed3Max,'String'))]);
    set(gui.editOtherFeed3Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherFeed4Min,'String')) str2double(get(gui.editOtherFeed4Max,'String'))]);
    set(gui.editOtherFeed4Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherFeed5Min,'String')) str2double(get(gui.editOtherFeed5Max,'String'))]);
    set(gui.editOtherFeed5Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    
    uiwait(msgbox('All modal entries have been set to the mean of minimum and maximum entries. This is to avoid errors in the values of the modal, relative to the minimum and maximum values.','Warning','Warn','modal'));
    
    
elseif strcmpi( 'UniformQuantity', get( src, 'Tag' ) )
    set(gui.uniformQuantity,'Value',1);
    set(gui.triangularQuantity,'Value',0);
    
    set(gui.editAnmlFeed1Modal,'String','','Enable','off');
    set(gui.editAnmlFeed2Modal,'String','','Enable','off');
    set(gui.editAnmlFeed3Modal,'String','','Enable','off');
    set(gui.editAnmlFeed4Modal,'String','','Enable','off');
    set(gui.editAnmlFeed5Modal,'String','','Enable','off');
    
    set(gui.editEngyCropFeed1Modal,'String','','Enable','off');
    set(gui.editEngyCropFeed2Modal,'String','','Enable','off');
    set(gui.editEngyCropFeed3Modal,'String','','Enable','off');
    set(gui.editEngyCropFeed4Modal,'String','','Enable','off');
    set(gui.editEngyCropFeed5Modal,'String','','Enable','off');
    
    set(gui.editOtherFeed1Modal,'String','','Enable','off');
    set(gui.editOtherFeed2Modal,'String','','Enable','off');
    set(gui.editOtherFeed3Modal,'String','','Enable','off');
    set(gui.editOtherFeed4Modal,'String','','Enable','off');
    set(gui.editOtherFeed5Modal,'String','','Enable','off');
    
end

%% Radio button responses for Yield distribution type
if strcmpi( 'TriangularYield', get( src, 'Tag' ) )
    set(gui.triangularYield,'Value',1);
    set(gui.uniformYield,'Value',0);
    
    s = mean([str2double(get(gui.editAnmlYield1Min,'String')) str2double(get(gui.editAnmlYield1Max,'String'))]);
    set(gui.editAnmlYield1Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlYield2Min,'String')) str2double(get(gui.editAnmlYield2Max,'String'))]);
    set(gui.editAnmlYield2Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlYield3Min,'String')) str2double(get(gui.editAnmlYield3Max,'String'))]);
    set(gui.editAnmlYield3Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlYield4Min,'String')) str2double(get(gui.editAnmlYield4Max,'String'))]);
    set(gui.editAnmlYield4Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editAnmlYield5Min,'String')) str2double(get(gui.editAnmlYield5Max,'String'))]);
    set(gui.editAnmlYield5Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    
    s = mean([str2double(get(gui.editEngyCropYield1Min,'String')) str2double(get(gui.editEngyCropYield1Max,'String'))]);
    set(gui.editEngyCropYield1Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropYield2Min,'String')) str2double(get(gui.editEngyCropYield2Max,'String'))]);
    set(gui.editEngyCropYield2Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropYield3Min,'String')) str2double(get(gui.editEngyCropYield3Max,'String'))]);
    set(gui.editEngyCropYield3Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropYield4Min,'String')) str2double(get(gui.editEngyCropYield4Max,'String'))]);
    set(gui.editEngyCropYield4Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editEngyCropYield5Min,'String')) str2double(get(gui.editEngyCropYield5Max,'String'))]);
    set(gui.editEngyCropYield5Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    
    s = mean([str2double(get(gui.editOtherYield1Min,'String')) str2double(get(gui.editOtherYield1Max,'String'))]);
    set(gui.editOtherYield1Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherYield2Min,'String')) str2double(get(gui.editOtherYield2Max,'String'))]);
    set(gui.editOtherYield2Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherYield3Min,'String')) str2double(get(gui.editOtherYield3Max,'String'))]);
    set(gui.editOtherYield3Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherYield4Min,'String')) str2double(get(gui.editOtherYield4Max,'String'))]);
    set(gui.editOtherYield4Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.editOtherYield5Min,'String')) str2double(get(gui.editOtherYield5Max,'String'))]);
    set(gui.editOtherYield5Modal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    
    uiwait(msgbox('All modal values have been set to the mean of minimum and maximum values. This is to avoid errors in the values of the modal, relative to the minimum and maximum values.','Warning','Warn','modal'));
    
    
elseif strcmpi( 'UniformYield', get( src, 'Tag' ) )
    set(gui.uniformYield,'Value',1);
    set(gui.triangularYield,'Value',0);
    
    set(gui.editAnmlYield1Modal,'String','','Enable','off');
    set(gui.editAnmlYield2Modal,'String','','Enable','off');
    set(gui.editAnmlYield3Modal,'String','','Enable','off');
    set(gui.editAnmlYield4Modal,'String','','Enable','off');
    set(gui.editAnmlYield5Modal,'String','','Enable','off');
    
    set(gui.editEngyCropYield1Modal,'String','','Enable','off');
    set(gui.editEngyCropYield2Modal,'String','','Enable','off');
    set(gui.editEngyCropYield3Modal,'String','','Enable','off');
    set(gui.editEngyCropYield4Modal,'String','','Enable','off');
    set(gui.editEngyCropYield5Modal,'String','','Enable','off');
    
    set(gui.editOtherYield1Modal,'String','','Enable','off');
    set(gui.editOtherYield2Modal,'String','','Enable','off');
    set(gui.editOtherYield3Modal,'String','','Enable','off');
    set(gui.editOtherYield4Modal,'String','','Enable','off');
    set(gui.editOtherYield5Modal,'String','','Enable','off');
    
end

%% Radio button responses for energy conversion parameter distributions
if strcmpi( 'triangularEnergyConversionTab', get( src, 'Tag' ) )
    set(gui.triangularEnergyConversionTab,'Value',1);
    set(gui.uniformEnergyConversionTab,'Value',0);
    
    s = mean([str2double(get(gui.energyInMethaneMin,'String')) str2double(get(gui.energyInMethaneMax,'String'))]);
    set(gui.energyInMethaneModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.methaneInBiogasMin,'String')) str2double(get(gui.methaneInBiogasMax,'String'))]);
    set(gui.methaneInBiogasModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.chpElectricityEfficiencyMin,'String')) str2double(get(gui.chpElectricityEfficiencyMax,'String'))]);
    set(gui.chpElectricityEfficiencyModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.chpHeatEfficiencyMin,'String')) str2double(get(gui.chpHeatEfficiencyMax,'String'))]);
    set(gui.chpHeatEfficiencyModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.chpOverallInefficiencyMin,'String')) str2double(get(gui.chpOverallInefficiencyMax,'String'))]);
    set(gui.chpOverallInefficiencyModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on'); 
    s = mean([str2double(get(gui.parasiticLoadElectricityMin,'String')) str2double(get(gui.parasiticLoadElectricityMax,'String'))]);
    set(gui.parasiticLoadElectricityModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.parasiticLoadHeatMin,'String')) str2double(get(gui.parasiticLoadHeatMax,'String'))]);
    set(gui.parasiticLoadHeatModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
    s = mean([str2double(get(gui.DowntimeMin,'String')) str2double(get(gui.DowntimeMax,'String'))]);
    set(gui.DowntimeModal,'String',num2str(sprintf('%6.2f', s)),'Enable','on');
        
    uiwait(msgbox('All modal values have been set to the mean of minimum and maximum values.','Warning','Warn','modal'));
    
    
elseif strcmpi( 'uniformEnergyConversionTab', get( src, 'Tag' ))
    set(gui.uniformEnergyConversionTab,'Value',1);
    set(gui.triangularEnergyConversionTab,'Value',0);
    
    set(gui.energyInMethaneModal,'String','','Enable','off');
    set(gui.methaneInBiogasModal,'String','','Enable','off');
    set(gui.chpElectricityEfficiencyModal,'String','','Enable','off');
    set(gui.chpHeatEfficiencyModal,'String','','Enable','off');
    set(gui.chpOverallInefficiencyModal,'String','','Enable','off');
    
    set(gui.parasiticLoadElectricityModal,'String','','Enable','off');
    set(gui.parasiticLoadHeatModal,'String','','Enable','off');
    set(gui.DowntimeModal,'String','','Enable','off');
    
end

end % onListSelection
