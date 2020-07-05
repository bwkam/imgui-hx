package imgui;

typedef ImWchar = cpp.UInt16;

typedef ImU8 = cpp.UInt8;

typedef ImU64 = cpp.UInt64;

typedef ImU32 = UInt;

typedef ImU16 = cpp.UInt16;

typedef ImTextureID = imgui.VoidPointer;

typedef ImS8 = cpp.Int8;

typedef ImS64 = cpp.Int64;

typedef ImS32 = Int;

typedef ImS16 = cpp.Int16;

typedef ImGuiSizeCallback = cpp.Callable<cpp.Star<ImGuiSizeCallbackData> -> Void>;

typedef ImGuiInputTextCallback = cpp.Callable<ImGuiInputTextCallbackData -> Int>;

typedef ImGuiID = UInt;

typedef ImDrawIdx = cpp.UInt16;

typedef ImDrawCallback = cpp.Callable<(cpp.Star<ImDrawList>, cpp.Star<ImDrawCmd>) -> Void>;

@:enum abstract ImGuiWindowFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoTitleBar : Int = 1;
	var NoResize : Int = 2;
	var NoMove : Int = 4;
	var NoScrollbar : Int = 8;
	var NoScrollWithMouse : Int = 16;
	var NoCollapse : Int = 32;
	var AlwaysAutoResize : Int = 64;
	var NoBackground : Int = 128;
	var NoSavedSettings : Int = 256;
	var NoMouseInputs : Int = 512;
	var MenuBar : Int = 1024;
	var HorizontalScrollbar : Int = 2048;
	var NoFocusOnAppearing : Int = 4096;
	var NoBringToFrontOnFocus : Int = 8192;
	var AlwaysVerticalScrollbar : Int = 16384;
	var AlwaysHorizontalScrollbar : Int = 32768;
	var AlwaysUseWindowPadding : Int = 65536;
	var NoNavInputs : Int = 262144;
	var NoNavFocus : Int = 524288;
	var UnsavedDocument : Int = 1048576;
	var NoNav : Int = 786432;
	var NoDecoration : Int = 43;
	var NoInputs : Int = 786944;
	var NavFlattened : Int = 8388608;
	var ChildWindow : Int = 16777216;
	var Tooltip : Int = 33554432;
	var Popup : Int = 67108864;
	var Modal : Int = 134217728;
	var ChildMenu : Int = 268435456;
}

@:enum abstract ImGuiTreeNodeFlags(Int) from Int to Int {
	var None : Int = 0;
	var Selected : Int = 1;
	var Framed : Int = 2;
	var AllowItemOverlap : Int = 4;
	var NoTreePushOnOpen : Int = 8;
	var NoAutoOpenOnLog : Int = 16;
	var DefaultOpen : Int = 32;
	var OpenOnDoubleClick : Int = 64;
	var OpenOnArrow : Int = 128;
	var Leaf : Int = 256;
	var Bullet : Int = 512;
	var FramePadding : Int = 1024;
	var SpanAvailWidth : Int = 2048;
	var SpanFullWidth : Int = 4096;
	var NavLeftJumpsBackHere : Int = 8192;
	var CollapsingHeader : Int = 26;
}

@:enum abstract ImGuiTabItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var UnsavedDocument : Int = 1;
	var SetSelected : Int = 2;
	var NoCloseWithMiddleMouseButton : Int = 4;
	var NoPushId : Int = 8;
}

@:enum abstract ImGuiTabBarFlags(Int) from Int to Int {
	var None : Int = 0;
	var Reorderable : Int = 1;
	var AutoSelectNewTabs : Int = 2;
	var TabListPopupButton : Int = 4;
	var NoCloseWithMiddleMouseButton : Int = 8;
	var NoTabListScrollingButtons : Int = 16;
	var NoTooltip : Int = 32;
	var FittingPolicyResizeDown : Int = 64;
	var FittingPolicyScroll : Int = 128;
	var FittingPolicyMask_ : Int = 192;
	var FittingPolicyDefault_ : Int = 64;
}

@:enum abstract ImGuiStyleVar(Int) from Int to Int {
	var Alpha : Int = 0;
	var WindowPadding : Int = 1;
	var WindowRounding : Int = 2;
	var WindowBorderSize : Int = 3;
	var WindowMinSize : Int = 4;
	var WindowTitleAlign : Int = 5;
	var ChildRounding : Int = 6;
	var ChildBorderSize : Int = 7;
	var PopupRounding : Int = 8;
	var PopupBorderSize : Int = 9;
	var FramePadding : Int = 10;
	var FrameRounding : Int = 11;
	var FrameBorderSize : Int = 12;
	var ItemSpacing : Int = 13;
	var ItemInnerSpacing : Int = 14;
	var IndentSpacing : Int = 15;
	var ScrollbarSize : Int = 16;
	var ScrollbarRounding : Int = 17;
	var GrabMinSize : Int = 18;
	var GrabRounding : Int = 19;
	var TabRounding : Int = 20;
	var ButtonTextAlign : Int = 21;
	var SelectableTextAlign : Int = 22;
	var COUNT : Int = 23;
}

@:enum abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
	var AllowItemOverlap : Int = 16;
}

@:enum abstract ImGuiNavInput(Int) from Int to Int {
	var Activate : Int = 0;
	var Cancel : Int = 1;
	var Input : Int = 2;
	var Menu : Int = 3;
	var DpadLeft : Int = 4;
	var DpadRight : Int = 5;
	var DpadUp : Int = 6;
	var DpadDown : Int = 7;
	var LStickLeft : Int = 8;
	var LStickRight : Int = 9;
	var LStickUp : Int = 10;
	var LStickDown : Int = 11;
	var FocusPrev : Int = 12;
	var FocusNext : Int = 13;
	var TweakSlow : Int = 14;
	var TweakFast : Int = 15;
	var KeyMenu_ : Int = 16;
	var KeyLeft_ : Int = 17;
	var KeyRight_ : Int = 18;
	var KeyUp_ : Int = 19;
	var KeyDown_ : Int = 20;
	var COUNT : Int = 21;
	var InternalStart_ : Int = 16;
}

@:enum abstract ImGuiMouseCursor(Int) from Int to Int {
	var None : Int = -1;
	var Arrow : Int = 0;
	var TextInput : Int = 1;
	var ResizeAll : Int = 2;
	var ResizeNS : Int = 3;
	var ResizeEW : Int = 4;
	var ResizeNESW : Int = 5;
	var ResizeNWSE : Int = 6;
	var Hand : Int = 7;
	var NotAllowed : Int = 8;
	var COUNT : Int = 9;
}

@:enum abstract ImGuiMouseButton(Int) from Int to Int {
	var Left : Int = 0;
	var Right : Int = 1;
	var Middle : Int = 2;
	var COUNT : Int = 5;
}

@:enum abstract ImGuiKey(Int) from Int to Int {
	var Tab : Int = 0;
	var LeftArrow : Int = 1;
	var RightArrow : Int = 2;
	var UpArrow : Int = 3;
	var DownArrow : Int = 4;
	var PageUp : Int = 5;
	var PageDown : Int = 6;
	var Home : Int = 7;
	var End : Int = 8;
	var Insert : Int = 9;
	var Delete : Int = 10;
	var Backspace : Int = 11;
	var Space : Int = 12;
	var Enter : Int = 13;
	var Escape : Int = 14;
	var KeyPadEnter : Int = 15;
	var A : Int = 16;
	var C : Int = 17;
	var V : Int = 18;
	var X : Int = 19;
	var Y : Int = 20;
	var Z : Int = 21;
	var COUNT : Int = 22;
}

@:enum abstract ImGuiInputTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var CharsDecimal : Int = 1;
	var CharsHexadecimal : Int = 2;
	var CharsUppercase : Int = 4;
	var CharsNoBlank : Int = 8;
	var AutoSelectAll : Int = 16;
	var EnterReturnsTrue : Int = 32;
	var CallbackCompletion : Int = 64;
	var CallbackHistory : Int = 128;
	var CallbackAlways : Int = 256;
	var CallbackCharFilter : Int = 512;
	var AllowTabInput : Int = 1024;
	var CtrlEnterForNewLine : Int = 2048;
	var NoHorizontalScroll : Int = 4096;
	var AlwaysInsertMode : Int = 8192;
	var ReadOnly : Int = 16384;
	var Password : Int = 32768;
	var NoUndoRedo : Int = 65536;
	var CharsScientific : Int = 131072;
	var CallbackResize : Int = 262144;
	var Multiline : Int = 1048576;
	var NoMarkEdited : Int = 2097152;
}

@:enum abstract ImGuiHoveredFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var AllowWhenBlockedByPopup : Int = 8;
	var AllowWhenBlockedByActiveItem : Int = 32;
	var AllowWhenOverlapped : Int = 64;
	var AllowWhenDisabled : Int = 128;
	var RectOnly : Int = 104;
	var RootAndChildWindows : Int = 3;
}

@:enum abstract ImGuiFocusedFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var RootAndChildWindows : Int = 3;
}

@:enum abstract ImGuiDragDropFlags(Int) from Int to Int {
	var None : Int = 0;
	var SourceNoPreviewTooltip : Int = 1;
	var SourceNoDisableHover : Int = 2;
	var SourceNoHoldToOpenOthers : Int = 4;
	var SourceAllowNullID : Int = 8;
	var SourceExtern : Int = 16;
	var SourceAutoExpirePayload : Int = 32;
	var AcceptBeforeDelivery : Int = 1024;
	var AcceptNoDrawDefaultRect : Int = 2048;
	var AcceptNoPreviewTooltip : Int = 4096;
	var AcceptPeekOnly : Int = 3072;
}

@:enum abstract ImGuiDir(Int) from Int to Int {
	var None : Int = -1;
	var Left : Int = 0;
	var Right : Int = 1;
	var Up : Int = 2;
	var Down : Int = 3;
	var COUNT : Int = 4;
}

@:enum abstract ImGuiDataType(Int) from Int to Int {
	var S8 : Int = 0;
	var U8 : Int = 1;
	var S16 : Int = 2;
	var U16 : Int = 3;
	var S32 : Int = 4;
	var U32 : Int = 5;
	var S64 : Int = 6;
	var U64 : Int = 7;
	var Float : Int = 8;
	var Double : Int = 9;
	var COUNT : Int = 10;
}

@:enum abstract ImGuiConfigFlags(Int) from Int to Int {
	var None : Int = 0;
	var NavEnableKeyboard : Int = 1;
	var NavEnableGamepad : Int = 2;
	var NavEnableSetMousePos : Int = 4;
	var NavNoCaptureKeyboard : Int = 8;
	var NoMouse : Int = 16;
	var NoMouseCursorChange : Int = 32;
	var IsSRGB : Int = 1048576;
	var IsTouchScreen : Int = 2097152;
}

@:enum abstract ImGuiCond(Int) from Int to Int {
	var Always : Int = 1;
	var Once : Int = 2;
	var FirstUseEver : Int = 4;
	var Appearing : Int = 8;
}

@:enum abstract ImGuiComboFlags(Int) from Int to Int {
	var None : Int = 0;
	var PopupAlignLeft : Int = 1;
	var HeightSmall : Int = 2;
	var HeightRegular : Int = 4;
	var HeightLarge : Int = 8;
	var HeightLargest : Int = 16;
	var NoArrowButton : Int = 32;
	var NoPreview : Int = 64;
	var HeightMask_ : Int = 30;
}

@:enum abstract ImGuiColorEditFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoAlpha : Int = 2;
	var NoPicker : Int = 4;
	var NoOptions : Int = 8;
	var NoSmallPreview : Int = 16;
	var NoInputs : Int = 32;
	var NoTooltip : Int = 64;
	var NoLabel : Int = 128;
	var NoSidePreview : Int = 256;
	var NoDragDrop : Int = 512;
	var AlphaBar : Int = 65536;
	var AlphaPreview : Int = 131072;
	var AlphaPreviewHalf : Int = 262144;
	var HDR : Int = 524288;
	var DisplayRGB : Int = 1048576;
	var DisplayHSV : Int = 2097152;
	var DisplayHex : Int = 4194304;
	var Uint8 : Int = 8388608;
	var Float : Int = 16777216;
	var PickerHueBar : Int = 33554432;
	var PickerHueWheel : Int = 67108864;
	var InputRGB : Int = 134217728;
	var InputHSV : Int = 268435456;
	var _OptionsDefault : Int = 177209344;
	var _DisplayMask : Int = 7340032;
	var _DataTypeMask : Int = 25165824;
	var _PickerMask : Int = 100663296;
	var _InputMask : Int = 402653184;
}

@:enum abstract ImGuiCol(Int) from Int to Int {
	var Text : Int = 0;
	var TextDisabled : Int = 1;
	var WindowBg : Int = 2;
	var ChildBg : Int = 3;
	var PopupBg : Int = 4;
	var Border : Int = 5;
	var BorderShadow : Int = 6;
	var FrameBg : Int = 7;
	var FrameBgHovered : Int = 8;
	var FrameBgActive : Int = 9;
	var TitleBg : Int = 10;
	var TitleBgActive : Int = 11;
	var TitleBgCollapsed : Int = 12;
	var MenuBarBg : Int = 13;
	var ScrollbarBg : Int = 14;
	var ScrollbarGrab : Int = 15;
	var ScrollbarGrabHovered : Int = 16;
	var ScrollbarGrabActive : Int = 17;
	var CheckMark : Int = 18;
	var SliderGrab : Int = 19;
	var SliderGrabActive : Int = 20;
	var Button : Int = 21;
	var ButtonHovered : Int = 22;
	var ButtonActive : Int = 23;
	var Header : Int = 24;
	var HeaderHovered : Int = 25;
	var HeaderActive : Int = 26;
	var Separator : Int = 27;
	var SeparatorHovered : Int = 28;
	var SeparatorActive : Int = 29;
	var ResizeGrip : Int = 30;
	var ResizeGripHovered : Int = 31;
	var ResizeGripActive : Int = 32;
	var Tab : Int = 33;
	var TabHovered : Int = 34;
	var TabActive : Int = 35;
	var TabUnfocused : Int = 36;
	var TabUnfocusedActive : Int = 37;
	var PlotLines : Int = 38;
	var PlotLinesHovered : Int = 39;
	var PlotHistogram : Int = 40;
	var PlotHistogramHovered : Int = 41;
	var TextSelectedBg : Int = 42;
	var DragDropTarget : Int = 43;
	var NavHighlight : Int = 44;
	var NavWindowingHighlight : Int = 45;
	var NavWindowingDimBg : Int = 46;
	var ModalWindowDimBg : Int = 47;
	var COUNT : Int = 48;
}

@:enum abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
}

@:enum abstract ImFontAtlasFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoPowerOfTwoHeight : Int = 1;
	var NoMouseCursors : Int = 2;
}

@:enum abstract ImDrawListFlags(Int) from Int to Int {
	var None : Int = 0;
	var AntiAliasedLines : Int = 1;
	var AntiAliasedFill : Int = 2;
	var AllowVtxOffset : Int = 4;
}

@:enum abstract ImDrawCornerFlags(Int) from Int to Int {
	var None : Int = 0;
	var TopLeft : Int = 1;
	var TopRight : Int = 2;
	var BotLeft : Int = 4;
	var BotRight : Int = 8;
	var Top : Int = 3;
	var Bot : Int = 12;
	var Left : Int = 5;
	var Right : Int = 10;
	var All : Int = 15;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec4") extern class ImVec4 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("z")
	var z : cpp.Float32;
	@:native("w")
	var w : cpp.Float32;
	@:native("ImVec4")
	@:overload(function(__x:cpp.Float32, __y:cpp.Float32, __z:cpp.Float32, __w:cpp.Float32):ImVec4 { })
	static function create():ImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2") extern class ImVec2 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("ImVec2")
	@:overload(function(__x:cpp.Float32, __y:cpp.Float32):ImVec2 { })
	static function create():ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextRange") extern class ImGuiTextRange {
	@:native("b")
	var b : cpp.ConstCharStar;
	@:native("e")
	var e : cpp.ConstCharStar;
	@:native("split")
	function split(_separator:cpp.Int8, _out:ImVectorImGuiTextRangePointer):cpp.Void;
	@:native("empty")
	function empty():Bool;
	@:native("ImGuiTextRange")
	@:overload(function(__b:cpp.ConstCharStar, __e:cpp.ConstCharStar):ImGuiTextRange { })
	static function create():ImGuiTextRange;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextFilter") extern class ImGuiTextFilter {
	@:native("InputBuf")
	var inputBuf : cpp.RawPointer<cpp.Int8>;
	@:native("Filters")
	var filters : ImVectorImGuiTextRange;
	@:native("CountGrep")
	var countGrep : Int;
	@:native("PassFilter")
	@:overload(function(_text:cpp.ConstCharStar):Bool { })
	function passFilter(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):Bool;
	@:native("IsActive")
	function isActive():Bool;
	@:native("ImGuiTextFilter")
	@:overload(function():ImGuiTextFilter { })
	static function create(_default_filter:cpp.ConstCharStar):ImGuiTextFilter;
	@:native("Draw")
	@:overload(function(_width:cpp.Float32):Bool { })
	@:overload(function():Bool { })
	function draw(_label:cpp.ConstCharStar, _width:cpp.Float32):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("Build")
	function build():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextBuffer") extern class ImGuiTextBuffer {
	@:native("Buf")
	var buf : ImVectorchar;
	@:native("size")
	function size():Int;
	@:native("reserve")
	function reserve(_capacity:Int):cpp.Void;
	@:native("end")
	function end():cpp.ConstCharStar;
	@:native("empty")
	function empty():Bool;
	@:native("clear")
	function clear():cpp.Void;
	@:native("c_str")
	function c_str():cpp.ConstCharStar;
	@:native("begin")
	function begin():cpp.ConstCharStar;
	@:native("appendfv")
	function appendfv(_fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("appendf")
	function appendf(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("append")
	@:overload(function(_str:cpp.ConstCharStar):cpp.Void { })
	function append(_str:cpp.ConstCharStar, _str_end:cpp.ConstCharStar):cpp.Void;
	@:native("ImGuiTextBuffer")
	static function create():ImGuiTextBuffer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStyle") extern class ImGuiStyle {
	@:native("Alpha")
	var alpha : cpp.Float32;
	@:native("WindowPadding")
	var windowPadding : ImVec2;
	@:native("WindowRounding")
	var windowRounding : cpp.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : cpp.Float32;
	@:native("WindowMinSize")
	var windowMinSize : ImVec2;
	@:native("WindowTitleAlign")
	var windowTitleAlign : ImVec2;
	@:native("WindowMenuButtonPosition")
	var windowMenuButtonPosition : ImGuiDir;
	@:native("ChildRounding")
	var childRounding : cpp.Float32;
	@:native("ChildBorderSize")
	var childBorderSize : cpp.Float32;
	@:native("PopupRounding")
	var popupRounding : cpp.Float32;
	@:native("PopupBorderSize")
	var popupBorderSize : cpp.Float32;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("FrameRounding")
	var frameRounding : cpp.Float32;
	@:native("FrameBorderSize")
	var frameBorderSize : cpp.Float32;
	@:native("ItemSpacing")
	var itemSpacing : ImVec2;
	@:native("ItemInnerSpacing")
	var itemInnerSpacing : ImVec2;
	@:native("TouchExtraPadding")
	var touchExtraPadding : ImVec2;
	@:native("IndentSpacing")
	var indentSpacing : cpp.Float32;
	@:native("ColumnsMinSpacing")
	var columnsMinSpacing : cpp.Float32;
	@:native("ScrollbarSize")
	var scrollbarSize : cpp.Float32;
	@:native("ScrollbarRounding")
	var scrollbarRounding : cpp.Float32;
	@:native("GrabMinSize")
	var grabMinSize : cpp.Float32;
	@:native("GrabRounding")
	var grabRounding : cpp.Float32;
	@:native("TabRounding")
	var tabRounding : cpp.Float32;
	@:native("TabBorderSize")
	var tabBorderSize : cpp.Float32;
	@:native("ColorButtonPosition")
	var colorButtonPosition : ImGuiDir;
	@:native("ButtonTextAlign")
	var buttonTextAlign : ImVec2;
	@:native("SelectableTextAlign")
	var selectableTextAlign : ImVec2;
	@:native("DisplayWindowPadding")
	var displayWindowPadding : ImVec2;
	@:native("DisplaySafeAreaPadding")
	var displaySafeAreaPadding : ImVec2;
	@:native("MouseCursorScale")
	var mouseCursorScale : cpp.Float32;
	@:native("AntiAliasedLines")
	var antiAliasedLines : Bool;
	@:native("AntiAliasedFill")
	var antiAliasedFill : Bool;
	@:native("CurveTessellationTol")
	var curveTessellationTol : cpp.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : cpp.Float32;
	@:native("Colors")
	var colors : cpp.RawPointer<ImVec4>;
	@:native("ScaleAllSizes")
	function scaleAllSizes(_scale_factor:cpp.Float32):cpp.Void;
	@:native("ImGuiStyle")
	static function create():ImGuiStyle;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStoragePair") extern class ImGuiStoragePair {
	@:native("key")
	var key : ImGuiID;
	@:native("ImGuiStoragePair")
	@:overload(function(__key:ImGuiID, __val_f:cpp.Float32):ImGuiStoragePair { })
	@:overload(function(__key:ImGuiID, __val_p:imgui.VoidPointer):ImGuiStoragePair { })
	static function create(__key:ImGuiID, __val_i:Int):ImGuiStoragePair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStorage") extern class ImGuiStorage {
	@:native("Data")
	var data : ImVectorImGuiStoragePair;
	@:native("SetVoidPtr")
	function setVoidPtr(_key:ImGuiID, _val:imgui.VoidPointer):cpp.Void;
	@:native("SetInt")
	function setInt(_key:ImGuiID, _val:Int):cpp.Void;
	@:native("SetFloat")
	function setFloat(_key:ImGuiID, _val:cpp.Float32):cpp.Void;
	@:native("SetBool")
	function setBool(_key:ImGuiID, _val:Bool):cpp.Void;
	@:native("SetAllInt")
	function setAllInt(_val:Int):cpp.Void;
	@:native("GetVoidPtrRef")
	@:overload(function(_key:ImGuiID):cpp.Star<cpp.Star<cpp.Void>> { })
	function getVoidPtrRef(_key:ImGuiID, _default_val:imgui.VoidPointer):cpp.Star<cpp.Star<cpp.Void>>;
	@:native("GetVoidPtr")
	function getVoidPtr(_key:ImGuiID):imgui.VoidPointer;
	@:native("GetIntRef")
	@:overload(function(_key:ImGuiID):imgui.IntPointer { })
	function getIntRef(_key:ImGuiID, _default_val:Int):imgui.IntPointer;
	@:native("GetInt")
	@:overload(function(_key:ImGuiID):Int { })
	function getInt(_key:ImGuiID, _default_val:Int):Int;
	@:native("GetFloatRef")
	@:overload(function(_key:ImGuiID):imgui.FloatPointer { })
	function getFloatRef(_key:ImGuiID, _default_val:cpp.Float32):imgui.FloatPointer;
	@:native("GetFloat")
	@:overload(function(_key:ImGuiID):cpp.Float32 { })
	function getFloat(_key:ImGuiID, _default_val:cpp.Float32):cpp.Float32;
	@:native("GetBoolRef")
	@:overload(function(_key:ImGuiID):imgui.BoolPointer { })
	function getBoolRef(_key:ImGuiID, _default_val:Bool):imgui.BoolPointer;
	@:native("GetBool")
	@:overload(function(_key:ImGuiID):Bool { })
	function getBool(_key:ImGuiID, _default_val:Bool):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("BuildSortByKey")
	function buildSortByKey():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiSizeCallbackData") extern class ImGuiSizeCallbackData {
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("Pos")
	var pos : ImVec2;
	@:native("CurrentSize")
	var currentSize : ImVec2;
	@:native("DesiredSize")
	var desiredSize : ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPayload") extern class ImGuiPayload {
	@:native("Data")
	var data : imgui.VoidPointer;
	@:native("DataSize")
	var dataSize : Int;
	@:native("SourceId")
	var sourceId : ImGuiID;
	@:native("SourceParentId")
	var sourceParentId : ImGuiID;
	@:native("DataFrameCount")
	var dataFrameCount : Int;
	@:native("DataType")
	var dataType : cpp.RawPointer<cpp.Int8>;
	@:native("Preview")
	var preview : Bool;
	@:native("Delivery")
	var delivery : Bool;
	@:native("IsPreview")
	function isPreview():Bool;
	@:native("IsDelivery")
	function isDelivery():Bool;
	@:native("IsDataType")
	function isDataType(_type:cpp.ConstCharStar):Bool;
	@:native("ImGuiPayload")
	static function create():ImGuiPayload;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOnceUponAFrame") extern class ImGuiOnceUponAFrame {
	@:native("RefFrame")
	var refFrame : Int;
	@:native("ImGuiOnceUponAFrame")
	static function create():ImGuiOnceUponAFrame;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiListClipper") extern class ImGuiListClipper {
	@:native("DisplayStart")
	var displayStart : Int;
	@:native("DisplayEnd")
	var displayEnd : Int;
	@:native("ItemsCount")
	var itemsCount : Int;
	@:native("StepNo")
	var stepNo : Int;
	@:native("ItemsHeight")
	var itemsHeight : cpp.Float32;
	@:native("StartPosY")
	var startPosY : cpp.Float32;
	@:native("Step")
	function step():Bool;
	@:native("ImGuiListClipper")
	@:overload(function(_items_height:cpp.Float32):ImGuiListClipper { })
	@:overload(function():ImGuiListClipper { })
	static function create(_items_count:Int, _items_height:cpp.Float32):ImGuiListClipper;
	@:native("End")
	function end():cpp.Void;
	@:native("Begin")
	@:overload(function(_items_count:Int):cpp.Void { })
	function begin(_items_count:Int, _items_height:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiInputTextCallbackData") extern class ImGuiInputTextCallbackData {
	@:native("EventFlag")
	var eventFlag : ImGuiInputTextFlags;
	@:native("Flags")
	var flags : ImGuiInputTextFlags;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("EventChar")
	var eventChar : ImWchar;
	@:native("EventKey")
	var eventKey : ImGuiKey;
	@:native("Buf")
	var buf : cpp.Star<cpp.Int8>;
	@:native("BufTextLen")
	var bufTextLen : Int;
	@:native("BufSize")
	var bufSize : Int;
	@:native("BufDirty")
	var bufDirty : Bool;
	@:native("CursorPos")
	var cursorPos : Int;
	@:native("SelectionStart")
	var selectionStart : Int;
	@:native("SelectionEnd")
	var selectionEnd : Int;
	@:native("InsertChars")
	@:overload(function(_pos:Int, _text:cpp.ConstCharStar):cpp.Void { })
	function insertChars(_pos:Int, _text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):cpp.Void;
	@:native("ImGuiInputTextCallbackData")
	static function create():ImGuiInputTextCallbackData;
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("DeleteChars")
	function deleteChars(_pos:Int, _bytes_count:Int):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiIO") extern class ImGuiIO {
	@:native("ConfigFlags")
	var configFlags : ImGuiConfigFlags;
	@:native("BackendFlags")
	var backendFlags : ImGuiBackendFlags;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("DeltaTime")
	var deltaTime : cpp.Float32;
	@:native("IniSavingRate")
	var iniSavingRate : cpp.Float32;
	@:native("IniFilename")
	var iniFilename : cpp.ConstCharStar;
	@:native("LogFilename")
	var logFilename : cpp.ConstCharStar;
	@:native("MouseDoubleClickTime")
	var mouseDoubleClickTime : cpp.Float32;
	@:native("MouseDoubleClickMaxDist")
	var mouseDoubleClickMaxDist : cpp.Float32;
	@:native("MouseDragThreshold")
	var mouseDragThreshold : cpp.Float32;
	@:native("KeyMap")
	var keyMap : imgui.IntPointer;
	@:native("KeyRepeatDelay")
	var keyRepeatDelay : cpp.Float32;
	@:native("KeyRepeatRate")
	var keyRepeatRate : cpp.Float32;
	@:native("UserData")
	var userData : imgui.VoidPointer;
	@:native("Fonts")
	var fonts : cpp.Star<ImFontAtlas>;
	@:native("FontGlobalScale")
	var fontGlobalScale : cpp.Float32;
	@:native("FontAllowUserScaling")
	var fontAllowUserScaling : Bool;
	@:native("FontDefault")
	var fontDefault : cpp.Star<ImFont>;
	@:native("DisplayFramebufferScale")
	var displayFramebufferScale : ImVec2;
	@:native("MouseDrawCursor")
	var mouseDrawCursor : Bool;
	@:native("ConfigMacOSXBehaviors")
	var configMacOSXBehaviors : Bool;
	@:native("ConfigInputTextCursorBlink")
	var configInputTextCursorBlink : Bool;
	@:native("ConfigWindowsResizeFromEdges")
	var configWindowsResizeFromEdges : Bool;
	@:native("ConfigWindowsMoveFromTitleBarOnly")
	var configWindowsMoveFromTitleBarOnly : Bool;
	@:native("ConfigWindowsMemoryCompactTimer")
	var configWindowsMemoryCompactTimer : cpp.Float32;
	@:native("BackendPlatformName")
	var backendPlatformName : cpp.ConstCharStar;
	@:native("BackendRendererName")
	var backendRendererName : cpp.ConstCharStar;
	@:native("BackendPlatformUserData")
	var backendPlatformUserData : imgui.VoidPointer;
	@:native("BackendRendererUserData")
	var backendRendererUserData : imgui.VoidPointer;
	@:native("BackendLanguageUserData")
	var backendLanguageUserData : imgui.VoidPointer;
	@:native("GetClipboardTextFn")
	var getClipboardTextFn : cpp.Callable<imgui.VoidPointer -> cpp.ConstCharStar>;
	@:native("SetClipboardTextFn")
	var setClipboardTextFn : cpp.Callable<(imgui.VoidPointer, cpp.ConstCharStar) -> Void>;
	@:native("ClipboardUserData")
	var clipboardUserData : imgui.VoidPointer;
	@:native("ImeSetInputScreenPosFn")
	var imeSetInputScreenPosFn : cpp.Callable<(Int, Int) -> Void>;
	@:native("ImeWindowHandle")
	var imeWindowHandle : imgui.VoidPointer;
	@:native("RenderDrawListsFnUnused")
	var renderDrawListsFnUnused : imgui.VoidPointer;
	@:native("MousePos")
	var mousePos : ImVec2;
	@:native("MouseDown")
	var mouseDown : imgui.BoolPointer;
	@:native("MouseWheel")
	var mouseWheel : cpp.Float32;
	@:native("MouseWheelH")
	var mouseWheelH : cpp.Float32;
	@:native("KeyCtrl")
	var keyCtrl : Bool;
	@:native("KeyShift")
	var keyShift : Bool;
	@:native("KeyAlt")
	var keyAlt : Bool;
	@:native("KeySuper")
	var keySuper : Bool;
	@:native("KeysDown")
	var keysDown : imgui.BoolPointer;
	@:native("NavInputs")
	var navInputs : imgui.FloatPointer;
	@:native("WantCaptureMouse")
	var wantCaptureMouse : Bool;
	@:native("WantCaptureKeyboard")
	var wantCaptureKeyboard : Bool;
	@:native("WantTextInput")
	var wantTextInput : Bool;
	@:native("WantSetMousePos")
	var wantSetMousePos : Bool;
	@:native("WantSaveIniSettings")
	var wantSaveIniSettings : Bool;
	@:native("NavActive")
	var navActive : Bool;
	@:native("NavVisible")
	var navVisible : Bool;
	@:native("Framerate")
	var framerate : cpp.Float32;
	@:native("MetricsRenderVertices")
	var metricsRenderVertices : Int;
	@:native("MetricsRenderIndices")
	var metricsRenderIndices : Int;
	@:native("MetricsRenderWindows")
	var metricsRenderWindows : Int;
	@:native("MetricsActiveWindows")
	var metricsActiveWindows : Int;
	@:native("MetricsActiveAllocations")
	var metricsActiveAllocations : Int;
	@:native("MouseDelta")
	var mouseDelta : ImVec2;
	@:native("MousePosPrev")
	var mousePosPrev : ImVec2;
	@:native("MouseClickedPos")
	var mouseClickedPos : cpp.RawPointer<ImVec2>;
	@:native("MouseClickedTime")
	var mouseClickedTime : cpp.RawPointer<Float>;
	@:native("MouseClicked")
	var mouseClicked : imgui.BoolPointer;
	@:native("MouseDoubleClicked")
	var mouseDoubleClicked : imgui.BoolPointer;
	@:native("MouseReleased")
	var mouseReleased : imgui.BoolPointer;
	@:native("MouseDownOwned")
	var mouseDownOwned : imgui.BoolPointer;
	@:native("MouseDownWasDoubleClick")
	var mouseDownWasDoubleClick : imgui.BoolPointer;
	@:native("MouseDownDuration")
	var mouseDownDuration : imgui.FloatPointer;
	@:native("MouseDownDurationPrev")
	var mouseDownDurationPrev : imgui.FloatPointer;
	@:native("MouseDragMaxDistanceAbs")
	var mouseDragMaxDistanceAbs : cpp.RawPointer<ImVec2>;
	@:native("MouseDragMaxDistanceSqr")
	var mouseDragMaxDistanceSqr : imgui.FloatPointer;
	@:native("KeysDownDuration")
	var keysDownDuration : imgui.FloatPointer;
	@:native("KeysDownDurationPrev")
	var keysDownDurationPrev : imgui.FloatPointer;
	@:native("NavInputsDownDuration")
	var navInputsDownDuration : imgui.FloatPointer;
	@:native("NavInputsDownDurationPrev")
	var navInputsDownDurationPrev : imgui.FloatPointer;
	@:native("InputQueueCharacters")
	var inputQueueCharacters : ImVectorImWchar;
	@:native("ImGuiIO")
	static function create():ImGuiIO;
	@:native("ClearInputCharacters")
	function clearInputCharacters():cpp.Void;
	@:native("AddInputCharactersUTF8")
	function addInputCharactersUTF8(_str:cpp.ConstCharStar):cpp.Void;
	@:native("AddInputCharacter")
	function addInputCharacter(_c:UInt):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyphRangesBuilder") extern class ImFontGlyphRangesBuilder {
	@:native("UsedChars")
	var usedChars : ImVectorImU32;
	@:native("SetBit")
	function setBit(_n:Int):cpp.Void;
	@:native("ImFontGlyphRangesBuilder")
	static function create():ImFontGlyphRangesBuilder;
	@:native("GetBit")
	function getBit(_n:Int):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("BuildRanges")
	function buildRanges(_out_ranges:ImVectorImWcharPointer):cpp.Void;
	@:native("AddText")
	@:overload(function(_text:cpp.ConstCharStar):cpp.Void { })
	function addText(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):cpp.Void;
	@:native("AddRanges")
	function addRanges(_ranges:cpp.Star<ImWchar>):cpp.Void;
	@:native("AddChar")
	function addChar(_c:ImWchar):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyph") extern class ImFontGlyph {
	@:native("Codepoint")
	var codepoint : ImWchar;
	@:native("AdvanceX")
	var advanceX : cpp.Float32;
	@:native("X0")
	var x0 : cpp.Float32;
	@:native("Y0")
	var y0 : cpp.Float32;
	@:native("X1")
	var x1 : cpp.Float32;
	@:native("Y1")
	var y1 : cpp.Float32;
	@:native("U0")
	var u0 : cpp.Float32;
	@:native("V0")
	var v0 : cpp.Float32;
	@:native("U1")
	var u1 : cpp.Float32;
	@:native("V1")
	var v1 : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontConfig") extern class ImFontConfig {
	@:native("FontData")
	var fontData : imgui.VoidPointer;
	@:native("FontDataSize")
	var fontDataSize : Int;
	@:native("FontDataOwnedByAtlas")
	var fontDataOwnedByAtlas : Bool;
	@:native("FontNo")
	var fontNo : Int;
	@:native("SizePixels")
	var sizePixels : cpp.Float32;
	@:native("OversampleH")
	var oversampleH : Int;
	@:native("OversampleV")
	var oversampleV : Int;
	@:native("PixelSnapH")
	var pixelSnapH : Bool;
	@:native("GlyphExtraSpacing")
	var glyphExtraSpacing : ImVec2;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("GlyphRanges")
	var glyphRanges : cpp.Star<ImWchar>;
	@:native("GlyphMinAdvanceX")
	var glyphMinAdvanceX : cpp.Float32;
	@:native("GlyphMaxAdvanceX")
	var glyphMaxAdvanceX : cpp.Float32;
	@:native("MergeMode")
	var mergeMode : Bool;
	@:native("RasterizerFlags")
	var rasterizerFlags : UInt;
	@:native("RasterizerMultiply")
	var rasterizerMultiply : cpp.Float32;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("Name")
	var name : cpp.RawPointer<cpp.Int8>;
	@:native("DstFont")
	var dstFont : cpp.Star<ImFont>;
	@:native("ImFontConfig")
	static function create():ImFontConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlasCustomRect") extern class ImFontAtlasCustomRect {
	@:native("ID")
	var iD : UInt;
	@:native("Width")
	var width : cpp.UInt16;
	@:native("Height")
	var height : cpp.UInt16;
	@:native("X")
	var x : cpp.UInt16;
	@:native("Y")
	var y : cpp.UInt16;
	@:native("GlyphAdvanceX")
	var glyphAdvanceX : cpp.Float32;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("IsPacked")
	function isPacked():Bool;
	@:native("ImFontAtlasCustomRect")
	static function create():ImFontAtlasCustomRect;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlas") extern class ImFontAtlas {
	@:native("Locked")
	var locked : Bool;
	@:native("Flags")
	var flags : ImFontAtlasFlags;
	@:native("TexID")
	var texID : ImTextureID;
	@:native("TexDesiredWidth")
	var texDesiredWidth : Int;
	@:native("TexGlyphPadding")
	var texGlyphPadding : Int;
	@:native("TexPixelsAlpha8")
	var texPixelsAlpha8 : imgui.CharPointer;
	@:native("TexPixelsRGBA32")
	var texPixelsRGBA32 : cpp.Star<UInt>;
	@:native("TexWidth")
	var texWidth : Int;
	@:native("TexHeight")
	var texHeight : Int;
	@:native("TexUvScale")
	var texUvScale : ImVec2;
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Fonts")
	var fonts : cpp.Star<ImVectorImFontPointer>;
	@:native("CustomRects")
	var customRects : ImVectorImFontAtlasCustomRect;
	@:native("ConfigData")
	var configData : ImVectorImFontConfig;
	@:native("CustomRectIds")
	var customRectIds : imgui.IntPointer;
	@:native("SetTexID")
	function setTexID(_id:ImTextureID):cpp.Void;
	@:native("IsBuilt")
	function isBuilt():Bool;
	@:native("ImFontAtlas")
	static function create():ImFontAtlas;
	@:native("GetTexDataAsRGBA32")
	@:overload(function(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer):cpp.Void { })
	function getTexDataAsRGBA32(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer, _out_bytes_per_pixel:imgui.IntPointer):cpp.Void;
	@:native("GetTexDataAsAlpha8")
	@:overload(function(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer):cpp.Void { })
	function getTexDataAsAlpha8(_out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, _out_width:imgui.IntPointer, _out_height:imgui.IntPointer, _out_bytes_per_pixel:imgui.IntPointer):cpp.Void;
	@:native("GetMouseCursorTexData")
	function getMouseCursorTexData(_cursor:ImGuiMouseCursor, _out_offset:cpp.Star<ImVec2>, _out_size:cpp.Star<ImVec2>, _out_uv_border:cpp.RawPointer<ImVec2>, _out_uv_fill:cpp.RawPointer<ImVec2>):Bool;
	@:native("GetGlyphRangesVietnamese")
	function getGlyphRangesVietnamese():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesThai")
	function getGlyphRangesThai():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesKorean")
	function getGlyphRangesKorean():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesJapanese")
	function getGlyphRangesJapanese():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesDefault")
	function getGlyphRangesDefault():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesCyrillic")
	function getGlyphRangesCyrillic():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesChineseSimplifiedCommon")
	function getGlyphRangesChineseSimplifiedCommon():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesChineseFull")
	function getGlyphRangesChineseFull():cpp.Star<ImWchar>;
	@:native("GetCustomRectByIndex")
	function getCustomRectByIndex(_index:Int):cpp.Star<ImFontAtlasCustomRect>;
	@:native("ClearTexData")
	function clearTexData():cpp.Void;
	@:native("ClearInputData")
	function clearInputData():cpp.Void;
	@:native("ClearFonts")
	function clearFonts():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("CalcCustomRectUV")
	function calcCustomRectUV(_rect:cpp.Star<ImFontAtlasCustomRect>, _out_uv_min:cpp.Star<ImVec2>, _out_uv_max:cpp.Star<ImVec2>):cpp.Void;
	@:native("Build")
	function build():Bool;
	@:native("AddFontFromMemoryTTF")
	@:overload(function(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryTTF(_font_data:imgui.VoidPointer, _font_size:Int, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromMemoryCompressedTTF")
	@:overload(function(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryCompressedTTF(_compressed_font_data:imgui.VoidPointer, _compressed_font_size:Int, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromMemoryCompressedBase85TTF")
	@:overload(function(_compressed_font_data_base85:cpp.ConstCharStar, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_compressed_font_data_base85:cpp.ConstCharStar, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryCompressedBase85TTF(_compressed_font_data_base85:cpp.ConstCharStar, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromFileTTF")
	@:overload(function(_filename:cpp.ConstCharStar, _size_pixels:cpp.Float32, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(_filename:cpp.ConstCharStar, _size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromFileTTF(_filename:cpp.ConstCharStar, _size_pixels:cpp.Float32, _font_cfg:cpp.Star<ImFontConfig>, _glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontDefault")
	@:overload(function():cpp.Star<ImFont> { })
	function addFontDefault(_font_cfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont>;
	@:native("AddFont")
	function addFont(_font_cfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont>;
	@:native("AddCustomRectRegular")
	function addCustomRectRegular(_id:UInt, _width:Int, _height:Int):Int;
	@:native("AddCustomRectFontGlyph")
	@:overload(function(_font:cpp.Star<ImFont>, _id:ImWchar, _width:Int, _height:Int, _advance_x:cpp.Float32):Int { })
	function addCustomRectFontGlyph(_font:cpp.Star<ImFont>, _id:ImWchar, _width:Int, _height:Int, _advance_x:cpp.Float32, _offset:ImVec2):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFont") extern class ImFont {
	@:native("IndexAdvanceX")
	var indexAdvanceX : ImVectorfloat;
	@:native("FallbackAdvanceX")
	var fallbackAdvanceX : cpp.Float32;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("IndexLookup")
	var indexLookup : ImVectorImWchar;
	@:native("Glyphs")
	var glyphs : ImVectorImFontGlyph;
	@:native("FallbackGlyph")
	var fallbackGlyph : cpp.Star<ImFontGlyph>;
	@:native("DisplayOffset")
	var displayOffset : ImVec2;
	@:native("ContainerAtlas")
	var containerAtlas : cpp.Star<ImFontAtlas>;
	@:native("ConfigData")
	var configData : cpp.Star<ImFontConfig>;
	@:native("ConfigDataCount")
	var configDataCount : cpp.Int16;
	@:native("FallbackChar")
	var fallbackChar : ImWchar;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("DirtyLookupTables")
	var dirtyLookupTables : Bool;
	@:native("Scale")
	var scale : cpp.Float32;
	@:native("Ascent")
	var ascent : cpp.Float32;
	@:native("Descent")
	var descent : cpp.Float32;
	@:native("MetricsTotalSurface")
	var metricsTotalSurface : Int;
	@:native("SetFallbackChar")
	function setFallbackChar(_c:ImWchar):cpp.Void;
	@:native("RenderText")
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _clip_rect:ImVec4, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _clip_rect:ImVec4, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):cpp.Void { })
	function renderText(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _clip_rect:ImVec4, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32, _cpu_fine_clip:Bool):cpp.Void;
	@:native("RenderChar")
	function renderChar(_draw_list:cpp.Star<ImDrawList>, _size:cpp.Float32, _pos:ImVec2, _col:ImU32, _c:ImWchar):cpp.Void;
	@:native("IsLoaded")
	function isLoaded():Bool;
	@:native("ImFont")
	static function create():ImFont;
	@:native("GrowIndex")
	function growIndex(_new_size:Int):cpp.Void;
	@:native("GetDebugName")
	function getDebugName():cpp.ConstCharStar;
	@:native("GetCharAdvance")
	function getCharAdvance(_c:ImWchar):cpp.Float32;
	@:native("FindGlyphNoFallback")
	function findGlyphNoFallback(_c:ImWchar):cpp.Star<ImFontGlyph>;
	@:native("FindGlyph")
	function findGlyph(_c:ImWchar):cpp.Star<ImFontGlyph>;
	@:native("ClearOutputData")
	function clearOutputData():cpp.Void;
	@:native("CalcWordWrapPositionA")
	function calcWordWrapPositionA(_scale:cpp.Float32, _text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32):cpp.ConstCharStar;
	@:native("CalcTextSizeA")
	@:overload(function(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):ImVec2 { })
	@:overload(function(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar):ImVec2 { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _remaining:cpp.Star<cpp.RawConstPointer<cpp.Int8>>):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImFont>, _size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _remaining:cpp.Star<cpp.RawConstPointer<cpp.Int8>>):ImVec2 { })
	@:overload(function(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):ImVec2 { })
	@:overload(function(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar):ImVec2 { })
	function calcTextSizeA(_size:cpp.Float32, _max_width:cpp.Float32, _wrap_width:cpp.Float32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _remaining:cpp.Star<cpp.RawConstPointer<cpp.Int8>>):ImVec2;
	@:native("BuildLookupTable")
	function buildLookupTable():cpp.Void;
	@:native("AddRemapChar")
	@:overload(function(_dst:ImWchar, _src:ImWchar):cpp.Void { })
	function addRemapChar(_dst:ImWchar, _src:ImWchar, _overwrite_dst:Bool):cpp.Void;
	@:native("AddGlyph")
	function addGlyph(_c:ImWchar, _x0:cpp.Float32, _y0:cpp.Float32, _x1:cpp.Float32, _y1:cpp.Float32, _u0:cpp.Float32, _v0:cpp.Float32, _u1:cpp.Float32, _v1:cpp.Float32, _advance_x:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawVert") extern class ImDrawVert {
	@:native("pos")
	var pos : ImVec2;
	@:native("uv")
	var uv : ImVec2;
	@:native("col")
	var col : ImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSplitter") extern class ImDrawListSplitter {
	@:native("_Current")
	var _Current : Int;
	@:native("_Count")
	var _Count : Int;
	@:native("_Channels")
	var _Channels : ImVectorImDrawChannel;
	@:native("Split")
	function split(_draw_list:cpp.Star<ImDrawList>, _count:Int):cpp.Void;
	@:native("SetCurrentChannel")
	function setCurrentChannel(_draw_list:cpp.Star<ImDrawList>, _channel_idx:Int):cpp.Void;
	@:native("Merge")
	function merge(_draw_list:cpp.Star<ImDrawList>):cpp.Void;
	@:native("ImDrawListSplitter")
	static function create():ImDrawListSplitter;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawList") extern class ImDrawList {
	@:native("CmdBuffer")
	var cmdBuffer : ImVectorImDrawCmd;
	@:native("IdxBuffer")
	var idxBuffer : ImVectorImDrawIdx;
	@:native("VtxBuffer")
	var vtxBuffer : ImVectorImDrawVert;
	@:native("Flags")
	var flags : ImDrawListFlags;
	@:native("_Data")
	var _Data : cpp.Star<ImDrawListSharedData>;
	@:native("_OwnerName")
	var _OwnerName : cpp.ConstCharStar;
	@:native("_VtxCurrentOffset")
	var _VtxCurrentOffset : UInt;
	@:native("_VtxCurrentIdx")
	var _VtxCurrentIdx : UInt;
	@:native("_VtxWritePtr")
	var _VtxWritePtr : cpp.Star<ImDrawVert>;
	@:native("_IdxWritePtr")
	var _IdxWritePtr : cpp.Star<ImDrawIdx>;
	@:native("_ClipRectStack")
	var _ClipRectStack : ImVectorImVec4;
	@:native("_TextureIdStack")
	var _TextureIdStack : ImVectorImTextureID;
	@:native("_Path")
	var _Path : ImVectorImVec2;
	@:native("_Splitter")
	var _Splitter : ImDrawListSplitter;
	@:native("UpdateTextureID")
	function updateTextureID():cpp.Void;
	@:native("UpdateClipRect")
	function updateClipRect():cpp.Void;
	@:native("PushTextureID")
	function pushTextureID(_texture_id:ImTextureID):cpp.Void;
	@:native("PushClipRectFullScreen")
	function pushClipRectFullScreen():cpp.Void;
	@:native("PushClipRect")
	@:overload(function(_clip_rect_min:ImVec2, _clip_rect_max:ImVec2):cpp.Void { })
	function pushClipRect(_clip_rect_min:ImVec2, _clip_rect_max:ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("PrimWriteVtx")
	function primWriteVtx(_pos:ImVec2, _uv:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimWriteIdx")
	function primWriteIdx(_idx:ImDrawIdx):cpp.Void;
	@:native("PrimVtx")
	function primVtx(_pos:ImVec2, _uv:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimUnreserve")
	function primUnreserve(_idx_count:Int, _vtx_count:Int):cpp.Void;
	@:native("PrimReserve")
	function primReserve(_idx_count:Int, _vtx_count:Int):cpp.Void;
	@:native("PrimRectUV")
	function primRectUV(_a:ImVec2, _b:ImVec2, _uv_a:ImVec2, _uv_b:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimRect")
	function primRect(_a:ImVec2, _b:ImVec2, _col:ImU32):cpp.Void;
	@:native("PrimQuadUV")
	function primQuadUV(_a:ImVec2, _b:ImVec2, _c:ImVec2, _d:ImVec2, _uv_a:ImVec2, _uv_b:ImVec2, _uv_c:ImVec2, _uv_d:ImVec2, _col:ImU32):cpp.Void;
	@:native("PopTextureID")
	function popTextureID():cpp.Void;
	@:native("PopClipRect")
	function popClipRect():cpp.Void;
	@:native("PathStroke")
	@:overload(function(_col:ImU32, _closed:Bool):cpp.Void { })
	function pathStroke(_col:ImU32, _closed:Bool, _thickness:cpp.Float32):cpp.Void;
	@:native("PathRect")
	@:overload(function(_rect_min:ImVec2, _rect_max:ImVec2, _rounding_corners:ImDrawCornerFlags):cpp.Void { })
	@:overload(function(_rect_min:ImVec2, _rect_max:ImVec2):cpp.Void { })
	function pathRect(_rect_min:ImVec2, _rect_max:ImVec2, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("PathLineToMergeDuplicate")
	function pathLineToMergeDuplicate(_pos:ImVec2):cpp.Void;
	@:native("PathLineTo")
	function pathLineTo(_pos:ImVec2):cpp.Void;
	@:native("PathFillConvex")
	function pathFillConvex(_col:ImU32):cpp.Void;
	@:native("PathClear")
	function pathClear():cpp.Void;
	@:native("PathBezierCurveTo")
	@:overload(function(_p2:ImVec2, _p3:ImVec2, _p4:ImVec2):cpp.Void { })
	function pathBezierCurveTo(_p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _num_segments:Int):cpp.Void;
	@:native("PathArcToFast")
	function pathArcToFast(_center:ImVec2, _radius:cpp.Float32, _a_min_of_12:Int, _a_max_of_12:Int):cpp.Void;
	@:native("PathArcTo")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _a_min:cpp.Float32, _a_max:cpp.Float32):cpp.Void { })
	function pathArcTo(_center:ImVec2, _radius:cpp.Float32, _a_min:cpp.Float32, _a_max:cpp.Float32, _num_segments:Int):cpp.Void;
	@:native("ImDrawList")
	static function create(_shared_data:cpp.Star<ImDrawListSharedData>):ImDrawList;
	@:native("GetClipRectMin")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImDrawList>):cpp.Void { })
	@:overload(function():ImVec2 { })
	function getClipRectMin():ImVec2;
	@:native("GetClipRectMax")
	@:overload(function(_pOut:cpp.Star<ImVec2>, _self:cpp.Star<ImDrawList>):cpp.Void { })
	@:overload(function():ImVec2 { })
	function getClipRectMax():ImVec2;
	@:native("CloneOutput")
	function cloneOutput():cpp.Star<ImDrawList>;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("ChannelsSplit")
	function channelsSplit(_count:Int):cpp.Void;
	@:native("ChannelsSetCurrent")
	function channelsSetCurrent(_n:Int):cpp.Void;
	@:native("ChannelsMerge")
	function channelsMerge():cpp.Void;
	@:native("AddTriangleFilled")
	function addTriangleFilled(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddTriangle")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _col:ImU32):cpp.Void { })
	function addTriangle(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("AddText")
	@:overload(function(_pos:ImVec2, _col:ImU32, _text_begin:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32, _cpu_fine_clip_rect:cpp.Star<ImVec4>):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:cpp.ConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_font:cpp.Star<ImFont>, _font_size:cpp.Float32, _pos:ImVec2, _col:ImU32, _text_begin:cpp.ConstCharStar):cpp.Void { })
	function addText(_pos:ImVec2, _col:ImU32, _text_begin:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):cpp.Void;
	@:native("AddRectFilledMultiColor")
	function addRectFilledMultiColor(_p_min:ImVec2, _p_max:ImVec2, _col_upr_left:ImU32, _col_upr_right:ImU32, _col_bot_right:ImU32, _col_bot_left:ImU32):cpp.Void;
	@:native("AddRectFilled")
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding_corners:ImDrawCornerFlags):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32):cpp.Void { })
	function addRectFilled(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("AddRect")
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding_corners:ImDrawCornerFlags, _thickness:cpp.Float32):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void { })
	@:overload(function(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32):cpp.Void { })
	function addRect(_p_min:ImVec2, _p_max:ImVec2, _col:ImU32, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags, _thickness:cpp.Float32):cpp.Void;
	@:native("AddQuadFilled")
	function addQuadFilled(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddQuad")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32):cpp.Void { })
	function addQuad(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("AddPolyline")
	function addPolyline(_points:cpp.Star<ImVec2>, _num_points:Int, _col:ImU32, _closed:Bool, _thickness:cpp.Float32):cpp.Void;
	@:native("AddNgonFilled")
	function addNgonFilled(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int):cpp.Void;
	@:native("AddNgon")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int):cpp.Void { })
	function addNgon(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int, _thickness:cpp.Float32):cpp.Void;
	@:native("AddLine")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _col:ImU32):cpp.Void { })
	function addLine(_p1:ImVec2, _p2:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void;
	@:native("AddImageRounded")
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2, _col:ImU32, _rounding:cpp.Float32):cpp.Void { })
	function addImageRounded(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2, _col:ImU32, _rounding:cpp.Float32, _rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("AddImageQuad")
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv1:ImVec2, _uv2:ImVec2, _uv3:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv2:ImVec2, _uv3:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv3:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv4:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2):cpp.Void { })
	function addImageQuad(_user_texture_id:ImTextureID, _p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _uv1:ImVec2, _uv2:ImVec2, _uv3:ImVec2, _uv4:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddImage")
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2):cpp.Void { })
	function addImage(_user_texture_id:ImTextureID, _p_min:ImVec2, _p_max:ImVec2, _uv_min:ImVec2, _uv_max:ImVec2, _col:ImU32):cpp.Void;
	@:native("AddDrawCmd")
	function addDrawCmd():cpp.Void;
	@:native("AddConvexPolyFilled")
	function addConvexPolyFilled(_points:cpp.Star<ImVec2>, _num_points:Int, _col:ImU32):cpp.Void;
	@:native("AddCircleFilled")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32):cpp.Void { })
	function addCircleFilled(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int):cpp.Void;
	@:native("AddCircle")
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _thickness:cpp.Float32):cpp.Void { })
	@:overload(function(_center:ImVec2, _radius:cpp.Float32, _col:ImU32):cpp.Void { })
	function addCircle(_center:ImVec2, _radius:cpp.Float32, _col:ImU32, _num_segments:Int, _thickness:cpp.Float32):cpp.Void;
	@:native("AddCallback")
	function addCallback(_callback:ImDrawCallback, _callback_data:imgui.VoidPointer):cpp.Void;
	@:native("AddBezierCurve")
	@:overload(function(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32, _thickness:cpp.Float32):cpp.Void { })
	function addBezierCurve(_p1:ImVec2, _p2:ImVec2, _p3:ImVec2, _p4:ImVec2, _col:ImU32, _thickness:cpp.Float32, _num_segments:Int):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawData") extern class ImDrawData {
	@:native("Valid")
	var valid : Bool;
	@:native("CmdLists")
	var cmdLists : cpp.RawPointer<cpp.Star<ImDrawList>>;
	@:native("CmdListsCount")
	var cmdListsCount : Int;
	@:native("TotalIdxCount")
	var totalIdxCount : Int;
	@:native("TotalVtxCount")
	var totalVtxCount : Int;
	@:native("DisplayPos")
	var displayPos : ImVec2;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("FramebufferScale")
	var framebufferScale : ImVec2;
	@:native("ScaleClipRects")
	function scaleClipRects(_fb_scale:ImVec2):cpp.Void;
	@:native("ImDrawData")
	static function create():ImDrawData;
	@:native("DeIndexAllBuffers")
	function deIndexAllBuffers():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawCmd") extern class ImDrawCmd {
	@:native("ElemCount")
	var elemCount : UInt;
	@:native("ClipRect")
	var clipRect : ImVec4;
	@:native("TextureId")
	var textureId : ImTextureID;
	@:native("VtxOffset")
	var vtxOffset : UInt;
	@:native("IdxOffset")
	var idxOffset : UInt;
	@:native("UserCallback")
	var userCallback : ImDrawCallback;
	@:native("UserCallbackData")
	var userCallbackData : imgui.VoidPointer;
	@:native("ImDrawCmd")
	static function create():ImDrawCmd;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawChannel") extern class ImDrawChannel {
	@:native("_CmdBuffer")
	var _CmdBuffer : ImVectorImDrawCmd;
	@:native("_IdxBuffer")
	var _IdxBuffer : ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImColor") extern class ImColor {
	@:native("Value")
	var value : ImVec4;
	@:native("SetHSV")
	@:overload(function(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32):cpp.Void { })
	function setHSV(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):cpp.Void;
	@:native("ImColor")
	@:overload(function(_r:Int, _g:Int, _b:Int, _a:Int):ImColor { })
	@:overload(function(_r:Int, _g:Int, _b:Int):ImColor { })
	@:overload(function(_rgba:ImU32):ImColor { })
	@:overload(function(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _a:cpp.Float32):ImColor { })
	@:overload(function(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32):ImColor { })
	@:overload(function(_col:ImVec4):ImColor { })
	static function create():ImColor;
	@:native("HSV")
	@:overload(function(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32):ImColor { })
	@:overload(function(_pOut:cpp.Star<ImColor>, _self:cpp.Star<ImColor>, _h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImColor>, _self:cpp.Star<ImColor>, _h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32):cpp.Void { })
	@:overload(function(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):ImColor { })
	@:overload(function(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32):ImColor { })
	function hSV(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _a:cpp.Float32):ImColor;
}

@:keep @:structAccess @:include("imgui.h") @:build(imgui.linc.Linc.xml("imgui")) @:build(imgui.linc.Linc.touch()) extern class ImGui {
	@:native("ImGui::Value")
	@:overload(function(_prefix:cpp.ConstCharStar, _v:Int):cpp.Void { })
	@:overload(function(_prefix:cpp.ConstCharStar, _v:UInt):cpp.Void { })
	@:overload(function(_prefix:cpp.ConstCharStar, _v:cpp.Float32, _float_format:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_prefix:cpp.ConstCharStar, _v:cpp.Float32):cpp.Void { })
	static function value(_prefix:cpp.ConstCharStar, _b:Bool):cpp.Void;
	@:native("ImGui::VSliderScalar")
	@:overload(function(_label:cpp.ConstCharStar, _size:ImVec2, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _size:ImVec2, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool { })
	static function vSliderScalar(_label:cpp.ConstCharStar, _size:ImVec2, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::VSliderInt")
	@:overload(function(_label:cpp.ConstCharStar, _size:ImVec2, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function vSliderInt(_label:cpp.ConstCharStar, _size:ImVec2, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::VSliderFloat")
	@:overload(function(_label:cpp.ConstCharStar, _size:ImVec2, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _size:ImVec2, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function vSliderFloat(_label:cpp.ConstCharStar, _size:ImVec2, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::Unindent")
	@:overload(function():cpp.Void { })
	static function unindent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::TreePush")
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function treePush(_str_id:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::TreePop")
	static function treePop():cpp.Void;
	@:native("ImGui::TreeNodeV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:cpp.ConstCharStar, _args:cpp.VarArg):Bool { })
	static function treeNodeV(_str_id:cpp.ConstCharStar, _fmt:cpp.ConstCharStar, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeExV")
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:ImGuiTreeNodeFlags, _fmt:cpp.ConstCharStar, _args:cpp.VarArg):Bool { })
	static function treeNodeExV(_str_id:cpp.ConstCharStar, _flags:ImGuiTreeNodeFlags, _fmt:cpp.ConstCharStar, _args:cpp.VarArg):Bool;
	@:native("ImGui::TreeNodeEx")
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	@:overload(function(_str_id:cpp.ConstCharStar, _flags:ImGuiTreeNodeFlags, _fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _flags:ImGuiTreeNodeFlags, _fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):Bool { })
	static function treeNodeEx(_label:cpp.ConstCharStar, _flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::TreeNode")
	@:overload(function(_str_id:cpp.ConstCharStar, _fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):Bool { })
	@:overload(function(_ptr_id:imgui.VoidPointer, _fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):Bool { })
	static function treeNode(_label:cpp.ConstCharStar):Bool;
	@:native("ImGui::TextWrappedV")
	static function textWrappedV(_fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextWrapped")
	static function textWrapped(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextV")
	static function textV(_fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextUnformatted")
	@:overload(function(_text:cpp.ConstCharStar):cpp.Void { })
	static function textUnformatted(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::TextDisabledV")
	static function textDisabledV(_fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextDisabled")
	static function textDisabled(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColoredV")
	static function textColoredV(_col:ImVec4, _fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextColored")
	static function textColored(_col:ImVec4, _fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Text")
	static function text(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::StyleColorsLight")
	@:overload(function():cpp.Void { })
	static function styleColorsLight(_dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsDark")
	@:overload(function():cpp.Void { })
	static function styleColorsDark(_dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsClassic")
	@:overload(function():cpp.Void { })
	static function styleColorsClassic(_dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::Spacing")
	static function spacing():cpp.Void;
	@:native("ImGui::SmallButton")
	static function smallButton(_label:cpp.ConstCharStar):Bool;
	@:native("ImGui::SliderScalarN")
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool { })
	static function sliderScalarN(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderScalar")
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer):Bool { })
	static function sliderScalar(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderInt4")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt4(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::SliderInt3")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt3(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::SliderInt2")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt2(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::SliderInt")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int):Bool { })
	static function sliderInt(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::SliderFloat4")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat4(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat3")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat3(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat2")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat2(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderFloat")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	static function sliderFloat(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::SliderAngle")
	@:overload(function(_label:cpp.ConstCharStar, _v_rad:imgui.FloatPointer, _v_degrees_min:cpp.Float32, _v_degrees_max:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_rad:imgui.FloatPointer, _v_degrees_min:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_rad:imgui.FloatPointer):Bool { })
	static function sliderAngle(_label:cpp.ConstCharStar, _v_rad:imgui.FloatPointer, _v_degrees_min:cpp.Float32, _v_degrees_max:cpp.Float32, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::ShowUserGuide")
	static function showUserGuide():cpp.Void;
	@:native("ImGui::ShowStyleSelector")
	static function showStyleSelector(_label:cpp.ConstCharStar):Bool;
	@:native("ImGui::ShowStyleEditor")
	@:overload(function():cpp.Void { })
	static function showStyleEditor(_ref:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::ShowMetricsWindow")
	@:overload(function():cpp.Void { })
	static function showMetricsWindow(_p_open:imgui.BoolPointer):cpp.Void;
	@:native("ImGui::ShowFontSelector")
	static function showFontSelector(_label:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::ShowDemoWindow")
	@:overload(function():cpp.Void { })
	static function showDemoWindow(_p_open:imgui.BoolPointer):cpp.Void;
	@:native("ImGui::ShowAboutWindow")
	@:overload(function():cpp.Void { })
	static function showAboutWindow(_p_open:imgui.BoolPointer):cpp.Void;
	@:native("ImGui::SetWindowSize")
	@:overload(function(_size:ImVec2):cpp.Void { })
	@:overload(function(_name:cpp.ConstCharStar, _size:ImVec2, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_name:cpp.ConstCharStar, _size:ImVec2):cpp.Void { })
	static function setWindowSize(_size:ImVec2, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowPos")
	@:overload(function(_pos:ImVec2):cpp.Void { })
	@:overload(function(_name:cpp.ConstCharStar, _pos:ImVec2, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_name:cpp.ConstCharStar, _pos:ImVec2):cpp.Void { })
	static function setWindowPos(_pos:ImVec2, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowFontScale")
	static function setWindowFontScale(_scale:cpp.Float32):cpp.Void;
	@:native("ImGui::SetWindowFocus")
	@:overload(function(_name:cpp.ConstCharStar):cpp.Void { })
	static function setWindowFocus():cpp.Void;
	@:native("ImGui::SetWindowCollapsed")
	@:overload(function(_collapsed:Bool):cpp.Void { })
	@:overload(function(_name:cpp.ConstCharStar, _collapsed:Bool, _cond:ImGuiCond):cpp.Void { })
	@:overload(function(_name:cpp.ConstCharStar, _collapsed:Bool):cpp.Void { })
	static function setWindowCollapsed(_collapsed:Bool, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetTooltipV")
	static function setTooltipV(_fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTooltip")
	static function setTooltip(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::SetTabItemClosed")
	static function setTabItemClosed(_tab_or_docked_window_label:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::SetStateStorage")
	static function setStateStorage(_storage:cpp.Star<ImGuiStorage>):cpp.Void;
	@:native("ImGui::SetScrollY")
	static function setScrollY(_scroll_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollX")
	static function setScrollX(_scroll_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereY")
	@:overload(function():cpp.Void { })
	static function setScrollHereY(_center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereX")
	@:overload(function():cpp.Void { })
	static function setScrollHereX(_center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosY")
	@:overload(function(_local_y:cpp.Float32):cpp.Void { })
	static function setScrollFromPosY(_local_y:cpp.Float32, _center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosX")
	@:overload(function(_local_x:cpp.Float32):cpp.Void { })
	static function setScrollFromPosX(_local_x:cpp.Float32, _center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextWindowSizeConstraints")
	@:overload(function(_size_min:ImVec2, _size_max:ImVec2, _custom_callback_data:imgui.VoidPointer):cpp.Void { })
	@:overload(function(_size_min:ImVec2, _size_max:ImVec2):cpp.Void { })
	static function setNextWindowSizeConstraints(_size_min:ImVec2, _size_max:ImVec2, _custom_callback:ImGuiSizeCallback, _custom_callback_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::SetNextWindowSize")
	@:overload(function(_size:ImVec2):cpp.Void { })
	static function setNextWindowSize(_size:ImVec2, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowPos")
	@:overload(function(_pos:ImVec2, _pivot:ImVec2):cpp.Void { })
	@:overload(function(_pos:ImVec2):cpp.Void { })
	static function setNextWindowPos(_pos:ImVec2, _cond:ImGuiCond, _pivot:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowFocus")
	static function setNextWindowFocus():cpp.Void;
	@:native("ImGui::SetNextWindowContentSize")
	static function setNextWindowContentSize(_size:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowCollapsed")
	@:overload(function(_collapsed:Bool):cpp.Void { })
	static function setNextWindowCollapsed(_collapsed:Bool, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowBgAlpha")
	static function setNextWindowBgAlpha(_alpha:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemWidth")
	static function setNextItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemOpen")
	@:overload(function(_is_open:Bool):cpp.Void { })
	static function setNextItemOpen(_is_open:Bool, _cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetMouseCursor")
	static function setMouseCursor(_cursor_type:ImGuiMouseCursor):cpp.Void;
	@:native("ImGui::SetKeyboardFocusHere")
	@:overload(function():cpp.Void { })
	static function setKeyboardFocusHere(_offset:Int):cpp.Void;
	@:native("ImGui::SetItemDefaultFocus")
	static function setItemDefaultFocus():cpp.Void;
	@:native("ImGui::SetItemAllowOverlap")
	static function setItemAllowOverlap():cpp.Void;
	@:native("ImGui::SetDragDropPayload")
	@:overload(function(_type:cpp.ConstCharStar, _data:imgui.VoidPointer, _sz:cpp.SizeT):Bool { })
	static function setDragDropPayload(_type:cpp.ConstCharStar, _data:imgui.VoidPointer, _sz:cpp.SizeT, _cond:ImGuiCond):Bool;
	@:native("ImGui::SetCursorScreenPos")
	static function setCursorScreenPos(_pos:ImVec2):cpp.Void;
	@:native("ImGui::SetCursorPosY")
	static function setCursorPosY(_local_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPosX")
	static function setCursorPosX(_local_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPos")
	static function setCursorPos(_local_pos:ImVec2):cpp.Void;
	@:native("ImGui::SetCurrentContext")
	static function setCurrentContext(_ctx:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::SetColumnWidth")
	static function setColumnWidth(_column_index:Int, _width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColumnOffset")
	static function setColumnOffset(_column_index:Int, _offset_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColorEditOptions")
	static function setColorEditOptions(_flags:ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::SetClipboardText")
	static function setClipboardText(_text:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::SetAllocatorFunctions")
	@:overload(function(_alloc_func:cpp.Callable<(cpp.SizeT, imgui.VoidPointer) -> imgui.VoidPointer>, _free_func:cpp.Callable<(imgui.VoidPointer, imgui.VoidPointer) -> Void>):cpp.Void { })
	static function setAllocatorFunctions(_alloc_func:cpp.Callable<(cpp.SizeT, imgui.VoidPointer) -> imgui.VoidPointer>, _free_func:cpp.Callable<(imgui.VoidPointer, imgui.VoidPointer) -> Void>, _user_data:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::Separator")
	static function separator():cpp.Void;
	@:native("ImGui::Selectable")
	@:overload(function(_label:cpp.ConstCharStar, _selected:Bool, _size:ImVec2):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _size:ImVec2):Bool { })
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _p_selected:imgui.BoolPointer, _flags:ImGuiSelectableFlags, _size:ImVec2):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _p_selected:imgui.BoolPointer, _size:ImVec2):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _p_selected:imgui.BoolPointer):Bool { })
	static function selectable(_label:cpp.ConstCharStar, _selected:Bool, _flags:ImGuiSelectableFlags, _size:ImVec2):Bool;
	@:native("ImGui::SaveIniSettingsToMemory")
	@:overload(function():cpp.ConstCharStar { })
	static function saveIniSettingsToMemory(_out_ini_size:cpp.Star<cpp.SizeT>):cpp.ConstCharStar;
	@:native("ImGui::SaveIniSettingsToDisk")
	static function saveIniSettingsToDisk(_ini_filename:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::SameLine")
	@:overload(function(_spacing:cpp.Float32):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function sameLine(_offset_from_start_x:cpp.Float32, _spacing:cpp.Float32):cpp.Void;
	@:native("ImGui::ResetMouseDragDelta")
	@:overload(function():cpp.Void { })
	static function resetMouseDragDelta(_button:ImGuiMouseButton):cpp.Void;
	@:native("ImGui::Render")
	static function render():cpp.Void;
	@:native("ImGui::RadioButton")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_button:Int):Bool { })
	static function radioButton(_label:cpp.ConstCharStar, _active:Bool):Bool;
	@:native("ImGui::PushTextWrapPos")
	@:overload(function():cpp.Void { })
	static function pushTextWrapPos(_wrap_local_pos_x:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleVar")
	@:overload(function(_idx:ImGuiStyleVar, _val:ImVec2):cpp.Void { })
	static function pushStyleVar(_idx:ImGuiStyleVar, _val:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleColor")
	@:overload(function(_idx:ImGuiCol, _col:ImVec4):cpp.Void { })
	static function pushStyleColor(_idx:ImGuiCol, _col:ImU32):cpp.Void;
	@:native("ImGui::PushItemWidth")
	static function pushItemWidth(_item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::PushID")
	@:overload(function(_str_id_begin:cpp.ConstCharStar, _str_id_end:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_ptr_id:imgui.VoidPointer):cpp.Void { })
	@:overload(function(_int_id:Int):cpp.Void { })
	static function pushID(_str_id:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::PushFont")
	static function pushFont(_font:cpp.Star<ImFont>):cpp.Void;
	@:native("ImGui::PushClipRect")
	static function pushClipRect(_clip_rect_min:ImVec2, _clip_rect_max:ImVec2, _intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("ImGui::PushButtonRepeat")
	static function pushButtonRepeat(_repeat:Bool):cpp.Void;
	@:native("ImGui::PushAllowKeyboardFocus")
	static function pushAllowKeyboardFocus(_allow_keyboard_focus:Bool):cpp.Void;
	@:native("ImGui::ProgressBar")
	@:overload(function(_fraction:cpp.Float32, _size_arg:ImVec2):cpp.Void { })
	@:overload(function(_fraction:cpp.Float32):cpp.Void { })
	static function progressBar(_fraction:cpp.Float32, _size_arg:ImVec2, _overlay:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::PopTextWrapPos")
	static function popTextWrapPos():cpp.Void;
	@:native("ImGui::PopStyleVar")
	@:overload(function():cpp.Void { })
	static function popStyleVar(_count:Int):cpp.Void;
	@:native("ImGui::PopStyleColor")
	@:overload(function():cpp.Void { })
	static function popStyleColor(_count:Int):cpp.Void;
	@:native("ImGui::PopItemWidth")
	static function popItemWidth():cpp.Void;
	@:native("ImGui::PopID")
	static function popID():cpp.Void;
	@:native("ImGui::PopFont")
	static function popFont():cpp.Void;
	@:native("ImGui::PopClipRect")
	static function popClipRect():cpp.Void;
	@:native("ImGui::PopButtonRepeat")
	static function popButtonRepeat():cpp.Void;
	@:native("ImGui::PopAllowKeyboardFocus")
	static function popAllowKeyboardFocus():cpp.Void;
	@:native("ImGui::PlotLines")
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int):cpp.Void { })
	static function plotLines(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::PlotHistogram")
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _stride:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32, _scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int, _scale_min:cpp.Float32):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int, _values_offset:Int):cpp.Void { })
	@:overload(function(_label:cpp.ConstCharStar, _values_getter:cpp.Callable<(imgui.VoidPointer, Int) -> cpp.Float32>, _data:imgui.VoidPointer, _values_count:Int):cpp.Void { })
	static function plotHistogram(_label:cpp.ConstCharStar, _values:imgui.FloatPointer, _values_count:Int, _values_offset:Int, _overlay_text:cpp.ConstCharStar, _scale_min:cpp.Float32, _scale_max:cpp.Float32, _graph_size:ImVec2, _stride:Int):cpp.Void;
	@:native("ImGui::OpenPopupOnItemClick")
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function openPopupOnItemClick(_str_id:cpp.ConstCharStar, _mouse_button:ImGuiMouseButton):Bool;
	@:native("ImGui::OpenPopup")
	static function openPopup(_str_id:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::NextColumn")
	static function nextColumn():cpp.Void;
	@:native("ImGui::NewLine")
	static function newLine():cpp.Void;
	@:native("ImGui::NewFrame")
	static function newFrame():cpp.Void;
	@:native("ImGui::MenuItem")
	@:overload(function(_label:cpp.ConstCharStar, _shortcut:cpp.ConstCharStar, _selected:Bool):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _shortcut:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _shortcut:cpp.ConstCharStar, _p_selected:imgui.BoolPointer, _enabled:Bool):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _shortcut:cpp.ConstCharStar, _p_selected:imgui.BoolPointer):Bool { })
	static function menuItem(_label:cpp.ConstCharStar, _shortcut:cpp.ConstCharStar, _selected:Bool, _enabled:Bool):Bool;
	@:native("ImGui::MemFree")
	static function memFree(_ptr:imgui.VoidPointer):cpp.Void;
	@:native("ImGui::MemAlloc")
	static function memAlloc(_size:cpp.SizeT):imgui.VoidPointer;
	@:native("ImGui::LogToTTY")
	@:overload(function():cpp.Void { })
	static function logToTTY(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogToFile")
	@:overload(function(_filename:cpp.ConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function logToFile(_auto_open_depth:Int, _filename:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::LogToClipboard")
	@:overload(function():cpp.Void { })
	static function logToClipboard(_auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogText")
	static function logText(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::LogFinish")
	static function logFinish():cpp.Void;
	@:native("ImGui::LogButtons")
	static function logButtons():cpp.Void;
	@:native("ImGui::LoadIniSettingsFromMemory")
	@:overload(function(_ini_data:cpp.ConstCharStar):cpp.Void { })
	static function loadIniSettingsFromMemory(_ini_data:cpp.ConstCharStar, _ini_size:cpp.SizeT):cpp.Void;
	@:native("ImGui::LoadIniSettingsFromDisk")
	static function loadIniSettingsFromDisk(_ini_filename:cpp.ConstCharStar):cpp.Void;
	@:native("ImGui::ListBoxHeader")
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _items_count:Int, _height_in_items:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _items_count:Int):Bool { })
	static function listBoxHeader(_label:cpp.ConstCharStar, _size:ImVec2):Bool;
	@:native("ImGui::ListBoxFooter")
	static function listBoxFooter():cpp.Void;
	@:native("ImGui::ListBox")
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<cpp.ConstCharStar>, _items_count:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _height_in_items:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int):Bool { })
	static function listBox(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<cpp.ConstCharStar>, _items_count:Int, _height_in_items:Int):Bool;
	@:native("ImGui::LabelTextV")
	static function labelTextV(_label:cpp.ConstCharStar, _fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::LabelText")
	static function labelText(_label:cpp.ConstCharStar, _fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::IsWindowHovered")
	@:overload(function():Bool { })
	static function isWindowHovered(_flags:ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsWindowFocused")
	@:overload(function():Bool { })
	static function isWindowFocused(_flags:ImGuiFocusedFlags):Bool;
	@:native("ImGui::IsWindowCollapsed")
	static function isWindowCollapsed():Bool;
	@:native("ImGui::IsWindowAppearing")
	static function isWindowAppearing():Bool;
	@:native("ImGui::IsRectVisible")
	@:overload(function(_rect_min:ImVec2, _rect_max:ImVec2):Bool { })
	static function isRectVisible(_size:ImVec2):Bool;
	@:native("ImGui::IsPopupOpen")
	static function isPopupOpen(_str_id:cpp.ConstCharStar):Bool;
	@:native("ImGui::IsMouseReleased")
	static function isMouseReleased(_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMousePosValid")
	@:overload(function():Bool { })
	static function isMousePosValid(_mouse_pos:cpp.Star<ImVec2>):Bool;
	@:native("ImGui::IsMouseHoveringRect")
	@:overload(function(_r_min:ImVec2, _r_max:ImVec2):Bool { })
	static function isMouseHoveringRect(_r_min:ImVec2, _r_max:ImVec2, _clip:Bool):Bool;
	@:native("ImGui::IsMouseDragging")
	@:overload(function(_button:ImGuiMouseButton):Bool { })
	static function isMouseDragging(_button:ImGuiMouseButton, _lock_threshold:cpp.Float32):Bool;
	@:native("ImGui::IsMouseDown")
	static function isMouseDown(_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseDoubleClicked")
	static function isMouseDoubleClicked(_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseClicked")
	@:overload(function(_button:ImGuiMouseButton):Bool { })
	static function isMouseClicked(_button:ImGuiMouseButton, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyReleased")
	static function isKeyReleased(_user_key_index:Int):Bool;
	@:native("ImGui::IsKeyPressed")
	@:overload(function(_user_key_index:Int):Bool { })
	static function isKeyPressed(_user_key_index:Int, _repeat:Bool):Bool;
	@:native("ImGui::IsKeyDown")
	static function isKeyDown(_user_key_index:Int):Bool;
	@:native("ImGui::IsItemVisible")
	static function isItemVisible():Bool;
	@:native("ImGui::IsItemToggledOpen")
	static function isItemToggledOpen():Bool;
	@:native("ImGui::IsItemHovered")
	@:overload(function():Bool { })
	static function isItemHovered(_flags:ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsItemFocused")
	static function isItemFocused():Bool;
	@:native("ImGui::IsItemEdited")
	static function isItemEdited():Bool;
	@:native("ImGui::IsItemDeactivatedAfterEdit")
	static function isItemDeactivatedAfterEdit():Bool;
	@:native("ImGui::IsItemDeactivated")
	static function isItemDeactivated():Bool;
	@:native("ImGui::IsItemClicked")
	@:overload(function():Bool { })
	static function isItemClicked(_mouse_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsItemActive")
	static function isItemActive():Bool;
	@:native("ImGui::IsItemActivated")
	static function isItemActivated():Bool;
	@:native("ImGui::IsAnyMouseDown")
	static function isAnyMouseDown():Bool;
	@:native("ImGui::IsAnyItemHovered")
	static function isAnyItemHovered():Bool;
	@:native("ImGui::IsAnyItemFocused")
	static function isAnyItemFocused():Bool;
	@:native("ImGui::IsAnyItemActive")
	static function isAnyItemActive():Bool;
	@:native("ImGui::InvisibleButton")
	static function invisibleButton(_str_id:cpp.ConstCharStar, _size:ImVec2):Bool;
	@:native("ImGui::InputTextWithHint")
	@:overload(function(_label:cpp.ConstCharStar, _hint:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _hint:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _hint:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):Bool { })
	static function inputTextWithHint(_label:cpp.ConstCharStar, _hint:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputTextMultiline")
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _size:ImVec2, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _size:ImVec2, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):Bool { })
	static function inputTextMultiline(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _size:ImVec2, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputText")
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _user_data:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT):Bool { })
	static function inputText(_label:cpp.ConstCharStar, _buf:cpp.Star<cpp.Int8>, _buf_size:cpp.SizeT, _flags:ImGuiInputTextFlags, _callback:ImGuiInputTextCallback, _user_data:imgui.VoidPointer):Bool;
	@:native("ImGui::InputScalarN")
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int):Bool { })
	static function inputScalarN(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputScalar")
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer):Bool { })
	static function inputScalar(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _p_step:imgui.VoidPointer, _p_step_fast:imgui.VoidPointer, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt4")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt4(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt3")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt3(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt2")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt2(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputInt")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _step:Int, _step_fast:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _step_fast:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function inputInt(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _step:Int, _step_fast:Int, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat4")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat4(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat3")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat3(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat2")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat2(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputFloat")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _step:cpp.Float32, _step_fast:cpp.Float32, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _step:cpp.Float32, _step_fast:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _step_fast:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function inputFloat(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _step:cpp.Float32, _step_fast:cpp.Float32, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputDouble")
	@:overload(function(_label:cpp.ConstCharStar, _v:cpp.Star<Float>, _step:Float, _step_fast:Float, _format:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:cpp.Star<Float>, _step:Float, _step_fast:Float):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:cpp.Star<Float>, _step_fast:Float):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:cpp.Star<Float>):Bool { })
	static function inputDouble(_label:cpp.ConstCharStar, _v:cpp.Star<Float>, _step:Float, _step_fast:Float, _format:cpp.ConstCharStar, _flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::Indent")
	@:overload(function():cpp.Void { })
	static function indent(_indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::ImageButton")
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _frame_padding:Int, _tint_col:ImVec4):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _tint_col:ImVec4):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv1:ImVec2):Bool { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2):Bool { })
	static function imageButton(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _frame_padding:Int, _bg_col:ImVec4, _tint_col:ImVec4):Bool;
	@:native("ImGui::Image")
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _tint_col:ImVec4):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2, _uv1:ImVec2):cpp.Void { })
	@:overload(function(_user_texture_id:ImTextureID, _size:ImVec2):cpp.Void { })
	static function image(_user_texture_id:ImTextureID, _size:ImVec2, _uv0:ImVec2, _uv1:ImVec2, _tint_col:ImVec4, _border_col:ImVec4):cpp.Void;
	@:native("ImGui::GetWindowWidth")
	static function getWindowWidth():cpp.Float32;
	@:native("ImGui::GetWindowSize")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getWindowSize():ImVec2;
	@:native("ImGui::GetWindowPos")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getWindowPos():ImVec2;
	@:native("ImGui::GetWindowHeight")
	static function getWindowHeight():cpp.Float32;
	@:native("ImGui::GetWindowDrawList")
	static function getWindowDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetWindowContentRegionWidth")
	static function getWindowContentRegionWidth():cpp.Float32;
	@:native("ImGui::GetWindowContentRegionMin")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getWindowContentRegionMin():ImVec2;
	@:native("ImGui::GetWindowContentRegionMax")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getWindowContentRegionMax():ImVec2;
	@:native("ImGui::GetVersion")
	static function getVersion():cpp.ConstCharStar;
	@:native("ImGui::GetTreeNodeToLabelSpacing")
	static function getTreeNodeToLabelSpacing():cpp.Float32;
	@:native("ImGui::GetTime")
	static function getTime():Float;
	@:native("ImGui::GetTextLineHeightWithSpacing")
	static function getTextLineHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetTextLineHeight")
	static function getTextLineHeight():cpp.Float32;
	@:native("ImGui::GetStyleColorVec4")
	static function getStyleColorVec4(_idx:ImGuiCol):cpp.Reference<ImVec4>;
	@:native("ImGui::GetStyleColorName")
	static function getStyleColorName(_idx:ImGuiCol):cpp.ConstCharStar;
	@:native("ImGui::GetStyle")
	static function getStyle():cpp.Reference<ImGuiStyle>;
	@:native("ImGui::GetStateStorage")
	static function getStateStorage():cpp.Star<ImGuiStorage>;
	@:native("ImGui::GetScrollY")
	static function getScrollY():cpp.Float32;
	@:native("ImGui::GetScrollX")
	static function getScrollX():cpp.Float32;
	@:native("ImGui::GetScrollMaxY")
	static function getScrollMaxY():cpp.Float32;
	@:native("ImGui::GetScrollMaxX")
	static function getScrollMaxX():cpp.Float32;
	@:native("ImGui::GetMousePosOnOpeningCurrentPopup")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getMousePosOnOpeningCurrentPopup():ImVec2;
	@:native("ImGui::GetMousePos")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getMousePos():ImVec2;
	@:native("ImGui::GetMouseDragDelta")
	@:overload(function(_lock_threshold:cpp.Float32):ImVec2 { })
	@:overload(function():ImVec2 { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _button:ImGuiMouseButton, _lock_threshold:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _lock_threshold:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function(_button:ImGuiMouseButton, _lock_threshold:cpp.Float32):ImVec2 { })
	@:overload(function(_lock_threshold:cpp.Float32):ImVec2 { })
	@:overload(function():ImVec2 { })
	static function getMouseDragDelta(_button:ImGuiMouseButton, _lock_threshold:cpp.Float32):ImVec2;
	@:native("ImGui::GetMouseCursor")
	static function getMouseCursor():ImGuiMouseCursor;
	@:native("ImGui::GetKeyPressedAmount")
	static function getKeyPressedAmount(_key_index:Int, _repeat_delay:cpp.Float32, _rate:cpp.Float32):Int;
	@:native("ImGui::GetKeyIndex")
	static function getKeyIndex(_imgui_key:ImGuiKey):Int;
	@:native("ImGui::GetItemRectSize")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getItemRectSize():ImVec2;
	@:native("ImGui::GetItemRectMin")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getItemRectMin():ImVec2;
	@:native("ImGui::GetItemRectMax")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getItemRectMax():ImVec2;
	@:native("ImGui::GetIO")
	static function getIO():cpp.Reference<ImGuiIO>;
	@:native("ImGui::GetID")
	@:overload(function(_str_id_begin:cpp.ConstCharStar, _str_id_end:cpp.ConstCharStar):ImGuiID { })
	@:overload(function(_ptr_id:imgui.VoidPointer):ImGuiID { })
	static function getID(_str_id:cpp.ConstCharStar):ImGuiID;
	@:native("ImGui::GetFrameHeightWithSpacing")
	static function getFrameHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetFrameHeight")
	static function getFrameHeight():cpp.Float32;
	@:native("ImGui::GetFrameCount")
	static function getFrameCount():Int;
	@:native("ImGui::GetForegroundDrawList")
	static function getForegroundDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetFontTexUvWhitePixel")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getFontTexUvWhitePixel():ImVec2;
	@:native("ImGui::GetFontSize")
	static function getFontSize():cpp.Float32;
	@:native("ImGui::GetFont")
	static function getFont():cpp.Star<ImFont>;
	@:native("ImGui::GetDrawListSharedData")
	static function getDrawListSharedData():cpp.Star<ImDrawListSharedData>;
	@:native("ImGui::GetDrawData")
	static function getDrawData():cpp.Star<ImDrawData>;
	@:native("ImGui::GetDragDropPayload")
	static function getDragDropPayload():cpp.Star<ImGuiPayload>;
	@:native("ImGui::GetCursorStartPos")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getCursorStartPos():ImVec2;
	@:native("ImGui::GetCursorScreenPos")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getCursorScreenPos():ImVec2;
	@:native("ImGui::GetCursorPosY")
	static function getCursorPosY():cpp.Float32;
	@:native("ImGui::GetCursorPosX")
	static function getCursorPosX():cpp.Float32;
	@:native("ImGui::GetCursorPos")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getCursorPos():ImVec2;
	@:native("ImGui::GetCurrentContext")
	static function getCurrentContext():cpp.Star<ImGuiContext>;
	@:native("ImGui::GetContentRegionMax")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getContentRegionMax():ImVec2;
	@:native("ImGui::GetContentRegionAvail")
	@:overload(function(_pOut:cpp.Star<ImVec2>):cpp.Void { })
	@:overload(function():ImVec2 { })
	static function getContentRegionAvail():ImVec2;
	@:native("ImGui::GetColumnsCount")
	static function getColumnsCount():Int;
	@:native("ImGui::GetColumnWidth")
	@:overload(function():cpp.Float32 { })
	static function getColumnWidth(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnOffset")
	@:overload(function():cpp.Float32 { })
	static function getColumnOffset(_column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnIndex")
	static function getColumnIndex():Int;
	@:native("ImGui::GetColorU32")
	@:overload(function(_idx:ImGuiCol):ImU32 { })
	@:overload(function(_col:ImVec4):ImU32 { })
	@:overload(function(_col:ImU32):ImU32 { })
	static function getColorU32(_idx:ImGuiCol, _alpha_mul:cpp.Float32):ImU32;
	@:native("ImGui::GetClipboardText")
	static function getClipboardText():cpp.ConstCharStar;
	@:native("ImGui::GetBackgroundDrawList")
	static function getBackgroundDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::EndTooltip")
	static function endTooltip():cpp.Void;
	@:native("ImGui::EndTabItem")
	static function endTabItem():cpp.Void;
	@:native("ImGui::EndTabBar")
	static function endTabBar():cpp.Void;
	@:native("ImGui::EndPopup")
	static function endPopup():cpp.Void;
	@:native("ImGui::EndMenuBar")
	static function endMenuBar():cpp.Void;
	@:native("ImGui::EndMenu")
	static function endMenu():cpp.Void;
	@:native("ImGui::EndMainMenuBar")
	static function endMainMenuBar():cpp.Void;
	@:native("ImGui::EndGroup")
	static function endGroup():cpp.Void;
	@:native("ImGui::EndFrame")
	static function endFrame():cpp.Void;
	@:native("ImGui::EndDragDropTarget")
	static function endDragDropTarget():cpp.Void;
	@:native("ImGui::EndDragDropSource")
	static function endDragDropSource():cpp.Void;
	@:native("ImGui::EndCombo")
	static function endCombo():cpp.Void;
	@:native("ImGui::EndChildFrame")
	static function endChildFrame():cpp.Void;
	@:native("ImGui::EndChild")
	static function endChild():cpp.Void;
	@:native("ImGui::End")
	static function end():cpp.Void;
	@:native("ImGui::Dummy")
	static function dummy(_size:ImVec2):cpp.Void;
	@:native("ImGui::DragScalarN")
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32):Bool { })
	static function dragScalarN(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _components:Int, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragScalar")
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32):Bool { })
	static function dragScalar(_label:cpp.ConstCharStar, _data_type:ImGuiDataType, _p_data:imgui.VoidPointer, _v_speed:cpp.Float32, _p_min:imgui.VoidPointer, _p_max:imgui.VoidPointer, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragIntRange2")
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format_max:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer):Bool { })
	static function dragIntRange2(_label:cpp.ConstCharStar, _v_current_min:imgui.IntPointer, _v_current_max:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar, _format_max:cpp.ConstCharStar):Bool;
	@:native("ImGui::DragInt4")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt4(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::DragInt3")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt3(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::DragInt2")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt2(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::DragInt")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.IntPointer):Bool { })
	static function dragInt(_label:cpp.ConstCharStar, _v:imgui.IntPointer, _v_speed:cpp.Float32, _v_min:Int, _v_max:Int, _format:cpp.ConstCharStar):Bool;
	@:native("ImGui::DragFloatRange2")
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format_max:cpp.ConstCharStar, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer):Bool { })
	static function dragFloatRange2(_label:cpp.ConstCharStar, _v_current_min:imgui.FloatPointer, _v_current_max:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _format_max:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat4")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat4(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat3")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat3(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat2")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat2(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DragFloat")
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _power:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _v:imgui.FloatPointer):Bool { })
	static function dragFloat(_label:cpp.ConstCharStar, _v:imgui.FloatPointer, _v_speed:cpp.Float32, _v_min:cpp.Float32, _v_max:cpp.Float32, _format:cpp.ConstCharStar, _power:cpp.Float32):Bool;
	@:native("ImGui::DestroyContext")
	@:overload(function():cpp.Void { })
	static function destroyContext(_ctx:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::DebugCheckVersionAndDataLayout")
	static function debugCheckVersionAndDataLayout(_version_str:cpp.ConstCharStar, _sz_io:cpp.SizeT, _sz_style:cpp.SizeT, _sz_vec2:cpp.SizeT, _sz_vec4:cpp.SizeT, _sz_drawvert:cpp.SizeT, _sz_drawidx:cpp.SizeT):Bool;
	@:native("ImGui::CreateContext")
	@:overload(function():cpp.Star<ImGuiContext> { })
	static function createContext(_shared_font_atlas:cpp.Star<ImFontAtlas>):cpp.Star<ImGuiContext>;
	@:native("ImGui::Combo")
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<cpp.ConstCharStar>, _items_count:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items_separated_by_zeros:cpp.ConstCharStar, _popup_max_height_in_items:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items_separated_by_zeros:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int, _popup_max_height_in_items:Int):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items_getter:cpp.Callable<(imgui.VoidPointer, Int, cpp.Star<cpp.RawConstPointer<cpp.Int8>>) -> Bool>, _data:imgui.VoidPointer, _items_count:Int):Bool { })
	static function combo(_label:cpp.ConstCharStar, _current_item:imgui.IntPointer, _items:cpp.RawPointer<cpp.ConstCharStar>, _items_count:Int, _popup_max_height_in_items:Int):Bool;
	@:native("ImGui::Columns")
	@:overload(function(_count:Int, _id:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_id:cpp.ConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function columns(_count:Int, _id:cpp.ConstCharStar, _border:Bool):cpp.Void;
	@:native("ImGui::ColorPicker4")
	@:overload(function(_label:cpp.ConstCharStar, _col:imgui.FloatPointer, _ref_col:imgui.FloatPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorPicker4(_label:cpp.ConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags, _ref_col:imgui.FloatPointer):Bool;
	@:native("ImGui::ColorPicker3")
	@:overload(function(_label:cpp.ConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorPicker3(_label:cpp.ConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit4")
	@:overload(function(_label:cpp.ConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorEdit4(_label:cpp.ConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorEdit3")
	@:overload(function(_label:cpp.ConstCharStar, _col:imgui.FloatPointer):Bool { })
	static function colorEdit3(_label:cpp.ConstCharStar, _col:imgui.FloatPointer, _flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorConvertU32ToFloat4")
	@:overload(function(_pOut:cpp.Star<ImVec4>, _in:ImU32):cpp.Void { })
	@:overload(function(_in:ImU32):ImVec4 { })
	static function colorConvertU32ToFloat4(_in:ImU32):ImVec4;
	@:native("ImGui::ColorConvertRGBtoHSV")
	static function colorConvertRGBtoHSV(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _out_h:cpp.Reference<cpp.Float32>, _out_s:cpp.Reference<cpp.Float32>, _out_v:cpp.Reference<cpp.Float32>):cpp.Void;
	@:native("ImGui::ColorConvertHSVtoRGB")
	static function colorConvertHSVtoRGB(_h:cpp.Float32, _s:cpp.Float32, _v:cpp.Float32, _out_r:cpp.Reference<cpp.Float32>, _out_g:cpp.Reference<cpp.Float32>, _out_b:cpp.Reference<cpp.Float32>):cpp.Void;
	@:native("ImGui::ColorConvertFloat4ToU32")
	static function colorConvertFloat4ToU32(_in:ImVec4):ImU32;
	@:native("ImGui::ColorButton")
	@:overload(function(_desc_id:cpp.ConstCharStar, _col:ImVec4, _size:ImVec2):Bool { })
	@:overload(function(_desc_id:cpp.ConstCharStar, _col:ImVec4):Bool { })
	static function colorButton(_desc_id:cpp.ConstCharStar, _col:ImVec4, _flags:ImGuiColorEditFlags, _size:ImVec2):Bool;
	@:native("ImGui::CollapsingHeader")
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiTreeNodeFlags):Bool { })
	@:overload(function(_label:cpp.ConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	static function collapsingHeader(_label:cpp.ConstCharStar, _flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::CloseCurrentPopup")
	static function closeCurrentPopup():cpp.Void;
	@:native("ImGui::CheckboxFlags")
	static function checkboxFlags(_label:cpp.ConstCharStar, _flags:cpp.Star<UInt>, _flags_value:UInt):Bool;
	@:native("ImGui::Checkbox")
	static function checkbox(_label:cpp.ConstCharStar, _v:imgui.BoolPointer):Bool;
	@:native("ImGui::CaptureMouseFromApp")
	@:overload(function():cpp.Void { })
	static function captureMouseFromApp(_want_capture_mouse_value:Bool):cpp.Void;
	@:native("ImGui::CaptureKeyboardFromApp")
	@:overload(function():cpp.Void { })
	static function captureKeyboardFromApp(_want_capture_keyboard_value:Bool):cpp.Void;
	@:native("ImGui::CalcTextSize")
	@:overload(function(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32):ImVec2 { })
	@:overload(function(_text:cpp.ConstCharStar, _wrap_width:cpp.Float32):ImVec2 { })
	@:overload(function(_text:cpp.ConstCharStar):ImVec2 { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:cpp.ConstCharStar, _wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(_pOut:cpp.Star<ImVec2>, _text:cpp.ConstCharStar):cpp.Void { })
	@:overload(function(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):ImVec2 { })
	@:overload(function(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _wrap_width:cpp.Float32):ImVec2 { })
	@:overload(function(_text:cpp.ConstCharStar, _wrap_width:cpp.Float32):ImVec2 { })
	@:overload(function(_text:cpp.ConstCharStar):ImVec2 { })
	static function calcTextSize(_text:cpp.ConstCharStar, _text_end:cpp.ConstCharStar, _hide_text_after_double_hash:Bool, _wrap_width:cpp.Float32):ImVec2;
	@:native("ImGui::CalcListClipping")
	static function calcListClipping(_items_count:Int, _items_height:cpp.Float32, _out_items_display_start:imgui.IntPointer, _out_items_display_end:imgui.IntPointer):cpp.Void;
	@:native("ImGui::CalcItemWidth")
	static function calcItemWidth():cpp.Float32;
	@:native("ImGui::Button")
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	static function button(_label:cpp.ConstCharStar, _size:ImVec2):Bool;
	@:native("ImGui::BulletTextV")
	static function bulletTextV(_fmt:cpp.ConstCharStar, _args:cpp.VarArg):cpp.Void;
	@:native("ImGui::BulletText")
	static function bulletText(_fmt:cpp.ConstCharStar, _vargs:cpp.VarArg):cpp.Void;
	@:native("ImGui::Bullet")
	static function bullet():cpp.Void;
	@:native("ImGui::BeginTooltip")
	static function beginTooltip():cpp.Void;
	@:native("ImGui::BeginTabItem")
	@:overload(function(_label:cpp.ConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	static function beginTabItem(_label:cpp.ConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiTabItemFlags):Bool;
	@:native("ImGui::BeginTabBar")
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	static function beginTabBar(_str_id:cpp.ConstCharStar, _flags:ImGuiTabBarFlags):Bool;
	@:native("ImGui::BeginPopupModal")
	@:overload(function(_name:cpp.ConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	@:overload(function(_name:cpp.ConstCharStar):Bool { })
	static function beginPopupModal(_name:cpp.ConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginPopupContextWindow")
	@:overload(function(_str_id:cpp.ConstCharStar, _mouse_button:ImGuiMouseButton):Bool { })
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextWindow(_str_id:cpp.ConstCharStar, _mouse_button:ImGuiMouseButton, _also_over_items:Bool):Bool;
	@:native("ImGui::BeginPopupContextVoid")
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextVoid(_str_id:cpp.ConstCharStar, _mouse_button:ImGuiMouseButton):Bool;
	@:native("ImGui::BeginPopupContextItem")
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextItem(_str_id:cpp.ConstCharStar, _mouse_button:ImGuiMouseButton):Bool;
	@:native("ImGui::BeginPopup")
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	static function beginPopup(_str_id:cpp.ConstCharStar, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginMenuBar")
	static function beginMenuBar():Bool;
	@:native("ImGui::BeginMenu")
	@:overload(function(_label:cpp.ConstCharStar):Bool { })
	static function beginMenu(_label:cpp.ConstCharStar, _enabled:Bool):Bool;
	@:native("ImGui::BeginMainMenuBar")
	static function beginMainMenuBar():Bool;
	@:native("ImGui::BeginGroup")
	static function beginGroup():cpp.Void;
	@:native("ImGui::BeginDragDropTarget")
	static function beginDragDropTarget():Bool;
	@:native("ImGui::BeginDragDropSource")
	@:overload(function():Bool { })
	static function beginDragDropSource(_flags:ImGuiDragDropFlags):Bool;
	@:native("ImGui::BeginCombo")
	@:overload(function(_label:cpp.ConstCharStar, _preview_value:cpp.ConstCharStar):Bool { })
	static function beginCombo(_label:cpp.ConstCharStar, _preview_value:cpp.ConstCharStar, _flags:ImGuiComboFlags):Bool;
	@:native("ImGui::BeginChildFrame")
	@:overload(function(_id:ImGuiID, _size:ImVec2):Bool { })
	static function beginChildFrame(_id:ImGuiID, _size:ImVec2, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginChild")
	@:overload(function(_str_id:cpp.ConstCharStar, _size:ImVec2, _flags:ImGuiWindowFlags):Bool { })
	@:overload(function(_str_id:cpp.ConstCharStar, _size:ImVec2):Bool { })
	@:overload(function(_str_id:cpp.ConstCharStar):Bool { })
	@:overload(function(_id:ImGuiID, _size:ImVec2, _border:Bool, _flags:ImGuiWindowFlags):Bool { })
	@:overload(function(_id:ImGuiID, _size:ImVec2, _flags:ImGuiWindowFlags):Bool { })
	@:overload(function(_id:ImGuiID, _size:ImVec2):Bool { })
	@:overload(function(_id:ImGuiID):Bool { })
	static function beginChild(_str_id:cpp.ConstCharStar, _size:ImVec2, _border:Bool, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::Begin")
	@:overload(function(_name:cpp.ConstCharStar, _p_open:imgui.BoolPointer):Bool { })
	@:overload(function(_name:cpp.ConstCharStar):Bool { })
	static function begin(_name:cpp.ConstCharStar, _p_open:imgui.BoolPointer, _flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::ArrowButton")
	static function arrowButton(_str_id:cpp.ConstCharStar, _dir:ImGuiDir):Bool;
	@:native("ImGui::AlignTextToFramePadding")
	static function alignTextToFramePadding():cpp.Void;
	@:native("ImGui::AcceptDragDropPayload")
	@:overload(function(_type:cpp.ConstCharStar):cpp.Star<ImGuiPayload> { })
	static function acceptDragDropPayload(_type:cpp.ConstCharStar, _flags:ImGuiDragDropFlags):cpp.Star<ImGuiPayload>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiContext") extern class ImGuiContext {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSharedData") extern class ImDrawListSharedData {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector") extern class ImVector<T> {
	@:native("Data")
	var data : cpp.RawPointer<T>;
	@:native("swap")
	function swap(_rhs:cpp.Reference<ImVector<T>>):cpp.Void;
	@:native("size_in_bytes")
	function size_in_bytes():Int;
	@:native("size")
	function size():Int;
	@:native("shrink")
	function shrink(_new_size:Int):cpp.Void;
	@:native("resize")
	@:overload(function(_new_size:Int, _v:T):cpp.Void { })
	function resize(_new_size:Int):cpp.Void;
	@:native("reserve")
	function reserve(_new_capacity:Int):cpp.Void;
	@:native("push_front")
	function push_front(_v:T):cpp.Void;
	@:native("push_back")
	function push_back(_v:T):cpp.Void;
	@:native("pop_back")
	function pop_back():cpp.Void;
	@:native("insert")
	function insert(_it:cpp.Star<T>, _v:T):cpp.Star<T>;
	@:native("index_from_ptr")
	function index_from_ptr(_it:cpp.Star<T>):Int;
	@:native("front")
	@:overload(function():cpp.Reference<T> { })
	function front():cpp.Reference<T>;
	@:native("find_erase_unsorted")
	function find_erase_unsorted(_v:T):Bool;
	@:native("find_erase")
	function find_erase(_v:T):Bool;
	@:native("find")
	@:overload(function(_v:T):cpp.Star<T> { })
	function find(_v:T):cpp.Star<T>;
	@:native("erase_unsorted")
	function erase_unsorted(_it:cpp.Star<T>):cpp.Star<T>;
	@:native("erase")
	@:overload(function(_it:cpp.Star<T>, _it_last:cpp.Star<T>):cpp.Star<T> { })
	function erase(_it:cpp.Star<T>):cpp.Star<T>;
	@:native("end")
	@:overload(function():cpp.Star<T> { })
	function end():cpp.Star<T>;
	@:native("empty")
	function empty():Bool;
	@:native("contains")
	function contains(_v:T):Bool;
	@:native("clear")
	function clear():cpp.Void;
	@:native("capacity")
	function capacity():Int;
	@:native("begin")
	@:overload(function():cpp.Star<T> { })
	function begin():cpp.Star<T>;
	@:native("back")
	@:overload(function():cpp.Reference<T> { })
	function back():cpp.Reference<T>;
	@:native("_grow_capacity")
	function _grow_capacity(_sz:Int):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange>") extern class ImVectorImGuiTextRange extends ImVector<ImGuiTextRange> {
	@:native("ImVector<ImGuiTextRange>")
	@:overload(function(_src:ImVectorImGuiTextRange):ImVectorImGuiTextRange { })
	static function create():ImVectorImGuiTextRange;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<char>") extern class ImVectorchar extends ImVector<cpp.Int8> {
	@:native("ImVector<char>")
	@:overload(function(_src:ImVectorchar):ImVectorchar { })
	static function create():ImVectorchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiStoragePair>") extern class ImVectorImGuiStoragePair extends ImVector<ImGuiStoragePair> {
	@:native("ImVector<ImGuiStoragePair>")
	@:overload(function(_src:ImVectorImGuiStoragePair):ImVectorImGuiStoragePair { })
	static function create():ImVectorImGuiStoragePair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar>") extern class ImVectorImWchar extends ImVector<ImWchar> {
	@:native("ImVector<ImWchar>")
	@:overload(function(_src:ImVectorImWchar):ImVectorImWchar { })
	static function create():ImVectorImWchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImU32>") extern class ImVectorImU32 extends ImVector<ImU32> {
	@:native("ImVector<ImU32>")
	@:overload(function(_src:ImVectorImU32):ImVectorImU32 { })
	static function create():ImVectorImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFont*>") extern class ImVectorImFontPointer extends ImVector<cpp.Star<ImFont>> {
	@:native("ImVector<ImFont*>")
	@:overload(function(_src:ImVectorImFontPointer):ImVectorImFontPointer { })
	static function create():ImVectorImFontPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontAtlasCustomRect>") extern class ImVectorImFontAtlasCustomRect extends ImVector<ImFontAtlasCustomRect> {
	@:native("ImVector<ImFontAtlasCustomRect>")
	@:overload(function(_src:ImVectorImFontAtlasCustomRect):ImVectorImFontAtlasCustomRect { })
	static function create():ImVectorImFontAtlasCustomRect;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontConfig>") extern class ImVectorImFontConfig extends ImVector<ImFontConfig> {
	@:native("ImVector<ImFontConfig>")
	@:overload(function(_src:ImVectorImFontConfig):ImVectorImFontConfig { })
	static function create():ImVectorImFontConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<float>") extern class ImVectorfloat extends ImVector<cpp.Float32> {
	@:native("ImVector<float>")
	@:overload(function(_src:ImVectorfloat):ImVectorfloat { })
	static function create():ImVectorfloat;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontGlyph>") extern class ImVectorImFontGlyph extends ImVector<ImFontGlyph> {
	@:native("ImVector<ImFontGlyph>")
	@:overload(function(_src:ImVectorImFontGlyph):ImVectorImFontGlyph { })
	static function create():ImVectorImFontGlyph;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawChannel>") extern class ImVectorImDrawChannel extends ImVector<ImDrawChannel> {
	@:native("ImVector<ImDrawChannel>")
	@:overload(function(_src:ImVectorImDrawChannel):ImVectorImDrawChannel { })
	static function create():ImVectorImDrawChannel;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawCmd>") extern class ImVectorImDrawCmd extends ImVector<ImDrawCmd> {
	@:native("ImVector<ImDrawCmd>")
	@:overload(function(_src:ImVectorImDrawCmd):ImVectorImDrawCmd { })
	static function create():ImVectorImDrawCmd;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawIdx>") extern class ImVectorImDrawIdx extends ImVector<ImDrawIdx> {
	@:native("ImVector<ImDrawIdx>")
	@:overload(function(_src:ImVectorImDrawIdx):ImVectorImDrawIdx { })
	static function create():ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawVert>") extern class ImVectorImDrawVert extends ImVector<ImDrawVert> {
	@:native("ImVector<ImDrawVert>")
	@:overload(function(_src:ImVectorImDrawVert):ImVectorImDrawVert { })
	static function create():ImVectorImDrawVert;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec4>") extern class ImVectorImVec4 extends ImVector<ImVec4> {
	@:native("ImVector<ImVec4>")
	@:overload(function(_src:ImVectorImVec4):ImVectorImVec4 { })
	static function create():ImVectorImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImTextureID>") extern class ImVectorImTextureID extends ImVector<ImTextureID> {
	@:native("ImVector<ImTextureID>")
	@:overload(function(_src:ImVectorImTextureID):ImVectorImTextureID { })
	static function create():ImVectorImTextureID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec2>") extern class ImVectorImVec2 extends ImVector<ImVec2> {
	@:native("ImVector<ImVec2>")
	@:overload(function(_src:ImVectorImVec2):ImVectorImVec2 { })
	static function create():ImVectorImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange*>") extern class ImVectorImGuiTextRangePointer extends ImVector<cpp.Star<ImGuiTextRange>> {
	@:native("ImVector<ImGuiTextRange*>")
	@:overload(function(_src:ImVectorImGuiTextRangePointer):ImVectorImGuiTextRangePointer { })
	static function create():ImVectorImGuiTextRangePointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar*>") extern class ImVectorImWcharPointer extends ImVector<cpp.Star<ImWchar>> {
	@:native("ImVector<ImWchar*>")
	@:overload(function(_src:ImVectorImWcharPointer):ImVectorImWcharPointer { })
	static function create():ImVectorImWcharPointer;
}
