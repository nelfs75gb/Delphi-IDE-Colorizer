type
  TBPWindow=class(TDockableToolbarForm)
  private
   FBreakpointIndex    :Integer;
   FEditingNode        :PVirtualNode;
   FActionListIndex    :Integer;
   FIDEDockType        :TIDEDockType;
   FDockEdge           :TAlign;
   FAboutToDestroy     :Boolean;
   FVisibleOnUndock    :Boolean;
   FAutoSave           :Boolean;
   FDeskSection        :string;
   FLocked             :Boolean;
   FLoadedFromDesktop  :Boolean;
   FSaveStateNecessary :Boolean;
   FWindowPlacement    :tagWINDOWPLACEMENT;
   FWindowPlacementDirty:Boolean;
   FActiveControl      :TWinControl;
   FFocusedControl     :TWinControl;
   FBorderIcons        :TBorderIcons;
   FBorderStyle        :TFormBorderStyle;
   FWindowState        :TWindowState;
   FShowAction         :TShowAction;
   FKeyPreview         :Boolean;
   FActive             :Boolean;
   FFormStyle          :TFormStyle;
   FPosition           :TPosition;
   FDefaultMonitor     :TDefaultMonitor;
   FTileMode           :TTileMode;
   FDropTarget         :Boolean;
   FPrintScale         :TPrintScale;
   FCanvas             :TControlCanvas;
   FHelpFile           :string;
   FIcon               :TIcon;
   FInCMParentBiDiModeChanged:Boolean;
   FMenu               :TMainMenu;
   FModalResult        :TModalResult;
   FDesigner           :IDesignerHook;
   FWindowMenu         :TMenuItem;
   FPixelsPerInch      :Integer;
   FObjectMenuItem     :TMenuItem;
   FOleForm            :IOleForm;
   FClientWidth        :Integer;
   FClientHeight       :Integer;
   FTextHeight         :Integer;
   FDefClientProc      :Pointer;
   FActiveOleControl   :TWinControl;
   FSavedBorderStyle   :TFormBorderStyle;
   FOnActivate         :TNotifyEvent;
   FOnClose            :TCloseEvent;
   FOnCloseQuery       :TCloseQueryEvent;
   FOnDeactivate       :TNotifyEvent;
   FOnHelp             :THelpEvent;
   FOnHide             :TNotifyEvent;
   FOnPaint            :TNotifyEvent;
   FOnShortCut         :TShortCutEvent;
   FOnShow             :TNotifyEvent;
   FOnCreate           :TNotifyEvent;
   FOnDestroy          :TNotifyEvent;
   FAlphaBlend         :Boolean;
   FAlphaBlendValue    :Byte;
   FPopupChildren      :TList;
   FPopupMode          :TPopupMode;
   FPopupParent        :TCustomForm;
   FRecreateChildren   :TList;
   FPopupWnds          :TPopupWndArray;
   FInternalPopupParent:TCustomForm;
   FInternalPopupParentWnd:HWND;
   FScreenSnap         :Boolean;
   FSnapBuffer         :Integer;
   FTransparentColor   :Boolean;
   FTransparentColorValue:TColor;
   FCreatingMainForm   :Boolean;
   FGlassFrame         :TGlassFrame;
   FRefreshGlassFrame  :Boolean;
   FOldCreateOrder     :Boolean;
   FClientHandle       :HWND;
   FClientInstance     :Pointer;
   FAutoRangeCount     :Integer;
   FAutoScroll         :Boolean;
   FHorzScrollBar      :TControlScrollBar;
   FPanPoint           :TPoint;
   FUpdatingScrollBars :Boolean;
   FVertScrollBar      :TControlScrollBar;
   FAlignControlList   :TList;
   FAlignLevel         :Word;
   FBevelEdges         :TBevelEdges;
   FBevelInner         :TBevelCut;
   FBevelOuter         :TBevelCut;
   FBevelKind          :TBevelKind;
   FBevelWidth         :TBevelWidth;
   FBorderWidth        :TBorderWidth;
   FPadding            :TPadding;
   FBrush              :TBrush;
   FDockClients        :TList;
   FDockManager        :IDockManager;
   FImeMode            :TImeMode;
   FImeName            :TImeName;
   FParentWindow       :HWND;
   FTabList            :TList;
   FTipMode            :TTipMode;
   FControls           :TList;
   FWinControls        :TList;
   FTabOrder           :Integer;
   FTabStop            :Boolean;
   FTIPIntf            :IInterface;
   FCtl3D              :Boolean;
   FShowing            :Boolean;
   FUseDockManager     :Boolean;
   FDockSite           :Boolean;
   FParentCtl3D        :Boolean;
   FParentDoubleBuffered:Boolean;
   FPerformingShowingChanged:Boolean;
   FOnDockDrop         :TDockDropEvent;
   FOnDockOver         :TDockOverEvent;
   FOnEnter            :TNotifyEvent;
   FOnExit             :TNotifyEvent;
   FOnGetSiteInfo      :TGetSiteInfoEvent;
   FOnKeyDown          :TKeyEvent;
   FOnKeyPress         :TKeyPressEvent;
   FOnKeyUp            :TKeyEvent;
   FOnUnDock           :TUnDockEvent;
   FOnAlignInsertBefore:TAlignInsertBeforeEvent;
   FOnAlignPosition    :TAlignPositionEvent;
   FMouseInClient      :Boolean;
   FMouseControl       :TControl;
   FTouchControl       :TControl;
   FDefWndProc         :Pointer;
   FHandle             :HWND;
   FObjectInstance     :Pointer;
   FParent             :TWinControl;
   FWindowProc         :TWndMethod;
   FLeft               :Integer;
   FTop                :Integer;
   FWidth              :Integer;
   FHeight             :Integer;
   FControlStyle       :TControlStyle;
   FControlState       :TControlState;
   FDesktopFont        :Boolean;
   FVisible            :Boolean;
   FEnabled            :Boolean;
   FParentFont         :Boolean;
   FParentColor        :Boolean;
   FAlign              :TAlign;
   FAutoSize           :Boolean;
   FDragMode           :TDragMode;
   FIsControl          :Boolean;
   FBiDiMode           :TBiDiMode;
   FParentBiDiMode     :Boolean;
   FAnchors            :TAnchors;
   FFont               :TFont;
   FActionLink         :TControlActionLink;
   FColor              :TColor;
   FConstraints        :TSizeConstraints;
   FMargins            :TMargins;
   FCursor             :TCursor;
   FDragCursor         :TCursor;
   FPopupMenu          :TPopupMenu;
   FHint               :string;
   FFontHeight         :Integer;
   FScalingFlags       :TScalingFlags;
   FShowHint           :Boolean;
   FParentShowHint     :Boolean;
   FDragKind           :TDragKind;
   FDockOrientation    :TDockOrientation;
   FHostDockSite       :TWinControl;
   FWheelAccumulator   :Integer;
   FUndockWidth        :Integer;
   FUndockHeight       :Integer;
   FLRDockWidth        :Integer;
   FTBDockHeight       :Integer;
   FFloatingDockSiteClass:TWinControlClass;
   FTouchManager       :TTouchManager;
   FOnCanResize        :TCanResizeEvent;
   FOnConstrainedResize:TConstrainedResizeEvent;
   FOnMouseDown        :TMouseEvent;
   FOnMouseMove        :TMouseMoveEvent;
   FOnMouseUp          :TMouseEvent;
   FOnDragDrop         :TDragDropEvent;
   FOnDragOver         :TDragOverEvent;
   FOnResize           :TNotifyEvent;
   FOnStartDock        :TStartDockEvent;
   FOnEndDock          :TEndDragEvent;
   FOnStartDrag        :TStartDragEvent;
   FOnEndDrag          :TEndDragEvent;
   FOnClick            :TNotifyEvent;
   FOnDblClick         :TNotifyEvent;
   FOnContextPopup     :TContextPopupEvent;
   FOnMouseActivate    :TMouseActivateEvent;
   FOnMouseLeave       :TNotifyEvent;
   FOnMouseEnter       :TNotifyEvent;
   FOnMouseWheel       :TMouseWheelEvent;
   FOnMouseWheelDown   :TMouseWheelUpDownEvent;
   FOnMouseWheelUp     :TMouseWheelUpDownEvent;
   FOnGesture          :TGestureEvent;
   FHelpType           :THelpType;
   FHelpKeyword        :string;
   FHelpContext        :THelpContext;
   FCustomHint         :TCustomHint;
   FParentCustomHint   :Boolean;
   FText               :PWideChar;
   FStyleElements      :TStyleElements;
   FOwner              :TComponent;
   FName               :TComponentName;
   FTag                :NativeInt;
   FComponents         :TList<System.Classes.TComponent>;
   FFreeNotifies       :TList<System.Classes.TComponent>;
   FDesignInfo         :Integer;
   FComponentState     :TComponentState;
   FVCLComObject       :Pointer;
   FObservers          :TObservers;
   FSortedComponents   :TList<System.Classes.TComponent>;
   function GetDockClients(Index: Integer): TControl;
   function GetControl(Index: Integer): TControl;
   function GetComponent(AIndex: Integer): TComponent;
  protected
   FDockable           :Boolean;
   FLastLoadedBounds   :TRect;
   FDockingTouched     :Boolean;
   FFormState          :TFormState;
   FDoubleBuffered     :Boolean;
   FInImeComposition   :Boolean;
   FDesignSize         :TPoint;
   FAnchorMove         :Boolean;
   FAnchorRules        :TPoint;
   FAnchorOrigin       :TPoint;
   FOriginalParentSize :TPoint;
   FExplicitLeft       :Integer;
   FExplicitTop        :Integer;
   FExplicitWidth      :Integer;
   FExplicitHeight     :Integer;
   FReserved           :Pointer;
   FComponentStyle     :TComponentStyle;
   function get_MDIChildren(I: Integer): TForm;
   function get_MDIChildren(I: Integer): TForm;
  public
   procedure SaveWindowState(Desktop: TCustomIniFile; isProject: Boolean);
   procedure LoadWindowState(Desktop: TCustomIniFile);
   procedure UpdateContents;
   procedure SourceBreakpointHandler(Sender: TObject; const ABP: IOTASourceBreakpoint);
   procedure BreakpointHandler(Sender: TObject; const ABP: IOTABreakpoint);
   procedure CurrentProcessChanged(Sender: TObject; const Process: IOTAProcess);
   procedure CurrentDebuggerChanged(Sender: TObject);
   procedure EditViewSource(ViewOnly: Boolean);
   function GetEditState: TEditState;
   procedure SaveWindowState(Desktop: TCustomIniFile; isProject: Boolean);
   procedure LoadWindowState(Desktop: TCustomIniFile);
   constructor Create(AOwner: TComponent);
   procedure ForceShow;
   procedure GetTabDockRect(var ARect: TRect);
   function ToggleDockable: Boolean;
   procedure SaveWindowState(Desktop: TCustomIniFile; isProject: Boolean);
   procedure LoadWindowState(Desktop: TCustomIniFile);
   class destructor Destroy;
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   function EditAction(Action: TEditAction): Boolean;
   function GetEditState: TEditState;
   procedure SaveWindowState(Desktop: TCustomIniFile; isProject: Boolean);
   procedure LoadWindowState(Desktop: TCustomIniFile);
   procedure LockUpdates;
   procedure Repaint;
   function ShouldAutoHide: Boolean;
   procedure SaveDockClients(DeskTop: TCustomIniFile; const IsProject: Boolean; const Section: string; DockSite: TWinControl);
   procedure SaveDockStream(DeskTop: TCustomIniFile; const Section: string; DockSite: TWinControl);
   function LoadDockClients(DeskTop: TCustomIniFile; const Section: string; DockSite: TWinControl): Boolean;
   procedure LoadDockStream(DeskTop: TCustomIniFile; const Section: string; DockSite: TWinControl);
   procedure ArrangeIcons;
   procedure Cascade;
   procedure Next;
   procedure Previous;
   procedure Tile;
   constructor Create(AOwner: TComponent);
   constructor CreateNew(AOwner: TComponent; Dummy: Integer);
   class destructor Destroy;
   procedure Close;
   function CloseQuery: Boolean;
   procedure DefaultHandler(var Message);
   procedure DefocusControl(Control: TWinControl; Removing: Boolean);
   procedure Dock(NewDockSite: TWinControl; ARect: TRect);
   procedure FocusControl(Control: TWinControl);
   procedure GetChildren(Proc: TGetChildProc = procedure(Child: TComponent) of object; Root: TComponent);
   function GetFormImage: TBitmap;
   procedure Hide;
   function IsShortCut(var Message: TWMKey): Boolean;
   procedure MakeFullyVisible(AMonitor: TMonitor);
   procedure MouseWheelHandler(var Message: TMessage);
   procedure Print;
   procedure RecreateAsPopup(AWindowHandle: HWND);
   procedure Release;
   procedure SendCancelMode(Sender: TControl);
   procedure SetFocus;
   function SetFocusedControl(Control: TWinControl): Boolean;
   procedure Show;
   function ShowModal: Integer;
   function WantChildKey(Child: TControl; var Message: TMessage): Boolean;
   procedure set_PopupParent(Value: TCustomForm);
   procedure AfterConstruction;
   procedure BeforeDestruction;
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure DisableAutoRange;
   procedure EnableAutoRange;
   procedure ScrollInView(AControl: TControl);
   constructor Create(AOwner: TComponent);
   constructor CreateParented(ParentWindow: HWND);
   class function CreateParentedControl(ParentWindow: HWND): TWinControl;
   class destructor Destroy;
   procedure Broadcast(var Message);
   function CanFocus: Boolean;
   function ContainsControl(Control: TControl): Boolean;
   function ControlAtPos(const Pos: TPoint; AllowDisabled: Boolean; AllowWinControls: Boolean; AllLevels: Boolean): TControl;
   procedure DefaultHandler(var Message);
   procedure DisableAlign;
   procedure DockDrop(Source: TDragDockObject; X: Integer; Y: Integer);
   procedure EnableAlign;
   function FindChildControl(const ControlName: string): TControl;
   procedure FlipChildren(AllLevels: Boolean);
   function Focused: Boolean;
   procedure GetChildren(Proc: TGetChildProc = procedure(Child: TComponent) of object; Root: TComponent);
   procedure GetTabControlList(List: TList);
   procedure GetTabOrderList(List: TList);
   function HandleAllocated: Boolean;
   procedure HandleNeeded;
   procedure InsertControl(AControl: TControl);
   procedure Invalidate;
   procedure PaintTo(DC: HDC; X: Integer; Y: Integer);
   procedure PaintTo(Canvas: TCanvas; X: Integer; Y: Integer);
   function PreProcessMessage(var Msg: tagMSG): Boolean;
   procedure RemoveControl(AControl: TControl);
   procedure Realign;
   procedure Repaint;
   procedure ScaleBy(M: Integer; D: Integer);
   procedure ScrollBy(DeltaX: Integer; DeltaY: Integer);
   procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer);
   procedure SetDesignVisible(Value: Boolean);
   procedure SetFocus;
   procedure Update;
   procedure UpdateControlState;
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure BeginDrag(Immediate: Boolean; Threshold: Integer);
   procedure BringToFront;
   function ClientToScreen(const Point: TPoint): TPoint;
   function ClientToParent(const Point: TPoint; AParent: TWinControl): TPoint;
   procedure Dock(NewDockSite: TWinControl; ARect: TRect);
   function Dragging: Boolean;
   procedure DragDrop(Source: TObject; X: Integer; Y: Integer);
   function DrawTextBiDiModeFlags(Flags: Integer): Integer;
   function DrawTextBiDiModeFlagsReadingOnly: Integer;
   procedure EndDrag(Drop: Boolean);
   function GetControlsAlignment: TAlignment;
   function GetParentComponent: TComponent;
   function HasParent: Boolean;
   procedure Hide;
   procedure InitiateAction;
   procedure Invalidate;
   procedure MouseWheelHandler(var Message: TMessage);
   function IsRightToLeft: Boolean;
   function ManualDock(NewDockSite: TWinControl; DropControl: TControl; ControlSide: TAlign): Boolean;
   function ManualFloat(ScreenPos: TRect): Boolean;
   function Perform(Msg: Cardinal; WParam: NativeUInt; LParam: NativeInt): NativeInt;
   procedure Refresh;
   procedure Repaint;
   function ReplaceDockedControl(Control: TControl; NewDockSite: TWinControl; DropControl: TControl; ControlSide: TAlign): Boolean;
   function ScreenToClient(const Point: TPoint): TPoint;
   function ParentToClient(const Point: TPoint; AParent: TWinControl): TPoint;
   procedure SendToBack;
   procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer);
   procedure SetDesignVisible(Value: Boolean);
   procedure SetParentComponent(Value: TComponent);
   procedure Show;
   procedure Update;
   function UseRightToLeftAlignment: Boolean;
   function UseRightToLeftReading: Boolean;
   function UseRightToLeftScrollBar: Boolean;
   procedure DefaultHandler(var Message);
   function GetTextBuf(Buffer: PWideChar; BufSize: Integer): Integer;
   function GetTextLen: Integer;
   function Perform(Msg: Cardinal; WParam: NativeUInt; LParam: PWideChar): NativeInt;
   function Perform(Msg: Cardinal; WParam: NativeUInt; var LParam: TRect): NativeInt;
   procedure SetTextBuf(Buffer: PWideChar);
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure BeforeDestruction;
   procedure DestroyComponents;
   procedure Destroying;
   function ExecuteAction(Action: TBasicAction): Boolean;
   function FindComponent(const AName: string): TComponent;
   procedure FreeNotification(AComponent: TComponent);
   procedure RemoveFreeNotification(AComponent: TComponent);
   procedure FreeOnRelease;
   function GetEnumerator: TComponentEnumerator;
   function GetParentComponent: TComponent;
   function GetNamePath: string;
   function HasParent: Boolean;
   procedure InsertComponent(const AComponent: TComponent);
   procedure RemoveComponent(const AComponent: TComponent);
   procedure SetSubComponent(IsSubComponent: Boolean);
   function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HRESULT;
   function UpdateAction(Action: TBasicAction): Boolean;
   function IsImplementorOf(const I: IInterface): Boolean;
   function ReferenceInterface(const I: IInterface; Operation: TOperation): Boolean;
   class destructor Destroy;
   procedure Assign(Source: TPersistent);
   function GetNamePath: string;
   constructor Create;
   procedure Free;
   procedure DisposeOf;
   class function InitInstance(Instance: Pointer): TObject;
   procedure CleanupInstance;
   function ClassType: TClass;
   class function ClassName: string;
   class function ClassNameIs(const Name: string): Boolean;
   class function ClassParent: TClass;
   class function ClassInfo: Pointer;
   class function InstanceSize: Integer;
   class function InheritsFrom(AClass: TClass): Boolean;
   class function MethodAddress(const Name: ShortString): Pointer;
   class function MethodAddress(const Name: string): Pointer;
   class function MethodName(Address: Pointer): string;
   class function QualifiedClassName: string;
   function FieldAddress(const Name: ShortString): Pointer;
   function FieldAddress(const Name: string): Pointer;
   function GetInterface(const IID: TGUID; out Obj): Boolean;
   class function GetInterfaceEntry(const IID: TGUID): PInterfaceEntry;
   class function GetInterfaceTable: PInterfaceTable;
   class function UnitName: string;
   class function UnitScope: string;
   function Equals(Obj: TObject): Boolean;
   function GetHashCode: Integer;
   function ToString: string;
   function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HRESULT;
   procedure AfterConstruction;
   procedure BeforeDestruction;
   procedure Dispatch(var Message);
   procedure DefaultHandler(var Message);
   class function NewInstance: TObject;
   procedure FreeInstance;
   class destructor Destroy;
   property ShowCaptions: Boolean;
   property AboutToDestroy: Boolean;
   property Dockable: Boolean;
   property VisibleOnUndock: Boolean;
   property IDEDockType: TIDEDockType;
   property DeskSection: string;
   property AutoSave: Boolean;
   property LoadedFromDesktop: Boolean;
   property ActiveMDIChild: TForm;
   property ClientHandle: HWND;
   property DockManager: IDockManager;
   property MDIChildCount: Integer;
   property TileMode: TTileMode;
   property Active: Boolean;
   property ActiveControl: TWinControl;
   property Action: TBasicAction;
   property ActiveOleControl: TWinControl;
   property BorderStyle: TFormBorderStyle;
   property Canvas: TCanvas;
   property Caption: TCaption;
   property Color: TColor;
   property Designer: IDesignerHook;
   property DropTarget: Boolean;
   property Font: TFont;
   property FormState: TFormState;
   property GlassFrame: TGlassFrame;
   property HelpFile: string;
   property KeyPreview: Boolean;
   property Menu: TMainMenu;
   property ModalResult: TModalResult;
   property Monitor: TMonitor;
   property OleFormObject: IOleForm;
   property PopupMode: TPopupMode;
   property ScreenSnap: Boolean;
   property SnapBuffer: Integer;
   property WindowState: TWindowState;
   property PopupParent: TCustomForm;
   property DockClientCount: Integer;
   property DockSite: Boolean;
   property DockManager: IDockManager;
   property DoubleBuffered: Boolean;
   property AlignDisabled: Boolean;
   property MouseInClient: Boolean;
   property VisibleDockClientCount: Integer;
   property Brush: TBrush;
   property ControlCount: Integer;
   property Handle: HWND;
   property Padding: TPadding;
   property ParentDoubleBuffered: Boolean;
   property ParentWindow: HWND;
   property Showing: Boolean;
   property TabOrder: TTabOrder;
   property TabStop: Boolean;
   property UseDockManager: Boolean;
   property Enabled: Boolean;
   property Action: TBasicAction;
   property Align: TAlign;
   property Anchors: TAnchors;
   property BiDiMode: TBiDiMode;
   property BoundsRect: TRect;
   property ClientHeight: Integer;
   property ClientOrigin: TPoint;
   property ClientRect: TRect;
   property ClientWidth: Integer;
   property Constraints: TSizeConstraints;
   property ControlState: TControlState;
   property ControlStyle: TControlStyle;
   property DockOrientation: TDockOrientation;
   property ExplicitLeft: Integer;
   property ExplicitTop: Integer;
   property ExplicitWidth: Integer;
   property ExplicitHeight: Integer;
   property Floating: Boolean;
   property FloatingDockSiteClass: TWinControlClass;
   property HostDockSite: TWinControl;
   property LRDockWidth: Integer;
   property ShowHint: Boolean;
   property TBDockHeight: Integer;
   property Touch: TTouchManager;
   property UndockHeight: Integer;
   property UndockWidth: Integer;
   property Visible: Boolean;
   property WindowProc: TWndMethod;
   property Parent: TWinControl;
   property StyleElements: TStyleElements;
   property OnGesture: TGestureEvent;
   property ComObject: IInterface;
   property ComponentCount: Integer;
   property ComponentIndex: Integer;
   property ComponentState: TComponentState;
   property ComponentStyle: TComponentStyle;
   property DesignInfo: Integer;
   property Owner: TComponent;
   property VCLComObject: Pointer;
   property Observers: TObservers;
  published
   BPLocalMenu         :TPopupActionBar;
   DeleteAllBreakpoints:TMenuItem;
   DisableAllBreakpoints:TMenuItem;
   EnableAllBreakpoints:TMenuItem;
   LocalMenuItem       :TMenuItem;
   ZoomWindowItem      :TMenuItem;
   ImageList1          :TImageList;
   ItemPopupMenu       :TPopupActionBar;
   BreakpointProperties:TMenuItem;
   DeleteBreakpoint    :TMenuItem;
   EnableBreakpoint    :TMenuItem;
   ViewSource          :TMenuItem;
   EditSource          :TMenuItem;
   AddBreakpoint       :TMenuItem;
   AltAddBreakpoint    :TMenuItem;
   AltDeleteBreakpoint :TMenuItem;
   AltEditBreakpoint   :TMenuItem;
   EditBreakpoint      :TMenuItem;
   AddSourceBreakpoint :TMenuItem;
   N3                  :TMenuItem;
   DockableItem        :TMenuItem;
   N4                  :TMenuItem;
   Dockable2           :TMenuItem;
   CloseWindowItem     :TMenuItem;
   N5                  :TMenuItem;
   DisableGroupItem    :TMenuItem;
   EnableGroupItem     :TMenuItem;
   AddBreakpoint2      :TMenuItem;
   AddSourceBreakpoint2:TMenuItem;
   DeleteAllBreakpoints2:TMenuItem;
   DisableAllBreakpoints2:TMenuItem;
   EnableAllBreakpoints2:TMenuItem;
   N6                  :TMenuItem;
   DisableGroupItem2   :TMenuItem;
   EnableGroupItem2    :TMenuItem;
   StayonTopItem       :TMenuItem;
   StayonTopItem2      :TMenuItem;
   N7                  :TMenuItem;
   BreakpointList      :TVirtualStringTree;
   BreakpointActionList:TActionList;
   AddSourceBreakpointCommand:TAction;
   DeleteAllCommand    :TAction;
   DisableAllCommand   :TAction;
   EnableAllCommand    :TAction;
   EnabledCommand      :TAction;
   DeleteCommand       :TAction;
   ViewSourceCommand   :TAction;
   EditSourceCommand   :TAction;
   PropertiesCommand   :TAction;
   BPActionImages      :TImageList;
   AddBPButtonCommand  :TAction;
   AddBPDropDownMenu   :TPopupMenu;
   SourceBreakpoint1   :TMenuItem;
   ToolButton1         :TToolButton;
   ToolButton2         :TToolButton;
   ToolButton3         :TToolButton;
   ToolButton4         :TToolButton;
   ToolButton5         :TToolButton;
   ToolButton6         :TToolButton;
   ToolbarItem         :TMenuItem;
   ToolbarItem2        :TMenuItem;
   ToolBar             :TToolBar;
   ToolActionList      :TActionList;
   TextLabelsCmd       :TAction;
   ToolbarCmd          :TAction;
   ToolbarPopupMenu    :TPopupActionBar;
   TextLabelsMenuItem  :TMenuItem;
   FormPopupMenu       :TPopupActionBar;
   ToolbarMenuItem     :TMenuItem;
   DockActionList      :TActionList;
   DockableCmd         :TAction;
   StayOnTopCmd        :TAction;
   ZoomWindowCmd       :TAction;
   CloseUndockedWindowCmd:TAction;
   LocalMenuCmd        :TAction;
   procedure BreakpointListChecking(Sender: TBaseVirtualTree; Node: PVirtualNode; var NewState: TCheckState; var Allowed: Boolean);
   procedure FormCreate(Sender: TObject);
   procedure FormDestroy(Sender: TObject);
   procedure EditButtonClick(Sender: TObject);
   procedure DeleteButtonClick(Sender: TObject);
   procedure ViewSourceClick(Sender: TObject);
   procedure DeleteAllClick(Sender: TObject);
   procedure EnableBreakpointClick(Sender: TObject);
   procedure EditSourceClick(Sender: TObject);
   procedure DisableAllClick(Sender: TObject);
   procedure EnableAllClick(Sender: TObject);
   procedure BPLocalMenuPopup(Sender: TObject);
   procedure LocalMenuItemClick(Sender: TObject);
   procedure BreakpointPropertiesClick(Sender: TObject);
   procedure EnableOrDisableGroupItemClick(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure ItemPopupMenuBreakpoints1Click(Sender: TObject);
   procedure BreakpointListInitNode(Sender: TBaseVirtualTree; ParentNode: PVirtualNode; Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
   procedure BreakpointListGetImageIndex(Sender: TBaseVirtualTree; Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex; var Ghosted: Boolean; var ImageIndex: Integer);
   procedure BreakpointListGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType; var CellText: WideString);
   procedure BreakpointListChecked(Sender: TBaseVirtualTree; Node: PVirtualNode);
   procedure BreakpointListEditing(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
   procedure BreakpointListGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; const P: TPoint; var AskParent: Boolean; var PopupMenu: TPopupMenu);
   procedure BreakpointListNewText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; NewText: WideString);
   procedure BreakpointListFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
   procedure BreakpointListPaintText(Sender: TBaseVirtualTree; const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
   procedure BreakpointListEdited(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex);
   procedure BreakpointListEditCancelled(Sender: TBaseVirtualTree; Column: TColumnIndex);
   procedure AddBPDropDownMenuPopup(Sender: TObject);
   procedure UpdateBPCommands(Sender: TObject);
   procedure BreakpointListDblClick(Sender: TObject);
   procedure BreakpointListCreateEditor(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; out EditLink: IVTEditLink);
   procedure FormCreate(Sender: TObject);
   procedure ToolbarCmdExecute(Sender: TObject);
   procedure TextLabelsCmdExecute(Sender: TObject);
   procedure ToolbarCmdUpdate(Sender: TObject);
   procedure TextLabelsCmdUpdate(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure FormGetSiteInfo(Sender: TObject; DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
   procedure DockableCmdExecute(Sender: TObject);
   procedure DockableCmdUpdate(Sender: TObject);
   procedure StayOnTopCmdExecute(Sender: TObject);
   procedure StayOnTopCmdUpdate(Sender: TObject);
   procedure ZoomWindowCmdExecute(Sender: TObject);
   procedure CloseUndockedWindowCmdExecute(Sender: TObject);
   procedure LocalMenuCmdExecute(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure FormDestroy(Sender: TObject);
   procedure FormEndDock(Sender: TObject; Target: TObject; X: Integer; Y: Integer);
   property Action: TBasicAction;
   property ActiveControl: TWinControl;
   property Align: TAlign;
   property AlphaBlend: Boolean;
   property AlphaBlendValue: Byte;
   property Anchors: TAnchors;
   property AutoScroll: Boolean;
   property AutoSize: Boolean;
   property BiDiMode: TBiDiMode;
   property BorderIcons: TBorderIcons;
   property BorderStyle: TFormBorderStyle;
   property BorderWidth: TBorderWidth;
   property Caption: TCaption;
   property ClientHeight: Integer;
   property ClientWidth: Integer;
   property Color: TColor;
   property TransparentColor: Boolean;
   property TransparentColorValue: TColor;
   property Constraints: TSizeConstraints;
   property Ctl3D: Boolean;
   property UseDockManager: Boolean;
   property DefaultMonitor: TDefaultMonitor;
   property DockSite: Boolean;
   property DoubleBuffered: Boolean;
   property DragKind: TDragKind;
   property DragMode: TDragMode;
   property Enabled: Boolean;
   property ParentFont: Boolean;
   property Font: TFont;
   property FormStyle: TFormStyle;
   property GlassFrame: TGlassFrame;
   property Height: Integer;
   property HelpFile: string;
   property HorzScrollBar: TControlScrollBar;
   property Icon: TIcon;
   property KeyPreview: Boolean;
   property Padding: TPadding;
   property Menu: TMainMenu;
   property OldCreateOrder: Boolean;
   property ObjectMenuItem: TMenuItem;
   property ParentBiDiMode: Boolean;
   property PixelsPerInch: Integer;
   property PopupMenu: TPopupMenu;
   property PopupMode: TPopupMode;
   property PopupParent: TCustomForm;
   property Position: TPosition;
   property PrintScale: TPrintScale;
   property Scaled: Boolean;
   property ScreenSnap: Boolean;
   property ShowHint: Boolean;
   property SnapBuffer: Integer;
   property Touch: TTouchManager;
   property TipMode: TTipMode;
   property VertScrollBar: TControlScrollBar;
   property Visible: Boolean;
   property Width: Integer;
   property WindowState: TWindowState;
   property WindowMenu: TMenuItem;
   property StyleElements: TStyleElements;
   property OnActivate: TNotifyEvent;
   property OnAlignInsertBefore: TAlignInsertBeforeEvent;
   property OnAlignPosition: TAlignPositionEvent;
   property OnCanResize: TCanResizeEvent;
   property OnClick: TNotifyEvent;
   property OnClose: TCloseEvent;
   property OnCloseQuery: TCloseQueryEvent;
   property OnConstrainedResize: TConstrainedResizeEvent;
   property OnContextPopup: TContextPopupEvent;
   property OnCreate: TNotifyEvent;
   property OnDblClick: TNotifyEvent;
   property OnDestroy: TNotifyEvent;
   property OnDeactivate: TNotifyEvent;
   property OnDockDrop: TDockDropEvent;
   property OnDockOver: TDockOverEvent;
   property OnDragDrop: TDragDropEvent;
   property OnDragOver: TDragOverEvent;
   property OnEndDock: TEndDragEvent;
   property OnGesture: TGestureEvent;
   property OnGetSiteInfo: TGetSiteInfoEvent;
   property OnHide: TNotifyEvent;
   property OnHelp: THelpEvent;
   property OnKeyDown: TKeyEvent;
   property OnKeyPress: TKeyPressEvent;
   property OnKeyUp: TKeyEvent;
   property OnMouseActivate: TMouseActivateEvent;
   property OnMouseDown: TMouseEvent;
   property OnMouseEnter: TNotifyEvent;
   property OnMouseLeave: TNotifyEvent;
   property OnMouseMove: TMouseMoveEvent;
   property OnMouseUp: TMouseEvent;
   property OnMouseWheel: TMouseWheelEvent;
   property OnMouseWheelDown: TMouseWheelUpDownEvent;
   property OnMouseWheelUp: TMouseWheelUpDownEvent;
   property OnPaint: TNotifyEvent;
   property OnResize: TNotifyEvent;
   property OnShortCut: TShortCutEvent;
   property OnShow: TNotifyEvent;
   property OnStartDock: TStartDockEvent;
   property OnUnDock: TUnDockEvent;
   property Left: Integer;
   property Top: Integer;
   property OnAlignInsertBefore: TAlignInsertBeforeEvent;
   property OnAlignPosition: TAlignPositionEvent;
   property HorzScrollBar: TControlScrollBar;
   property VertScrollBar: TControlScrollBar;
   property AlignWithMargins: Boolean;
   property Left: Integer;
   property Top: Integer;
   property Width: Integer;
   property Height: Integer;
   property Cursor: TCursor;
   property Hint: string;
   property HelpType: THelpType;
   property HelpKeyword: string;
   property HelpContext: THelpContext;
   property Margins: TMargins;
   property CustomHint: TCustomHint;
   property ParentCustomHint: Boolean;
   property Name: TComponentName;
   property Tag: NativeInt;
  end;
