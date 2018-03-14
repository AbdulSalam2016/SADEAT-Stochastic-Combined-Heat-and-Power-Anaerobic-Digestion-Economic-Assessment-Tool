function [gui,data] = createWelcomeTabInterface(welcome,gui,data,logoHutton,logoAD,logoMDT)

ADLOGO = uix.VBox( 'Parent', welcome,'Padding', 3, 'Spacing', 3 );
positionADLogo = get(ADLOGO, 'Position');
f1 = axes('Parent',ADLOGO,'Position',positionADLogo);
imshow(logoAD,'Parent',f1,'InitialMagnification','fit','XData', [0 .5], 'YData', [0 .1]);
set( ADLOGO, 'Height', [-1] );

headlineText1 = uix.VBox( 'Parent', welcome,'Padding', 3, 'Spacing', 3 );
uicontrol('Parent',headlineText1,'Style','text','String', data.programTitle,...
    'HorizontalAlignment','center','FontSize',18,'FontWeight','Bold','ForegroundColor','blue') ;
uicontrol('Parent',headlineText1,'Style','text','String', 'SADEAT',...
    'HorizontalAlignment','center','FontSize',18,'FontWeight','Bold','ForegroundColor','blue') ;
set( headlineText1, 'Heights', [-1 -1] );

myDetails = uix.VBox( 'Parent', welcome,'Padding', 3, 'Spacing', 3 );
uicontrol('Parent',myDetails,'Style','text','String','Developed by:',...
    'HorizontalAlignment','center','FontSize',12,'FontWeight','Bold','ForegroundColor','blue') ;
uicontrol('Parent',myDetails,'Style','text','String','Yakubu Abdul-Salam (PhD)',...
    'HorizontalAlignment','center','FontSize',12,'FontWeight','Bold','ForegroundColor','blue') ;
uicontrol('Parent',myDetails,'Style','text','String','The James Hutton Institute, Craigiebuckler, Aberdeen',...
    'HorizontalAlignment','center','FontSize',12,'FontWeight','Bold','ForegroundColor','blue') ;
uicontrol('Parent',myDetails,'Style','text','String','Acknowledgment: TB Macaulay Development Trust',...
    'HorizontalAlignment','center','FontSize',12,'FontWeight','Bold','ForegroundColor','blue') ;
uicontrol('Parent',myDetails,'Style','text','String','Copyright 2018',...
    'HorizontalAlignment','center','FontSize',12,'FontWeight','Bold','ForegroundColor','blue') ;

set( myDetails, 'Heights', [-1 28 28 28 -1] );


%
logoRegion = uix.HBox( 'Parent', welcome,'Padding', 3, 'Spacing', 3 );

HUTTONLOGO = uix.HBox( 'Parent', logoRegion,'Padding', 3, 'Spacing', 3 );
positionHuttonLogo = get(HUTTONLOGO, 'Position');
f1 = axes('Parent',HUTTONLOGO,'Position',positionHuttonLogo);
imshow(logoHutton,'Parent',f1);

MDTLOGO = uix.HBox( 'Parent', logoRegion,'Padding', 3, 'Spacing', 3 );
positionMDTLogo = get(MDTLOGO, 'Position');
f2 = axes('Parent',MDTLOGO,'Position',positionMDTLogo);
imshow(logoMDT,'Parent',f2);

uix.Empty( 'Parent', logoRegion );

contactDetails1 = uix.VBox( 'Parent', logoRegion,'Padding', 3, 'Spacing', 3 );
uix.Empty( 'Parent', contactDetails1 );
contactDetails2 = uix.VBox( 'Parent', contactDetails1,'Padding', 3, 'Spacing', 3 );
contactDetails = sprintf(['Contact the author: \nEmail: yaksamash@hotmail.com; yakubu.abdul-salam@hutton.ac.uk \nTel: +44(0)7488236665; +44(0)1224395453']);
gui.contactDetails = uicontrol('Parent',contactDetails2,'Style','text','HorizontalAlignment','left');
set( gui.contactDetails, 'String', contactDetails);
% uix.Empty( 'Parent', contactDetails1 );

set( logoRegion, 'Width', [-1 -1 -4 -2] );


%%
gui = gui;
data = data;

end