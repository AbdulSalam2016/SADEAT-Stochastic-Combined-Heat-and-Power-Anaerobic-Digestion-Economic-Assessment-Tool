function checkPercentage(src)
    previousValue = getappdata(src,'prevValue');
    set(src,'String',num2str(previousValue,'%6.2f'));
    uiwait(msgbox('Not allowed: Percentage must be greater than or equal to 0.00 and less than or equal to 100. The previous value in the box has been restored.','Error','Warn','modal'));
end