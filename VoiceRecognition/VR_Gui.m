function varargout = VR_Gui(varargin)
% VR_GUI MATLAB code for VR_Gui.fig
%      VR_GUI, by itself, creates a new VR_GUI or raises the existing
%      singleton*.
%
%      H = VR_GUI returns the handle to a new VR_GUI or the handle to
%      the existing singleton*.
%
%      VR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VR_GUI.M with the given input arguments.
%
%      VR_GUI('Property','Value',...) creates a new VR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VR_Gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VR_Gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VR_Gui

% Last Modified by GUIDE v2.5 09-Mar-2017 20:54:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VR_Gui_OpeningFcn, ...
                   'gui_OutputFcn',  @VR_Gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before VR_Gui is made visible.
function VR_Gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VR_Gui (see VARARGIN)

% Choose default command line output for VR_Gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VR_Gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = VR_Gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
im = imread('liverpool.bmp');
axes(handles.axes1);
imshow(im);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text2,'String',' ');
set(handles.text3,'String',' ');
set(handles.text7,'String','Reset');
set(handles.text12,'String',' ');
set(handles.text13,'String',' ');
set(handles.text14,'String',' ');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text7,'String','Start speaking');
result1 = recognition_1;
set(handles.text7,'String','End speaking');
[~,y1]=max(result1);
global yD1
yD1 = y1(2);
set(handles.text2,'String',num2str(result1));
RR1 = 'The recognition result is ';
SC1 = [RR1, num2str(yD1)];
set(handles.text7,'String',SC1);
set(handles.text12,'String',num2str(yD1));


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text7,'String','Start speaking');
result2 = recognition_2;
set(handles.text7,'String','End speaking');
[~,y2]=max(result2);
global yD2;
yD2 = y2(2);
set(handles.text3,'String',num2str(result2));
RR2 = 'The recognition result is ';
SC2 = [RR2, num2str(yD2)];
set(handles.text7,'String',SC2);
set(handles.text13,'String',num2str(yD2));


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yD1;
global yD2;
yD = yD1 + yD2;
set(handles.text14,'String',num2str(yD));
transFer = disPlay(yD1,yD2);
if (transFer)
    set(handles.text7,'String','Data-transfer Succeeded!');
else
    set(handles.text7,'String','Data-transfer Failed!');
end
