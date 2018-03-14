function onHelp( src, ~,gui,data )

%% check the option being run
set( get(gui.Help, 'Children'), 'Checked', 'off' );
set(src,'Checked','on');

%%
winopen('SADEAT v.1.0.1 User Guide - Stochastic (Combined Heat and Power) Anaerobic Digestion Economic Assessment Tool.pdf')

end 