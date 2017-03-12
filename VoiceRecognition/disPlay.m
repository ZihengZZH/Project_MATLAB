function Transfer = disPlay(y1,y2)

global ar;
transfer = false;

disp('Arduino loaded successfully');

% Assign every pin according to first recognition result
switch y1
    case 1
        writeDigitalPin(ar,'D2',1);
        writeDigitalPin(ar,'D3',0);
        writeDigitalPin(ar,'D4',0);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 2
        writeDigitalPin(ar,'D2',0);
        writeDigitalPin(ar,'D3',1);
        writeDigitalPin(ar,'D4',0);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 3
        writeDigitalPin(ar,'D2',1);
        writeDigitalPin(ar,'D3',1);
        writeDigitalPin(ar,'D4',0);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 4
        writeDigitalPin(ar,'D2',0);
        writeDigitalPin(ar,'D3',0);
        writeDigitalPin(ar,'D4',1);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 5
        writeDigitalPin(ar,'D2',1);
        writeDigitalPin(ar,'D3',0);
        writeDigitalPin(ar,'D4',1);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 6
        writeDigitalPin(ar,'D2',0);
        writeDigitalPin(ar,'D3',1);
        writeDigitalPin(ar,'D4',1);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 7
        writeDigitalPin(ar,'D2',1);
        writeDigitalPin(ar,'D3',1);
        writeDigitalPin(ar,'D4',1);
        writeDigitalPin(ar,'D5',0);
        transfer = true;
    case 8
        writeDigitalPin(ar,'D2',0);
        writeDigitalPin(ar,'D3',0);
        writeDigitalPin(ar,'D4',0);
        writeDigitalPin(ar,'D5',1);
        transfer = true;
    case 9
        writeDigitalPin(ar,'D2',1);
        writeDigitalPin(ar,'D3',0);
        writeDigitalPin(ar,'D4',0);
        writeDigitalPin(ar,'D5',1);
        transfer = true;
    otherwise
end

switch y2
    case 1
        writeDigitalPin(ar,'D6',1);
        writeDigitalPin(ar,'D7',0);
        writeDigitalPin(ar,'D8',0);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 2
        writeDigitalPin(ar,'D6',0);
        writeDigitalPin(ar,'D7',1);
        writeDigitalPin(ar,'D8',0);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 3
        writeDigitalPin(ar,'D6',1);
        writeDigitalPin(ar,'D7',1);
        writeDigitalPin(ar,'D8',0);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 4
        writeDigitalPin(ar,'D6',0);
        writeDigitalPin(ar,'D7',0);
        writeDigitalPin(ar,'D8',1);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 5
        writeDigitalPin(ar,'D6',1);
        writeDigitalPin(ar,'D7',0);
        writeDigitalPin(ar,'D8',1);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 6
        writeDigitalPin(ar,'D6',0);
        writeDigitalPin(ar,'D7',1);
        writeDigitalPin(ar,'D8',1);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 7
        writeDigitalPin(ar,'D6',1);
        writeDigitalPin(ar,'D7',1);
        writeDigitalPin(ar,'D8',1);
        writeDigitalPin(ar,'D9',0);
        transfer = true;
    case 8
        writeDigitalPin(ar,'D6',0);
        writeDigitalPin(ar,'D7',0);
        writeDigitalPin(ar,'D8',0);
        writeDigitalPin(ar,'D9',1);
        transfer = true;
    case 9
        writeDigitalPin(ar,'D6',1);
        writeDigitalPin(ar,'D7',0);
        writeDigitalPin(ar,'D8',0);
        writeDigitalPin(ar,'D9',1);
        transfer = true;
    otherwise
end

Transfer = transfer;
