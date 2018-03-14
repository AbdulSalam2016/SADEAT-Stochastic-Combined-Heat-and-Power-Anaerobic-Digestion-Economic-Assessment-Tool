function checkTriangularUniformEntryConsistency(src,gui)

%% Triangular distribution for 'Quantity'
if get(gui.triangularQuantity,'Value') == 1
    if strcmpi(get(src,'Tag'),'editAnmlFeed1Min') || strcmpi(get(src,'Tag'),'editAnmlFeed1Modal') || strcmpi(get(src,'Tag'),'editAnmlFeed1Max')
        val1 = str2double(get(gui.editAnmlFeed1Min,'String')); val2 = str2double(get(gui.editAnmlFeed1Modal,'String')); val3 = str2double(get(gui.editAnmlFeed1Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed2Min') || strcmpi(get(src,'Tag'),'editAnmlFeed2Modal') || strcmpi(get(src,'Tag'),'editAnmlFeed2Max')
        val1 = str2double(get(gui.editAnmlFeed2Min,'String')); val2 = str2double(get(gui.editAnmlFeed2Modal,'String')); val3 = str2double(get(gui.editAnmlFeed2Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed3Min') || strcmpi(get(src,'Tag'),'editAnmlFeed3Modal') || strcmpi(get(src,'Tag'),'editAnmlFeed3Max')
        val1 = str2double(get(gui.editAnmlFeed3Min,'String')); val2 = str2double(get(gui.editAnmlFeed3Modal,'String')); val3 = str2double(get(gui.editAnmlFeed3Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed4Min') || strcmpi(get(src,'Tag'),'editAnmlFeed4Modal') || strcmpi(get(src,'Tag'),'editAnmlFeed4Max')
        val1 = str2double(get(gui.editAnmlFeed4Min,'String')); val2 = str2double(get(gui.editAnmlFeed4Modal,'String')); val3 = str2double(get(gui.editAnmlFeed4Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed5Min') || strcmpi(get(src,'Tag'),'editAnmlFeed5Modal') || strcmpi(get(src,'Tag'),'editAnmlFeed5Max')
        val1 = str2double(get(gui.editAnmlFeed5Min,'String')); val2 = str2double(get(gui.editAnmlFeed5Modal,'String')); val3 = str2double(get(gui.editAnmlFeed5Max,'String'));
        checkTriangular(src,val1,val2,val3);
    end
    
    
    if strcmpi(get(src,'Tag'),'editEngyCropFeed1Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed1Modal') || strcmpi(get(src,'Tag'),'editEngyCropFeed1Max')
        val1 = str2double(get(gui.editEngyCropFeed1Min,'String')); val2 = str2double(get(gui.editEngyCropFeed1Modal,'String')); val3 = str2double(get(gui.editEngyCropFeed1Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed2Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed2Modal') || strcmpi(get(src,'Tag'),'editEngyCropFeed2Max')
        val1 = str2double(get(gui.editEngyCropFeed2Min,'String')); val2 = str2double(get(gui.editEngyCropFeed2Modal,'String')); val3 = str2double(get(gui.editEngyCropFeed2Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed3Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed3Modal') || strcmpi(get(src,'Tag'),'editEngyCropFeed3Max')
        val1 = str2double(get(gui.editEngyCropFeed3Min,'String')); val2 = str2double(get(gui.editEngyCropFeed3Modal,'String')); val3 = str2double(get(gui.editEngyCropFeed3Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed4Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed4Modal') || strcmpi(get(src,'Tag'),'editEngyCropFeed4Max')
        val1 = str2double(get(gui.editEngyCropFeed4Min,'String')); val2 = str2double(get(gui.editEngyCropFeed4Modal,'String')); val3 = str2double(get(gui.editEngyCropFeed4Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed5Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed5Modal') || strcmpi(get(src,'Tag'),'editEngyCropFeed5Max')
        val1 = str2double(get(gui.editEngyCropFeed5Min,'String')); val2 = str2double(get(gui.editEngyCropFeed5Modal,'String')); val3 = str2double(get(gui.editEngyCropFeed5Max,'String'));
        checkTriangular(src,val1,val2,val3);
    end
    
    if strcmpi(get(src,'Tag'),'editOtherFeed1Min') || strcmpi(get(src,'Tag'),'editOtherFeed1Modal') || strcmpi(get(src,'Tag'),'editOtherFeed1Max')
        val1 = str2double(get(gui.editOtherFeed1Min,'String')); val2 = str2double(get(gui.editOtherFeed1Modal,'String')); val3 = str2double(get(gui.editOtherFeed1Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed2Min') || strcmpi(get(src,'Tag'),'editOtherFeed2Modal') || strcmpi(get(src,'Tag'),'editOtherFeed2Max')
        val1 = str2double(get(gui.editOtherFeed2Min,'String')); val2 = str2double(get(gui.editOtherFeed2Modal,'String')); val3 = str2double(get(gui.editOtherFeed2Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed3Min') || strcmpi(get(src,'Tag'),'editOtherFeed3Modal') || strcmpi(get(src,'Tag'),'editOtherFeed3Max')
        val1 = str2double(get(gui.editOtherFeed3Min,'String')); val2 = str2double(get(gui.editOtherFeed3Modal,'String')); val3 = str2double(get(gui.editOtherFeed3Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed4Min') || strcmpi(get(src,'Tag'),'editOtherFeed4Modal') || strcmpi(get(src,'Tag'),'editOtherFeed4Max')
        val1 = str2double(get(gui.editOtherFeed4Min,'String')); val2 = str2double(get(gui.editOtherFeed4Modal,'String')); val3 = str2double(get(gui.editOtherFeed4Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed5Min') || strcmpi(get(src,'Tag'),'editOtherFeed5Modal') || strcmpi(get(src,'Tag'),'editOtherFeed5Max')
        val1 = str2double(get(gui.editOtherFeed5Min,'String')); val2 = str2double(get(gui.editOtherFeed5Modal,'String')); val3 = str2double(get(gui.editOtherFeed5Max,'String'));
        checkTriangular(src,val1,val2,val3);
    end
    
end

%% Triangular distribution for 'Yield'
if get(gui.triangularYield,'Value') == 1
    if strcmpi(get(src,'Tag'),'editAnmlYield1Min') || strcmpi(get(src,'Tag'),'editAnmlYield1Modal') || strcmpi(get(src,'Tag'),'editAnmlYield1Max')
        val1 = str2double(get(gui.editAnmlYield1Min,'String')); val2 = str2double(get(gui.editAnmlYield1Modal,'String')); val3 = str2double(get(gui.editAnmlYield1Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield2Min') || strcmpi(get(src,'Tag'),'editAnmlYield2Modal') || strcmpi(get(src,'Tag'),'editAnmlYield2Max')
        val1 = str2double(get(gui.editAnmlYield2Min,'String')); val2 = str2double(get(gui.editAnmlYield2Modal,'String')); val3 = str2double(get(gui.editAnmlYield2Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield3Min') || strcmpi(get(src,'Tag'),'editAnmlYield3Modal') || strcmpi(get(src,'Tag'),'editAnmlYield3Max')
        val1 = str2double(get(gui.editAnmlYield3Min,'String')); val2 = str2double(get(gui.editAnmlYield3Modal,'String')); val3 = str2double(get(gui.editAnmlYield3Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield4Min') || strcmpi(get(src,'Tag'),'editAnmlYield4Modal') || strcmpi(get(src,'Tag'),'editAnmlYield4Max')
        val1 = str2double(get(gui.editAnmlYield4Min,'String')); val2 = str2double(get(gui.editAnmlYield4Modal,'String')); val3 = str2double(get(gui.editAnmlYield4Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield5Min') || strcmpi(get(src,'Tag'),'editAnmlYield5Modal') || strcmpi(get(src,'Tag'),'editAnmlYield5Max')
        val1 = str2double(get(gui.editAnmlYield5Min,'String')); val2 = str2double(get(gui.editAnmlYield5Modal,'String')); val3 = str2double(get(gui.editAnmlYield5Max,'String'));
        checkTriangular(src,val1,val2,val3);
    end
    
    
    if strcmpi(get(src,'Tag'),'editEngyCropYield1Min') || strcmpi(get(src,'Tag'),'editEngyCropYield1Modal') || strcmpi(get(src,'Tag'),'editEngyCropYield1Max')
        val1 = str2double(get(gui.editEngyCropYield1Min,'String')); val2 = str2double(get(gui.editEngyCropYield1Modal,'String')); val3 = str2double(get(gui.editEngyCropYield1Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield2Min') || strcmpi(get(src,'Tag'),'editEngyCropYield2Modal') || strcmpi(get(src,'Tag'),'editEngyCropYield2Max')
        val1 = str2double(get(gui.editEngyCropYield2Min,'String')); val2 = str2double(get(gui.editEngyCropYield2Modal,'String')); val3 = str2double(get(gui.editEngyCropYield2Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield3Min') || strcmpi(get(src,'Tag'),'editEngyCropYield3Modal') || strcmpi(get(src,'Tag'),'editEngyCropYield3Max')
        val1 = str2double(get(gui.editEngyCropYield3Min,'String')); val2 = str2double(get(gui.editEngyCropYield3Modal,'String')); val3 = str2double(get(gui.editEngyCropYield3Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield4Min') || strcmpi(get(src,'Tag'),'editEngyCropYield4Modal') || strcmpi(get(src,'Tag'),'editEngyCropYield4Max')
        val1 = str2double(get(gui.editEngyCropYield4Min,'String')); val2 = str2double(get(gui.editEngyCropYield4Modal,'String')); val3 = str2double(get(gui.editEngyCropYield4Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield5Min') || strcmpi(get(src,'Tag'),'editEngyCropYield5Modal') || strcmpi(get(src,'Tag'),'editEngyCropYield5Max')
        val1 = str2double(get(gui.editEngyCropYield5Min,'String')); val2 = str2double(get(gui.editEngyCropYield5Modal,'String')); val3 = str2double(get(gui.editEngyCropYield5Max,'String'));
        checkTriangular(src,val1,val2,val3);
    end
    
    if strcmpi(get(src,'Tag'),'editOtherYield1Min') || strcmpi(get(src,'Tag'),'editOtherYield1Modal') || strcmpi(get(src,'Tag'),'editOtherYield1Max')
        val1 = str2double(get(gui.editOtherYield1Min,'String')); val2 = str2double(get(gui.editOtherYield1Modal,'String')); val3 = str2double(get(gui.editOtherYield1Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherYield2Min') || strcmpi(get(src,'Tag'),'editOtherYield2Modal') || strcmpi(get(src,'Tag'),'editOtherYield2Max')
        val1 = str2double(get(gui.editOtherYield2Min,'String')); val2 = str2double(get(gui.editOtherYield2Modal,'String')); val3 = str2double(get(gui.editOtherYield2Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherYield3Min') || strcmpi(get(src,'Tag'),'editOtherYield3Modal') || strcmpi(get(src,'Tag'),'editOtherYield3Max')
        val1 = str2double(get(gui.editOtherYield3Min,'String')); val2 = str2double(get(gui.editOtherYield3Modal,'String')); val3 = str2double(get(gui.editOtherYield3Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherYield4Min') || strcmpi(get(src,'Tag'),'editOtherYield4Modal') || strcmpi(get(src,'Tag'),'editOtherYield4Max')
        val1 = str2double(get(gui.editOtherYield4Min,'String')); val2 = str2double(get(gui.editOtherYield4Modal,'String')); val3 = str2double(get(gui.editOtherYield4Max,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'editOtherYield5Min') || strcmpi(get(src,'Tag'),'editOtherYield5Modal') || strcmpi(get(src,'Tag'),'editOtherYield5Max')
        val1 = str2double(get(gui.editOtherYield5Min,'String')); val2 = str2double(get(gui.editOtherYield5Modal,'String')); val3 = str2double(get(gui.editOtherYield5Max,'String'));
        checkTriangular(src,val1,val2,val3);
    end
    
end

%% Uniform distribution for 'Quantity'
if get(gui.uniformQuantity,'Value') == 1
    if strcmpi(get(src,'Tag'),'editAnmlFeed1Min') || strcmpi(get(src,'Tag'),'editAnmlFeed1Max')
        val1 = str2double(get(gui.editAnmlFeed1Min,'String')); val2 = str2double(get(gui.editAnmlFeed1Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed2Min') || strcmpi(get(src,'Tag'),'editAnmlFeed2Max')
        val1 = str2double(get(gui.editAnmlFeed2Min,'String')); val2 = str2double(get(gui.editAnmlFeed2Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed3Min') || strcmpi(get(src,'Tag'),'editAnmlFeed3Max')
        val1 = str2double(get(gui.editAnmlFeed3Min,'String')); val2 = str2double(get(gui.editAnmlFeed3Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed4Min') || strcmpi(get(src,'Tag'),'editAnmlFeed4Max')
        val1 = str2double(get(gui.editAnmlFeed4Min,'String')); val2 = str2double(get(gui.editAnmlFeed4Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlFeed5Min') || strcmpi(get(src,'Tag'),'editAnmlFeed5Max')
        val1 = str2double(get(gui.editAnmlFeed5Min,'String')); val2 = str2double(get(gui.editAnmlFeed5Max,'String'));
        checkUniform(src,val1,val2);
    end
    
    if strcmpi(get(src,'Tag'),'editEngyCropFeed1Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed1Max')
        val1 = str2double(get(gui.editEngyCropFeed1Min,'String')); val2 = str2double(get(gui.editEngyCropFeed1Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed2Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed2Max')
        val1 = str2double(get(gui.editEngyCropFeed2Min,'String')); val2 = str2double(get(gui.editEngyCropFeed2Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed3Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed3Max')
        val1 = str2double(get(gui.editEngyCropFeed3Min,'String')); val2 = str2double(get(gui.editEngyCropFeed3Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed4Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed4Max')
        val1 = str2double(get(gui.editEngyCropFeed4Min,'String')); val2 = str2double(get(gui.editEngyCropFeed4Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropFeed5Min') || strcmpi(get(src,'Tag'),'editEngyCropFeed5Max')
        val1 = str2double(get(gui.editEngyCropFeed5Min,'String')); val2 = str2double(get(gui.editEngyCropFeed5Max,'String'));
        checkUniform(src,val1,val2);
    end
    
    if strcmpi(get(src,'Tag'),'editOtherFeed1Min') || strcmpi(get(src,'Tag'),'editOtherFeed1Max')
        val1 = str2double(get(gui.editOtherFeed1Min,'String')); val2 = str2double(get(gui.editOtherFeed1Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed2Min') || strcmpi(get(src,'Tag'),'editOtherFeed2Max')
        val1 = str2double(get(gui.editOtherFeed2Min,'String')); val2 = str2double(get(gui.editOtherFeed2Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed3Min') || strcmpi(get(src,'Tag'),'editOtherFeed3Max')
        val1 = str2double(get(gui.editOtherFeed3Min,'String')); val2 = str2double(get(gui.editOtherFeed3Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed4Min') || strcmpi(get(src,'Tag'),'editOtherFeed4Max')
        val1 = str2double(get(gui.editOtherFeed4Min,'String')); val2 = str2double(get(gui.editOtherFeed4Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherFeed5Min') || strcmpi(get(src,'Tag'),'editOtherFeed5Max')
        val1 = str2double(get(gui.editOtherFeed5Min,'String')); val2 = str2double(get(gui.editOtherFeed5Max,'String'));
        checkUniform(src,val1,val2);
    end
end

%% Uniform distribution for 'Yield'
if get(gui.uniformYield,'Value') == 1
    if strcmpi(get(src,'Tag'),'editAnmlYield1Min') || strcmpi(get(src,'Tag'),'editAnmlYield1Max')
        val1 = str2double(get(gui.editAnmlYield1Min,'String')); val2 = str2double(get(gui.editAnmlYield1Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield2Min') || strcmpi(get(src,'Tag'),'editAnmlYield2Max')
        val1 = str2double(get(gui.editAnmlYield2Min,'String')); val2 = str2double(get(gui.editAnmlYield2Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield3Min') || strcmpi(get(src,'Tag'),'editAnmlYield3Max')
        val1 = str2double(get(gui.editAnmlYield3Min,'String')); val2 = str2double(get(gui.editAnmlYield3Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield4Min') || strcmpi(get(src,'Tag'),'editAnmlYield4Max')
        val1 = str2double(get(gui.editAnmlYield4Min,'String')); val2 = str2double(get(gui.editAnmlYield4Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editAnmlYield5Min') || strcmpi(get(src,'Tag'),'editAnmlYield5Max')
        val1 = str2double(get(gui.editAnmlYield5Min,'String')); val2 = str2double(get(gui.editAnmlYield5Max,'String'));
        checkUniform(src,val1,val2);
    end
    
    if strcmpi(get(src,'Tag'),'editEngyCropYield1Min') || strcmpi(get(src,'Tag'),'editEngyCropYield1Max')
        val1 = str2double(get(gui.editEngyCropYield1Min,'String')); val2 = str2double(get(gui.editEngyCropYield1Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield2Min') || strcmpi(get(src,'Tag'),'editEngyCropYield2Max')
        val1 = str2double(get(gui.editEngyCropYield2Min,'String')); val2 = str2double(get(gui.editEngyCropYield2Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield3Min') || strcmpi(get(src,'Tag'),'editEngyCropYield3Max')
        val1 = str2double(get(gui.editEngyCropYield3Min,'String')); val2 = str2double(get(gui.editEngyCropYield3Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield4Min') || strcmpi(get(src,'Tag'),'editEngyCropYield4Max')
        val1 = str2double(get(gui.editEngyCropYield4Min,'String')); val2 = str2double(get(gui.editEngyCropYield4Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editEngyCropYield5Min') || strcmpi(get(src,'Tag'),'editEngyCropYield5Max')
        val1 = str2double(get(gui.editEngyCropYield5Min,'String')); val2 = str2double(get(gui.editEngyCropYield5Max,'String'));
        checkUniform(src,val1,val2);
    end
    
    if strcmpi(get(src,'Tag'),'editOtherYield1Min') || strcmpi(get(src,'Tag'),'editOtherYield1Max')
        val1 = str2double(get(gui.editOtherYield1Min,'String')); val2 = str2double(get(gui.editOtherYield1Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherYield2Min') || strcmpi(get(src,'Tag'),'editOtherYield2Max')
        val1 = str2double(get(gui.editOtherYield2Min,'String')); val2 = str2double(get(gui.editOtherYield2Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherYield3Min') || strcmpi(get(src,'Tag'),'editOtherYield3Max')
        val1 = str2double(get(gui.editOtherYield3Min,'String')); val2 = str2double(get(gui.editOtherYield3Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherYield4Min') || strcmpi(get(src,'Tag'),'editOtherYield4Max')
        val1 = str2double(get(gui.editOtherYield4Min,'String')); val2 = str2double(get(gui.editOtherYield4Max,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'editOtherYield5Min') || strcmpi(get(src,'Tag'),'editOtherYield5Max')
        val1 = str2double(get(gui.editOtherYield5Min,'String')); val2 = str2double(get(gui.editOtherYield5Max,'String'));
        checkUniform(src,val1,val2);
    end
end

%% Triangular distribution for energy conversion parameter
if get(gui.triangularEnergyConversionTab,'Value') == 1
    if strcmpi(get(src,'Tag'),'energyInMethaneMin') || strcmpi(get(src,'Tag'),'energyInMethaneModal') || strcmpi(get(src,'Tag'),'energyInMethaneMax')
        val1 = str2double(get(gui.energyInMethaneMin,'String')); val2 = str2double(get(gui.energyInMethaneModal,'String')); val3 = str2double(get(gui.energyInMethaneMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'methaneInBiogasMin') || strcmpi(get(src,'Tag'),'methaneInBiogasModal') || strcmpi(get(src,'Tag'),'methaneInBiogasMax')
        val1 = str2double(get(gui.methaneInBiogasMin,'String')); val2 = str2double(get(gui.methaneInBiogasModal,'String')); val3 = str2double(get(gui.methaneInBiogasMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'chpElectricityEfficiencyMin') || strcmpi(get(src,'Tag'),'chpElectricityEfficiencyModal') || strcmpi(get(src,'Tag'),'chpElectricityEfficiencyMax')
        val1 = str2double(get(gui.chpElectricityEfficiencyMin,'String')); val2 = str2double(get(gui.chpElectricityEfficiencyModal,'String')); val3 = str2double(get(gui.chpElectricityEfficiencyMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'chpHeatEfficiencyMin') || strcmpi(get(src,'Tag'),'chpHeatEfficiencyModal') || strcmpi(get(src,'Tag'),'chpHeatEfficiencyMax')
        val1 = str2double(get(gui.chpHeatEfficiencyMin,'String')); val2 = str2double(get(gui.chpHeatEfficiencyModal,'String')); val3 = str2double(get(gui.chpHeatEfficiencyMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'chpOverallInefficiencyMin') || strcmpi(get(src,'Tag'),'chpOverallInefficiencyModal') || strcmpi(get(src,'Tag'),'chpOverallInefficiencyMax')
        val1 = str2double(get(gui.chpOverallInefficiencyMin,'String')); val2 = str2double(get(gui.chpOverallInefficiencyModal,'String')); val3 = str2double(get(gui.chpOverallInefficiencyMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'parasiticLoadElectricityMin') || strcmpi(get(src,'Tag'),'parasiticLoadElectricityModal') || strcmpi(get(src,'Tag'),'parasiticLoadElectricityMax')
        val1 = str2double(get(gui.parasiticLoadElectricityMin,'String')); val2 = str2double(get(gui.parasiticLoadElectricityModal,'String')); val3 = str2double(get(gui.parasiticLoadElectricityMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'parasiticLoadHeatMin') || strcmpi(get(src,'Tag'),'parasiticLoadHeatModal') || strcmpi(get(src,'Tag'),'parasiticLoadHeatMax')
        val1 = str2double(get(gui.parasiticLoadHeatMin,'String')); val2 = str2double(get(gui.parasiticLoadHeatModal,'String')); val3 = str2double(get(gui.parasiticLoadHeatMax,'String'));
        checkTriangular(src,val1,val2,val3);
    elseif strcmpi(get(src,'Tag'),'DowntimeMin') || strcmpi(get(src,'Tag'),'DowntimeModal') || strcmpi(get(src,'Tag'),'DowntimeMax')
        val1 = str2double(get(gui.DowntimeMin,'String')); val2 = str2double(get(gui.DowntimeModal,'String')); val3 = str2double(get(gui.DowntimeMax,'String'));
        checkTriangular(src,val1,val2,val3);
        
    end
end


%% check uniform distribution for energy conversion parameters
if get(gui.uniformEnergyConversionTab,'Value') == 1
    if strcmpi(get(src,'Tag'),'energyInMethaneMin') || strcmpi(get(src,'Tag'),'energyInMethaneMax')
        val1 = str2double(get(gui.energyInMethaneMin,'String')); val2 = str2double(get(gui.energyInMethaneMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'methaneInBiogasMin') || strcmpi(get(src,'Tag'),'methaneInBiogasMax')
        val1 = str2double(get(gui.methaneInBiogasMin,'String')); val2 = str2double(get(gui.methaneInBiogasMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'chpElectricityEfficiencyMin') || strcmpi(get(src,'Tag'),'chpElectricityEfficiencyMax')
        val1 = str2double(get(gui.chpElectricityEfficiencyMin,'String')); val2 = str2double(get(gui.chpElectricityEfficiencyMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'chpHeatEfficiencyMin') || strcmpi(get(src,'Tag'),'chpHeatEfficiencyMax')
        val1 = str2double(get(gui.chpHeatEfficiencyMin,'String')); val2 = str2double(get(gui.chpHeatEfficiencyMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'chpOverallInefficiencyMin') || strcmpi(get(src,'Tag'),'chpOverallInefficiencyMax')
        val1 = str2double(get(gui.chpOverallInefficiencyMin,'String')); val2 = str2double(get(gui.chpOverallInefficiencyMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'parasiticLoadElectricityMin') || strcmpi(get(src,'Tag'),'parasiticLoadElectricityMax')
        val1 = str2double(get(gui.parasiticLoadElectricityMin,'String')); val2 = str2double(get(gui.parasiticLoadElectricityMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'parasiticLoadHeatMin') || strcmpi(get(src,'Tag'),'parasiticLoadHeatMax')
        val1 = str2double(get(gui.parasiticLoadHeatMin,'String')); val2 = str2double(get(gui.parasiticLoadHeatMax,'String'));
        checkUniform(src,val1,val2);
    elseif strcmpi(get(src,'Tag'),'DowntimeMin') || strcmpi(get(src,'Tag'),'DowntimeMax')
        val1 = str2double(get(gui.DowntimeMin,'String')); val2 = str2double(get(gui.DowntimeMax,'String'));
        checkUniform(src,val1,val2);
    end
end

%%
% check triangular case
    function checkTriangular(src,val1,val2,val3)
        if val1 > val2 || val1 > val3 || val2 > val3
            previousValue = getappdata(src,'prevValue');
            set(src,'String',num2str(previousValue,'%6.2f'));
            msg = sprintf(['Inconsistent entry:\n',...
                ' If the value you are entering is a minimum, it should not be greater than the current input for modal or maximum.\n',...
                ' If the value you are entering is a modal, it should not be less than the current input for minimum, or greater than the current input for maximum.\n',...
                ' If the value you are entering is a maximum, it should not be less than the current input for minimum or modal.\n',...
                ' The previous value in the box has been restored.']);
            uiwait(msgbox(msg,'Error','Warn','modal'));
        end
    end

% check uniform case
    function checkUniform(src,val1,val2)
        if val1 > val2
            previousValue = getappdata(src,'prevValue');
            set(src,'String',num2str(previousValue,'%6.2f'));
            msg = sprintf(['Inconsistent entry:\n',...
                ' If the value you are entering is a minimum, it should not be greater than the current input for maximum.\n',...
                ' If the value you are entering is a maximum, it should not be less than the current input for minimum.\n',...
                ' The previous value in the box has been restored.']);
            uiwait(msgbox(msg,'Error','Warn','modal'));        end
    end

end