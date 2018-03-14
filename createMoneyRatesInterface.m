function [gui,data] = createMoneyRatesInterface(moneyRatesParametersTab,gui,data)


% Finance parameters
moneyRatesParametersPanelFrame = uix.Panel('Parent', moneyRatesParametersTab,'Padding', 3,'Title','Finance/money rates');
moneyRatesParametersPanel = uix.HBox('Parent', moneyRatesParametersPanelFrame,'Padding', 3, 'Spacing', 3);

% Items
moneyRatesParametersPanelItems = uix.VBox( 'Parent', moneyRatesParametersPanel,'Padding', 3, 'Spacing', 3);
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Prices','HorizontalAlignment','left','VerticalAlignment','middle','FontWeight','Bold');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Feed-in-tariff (FIT) for CHP AD generated electricity','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Export tariff for CHP AD generated electricity','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Renewable heat incentive (RHI) for CHP AD generated heat','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Export tariff for CHP AD generated heat','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Money rates','HorizontalAlignment','left','VerticalAlignment','middle','FontWeight','Bold');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Debt interest rate (0.01 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Inflation rate (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Cashflow discount rate (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','Tax rate (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','MIRR finance rate (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Text('Parent',moneyRatesParametersPanelItems,'String','MIRR reinvestment rate (0 - 100 %)','HorizontalAlignment','left','VerticalAlignment','middle');
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );
uix.Empty( 'Parent', moneyRatesParametersPanelItems );

% Information
moneyRatesParametersPanelInfo = uix.VBox( 'Parent', moneyRatesParametersPanel,'Padding', 3, 'Spacing', 3 );
uix.Text('Parent',moneyRatesParametersPanelInfo,'String','p/kWh','HorizontalAlignment','center','VerticalAlignment','middle');
gui.genFIT = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','8.21','Enable','on');
gui.expFIT = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','4.91','Enable','on');
gui.RHI = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','6.94','Enable','on');
gui.heatPrice = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','6.11','Enable','on');
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
gui.editInterestRate = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','6.50','Tag','editInterestRate','Enable','on');
gui.editInflationRate = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','3.00','Tag','editInflationRate','Enable','on');
gui.editDiscountRate = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','6.00','Tag','editDiscountRate','Enable','on');
gui.editTaxRate = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','0.00','Tag','editTaxRate','Enable','on');
gui.editFinanceRate = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','6.50','Tag','editFinanceRate','Enable','on');
gui.editReinvestmentRate = uicontrol('Parent',moneyRatesParametersPanelInfo,'Style','edit','String','9.00','Tag','editReinvestmentRate','Enable','on');

uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );
uix.Empty( 'Parent', moneyRatesParametersPanelInfo );


%
uix.Empty( 'Parent', moneyRatesParametersTab );
set( moneyRatesParametersTab, 'Widths', [-4 -3] );

end
