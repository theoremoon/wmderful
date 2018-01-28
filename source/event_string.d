module event_string;
import xcb.xcb;

/// convert event type to string
string toString(xcb_generic_event_t* event)
{
	string[int] event_strings = [
		2: "XCB_KEY_PRESS",
		3: "XCB_KEY_RELEASE",
		4: "XCB_BUTTON_PRESS",
		5: "XCB_BUTTON_RELEASE",
		6: "XCB_MOTION_NOTIFY",
		7: "XCB_ENTER_NOTIFY",
		8: "XCB_LEAVE_NOTIFY",
		9: "XCB_FOCUS_IN",
		10: "XCB_FOCUS_OUT",
		11: "XCB_KEYMAP_NOTIFY",
		12: "XCB_EXPOSE",
		13: "XCB_GRAPHICS_EXPOSURE",
		14: "XCB_NO_EXPOSURE",
		15: "XCB_VISIBILITY_NOTIFY",
		16: "XCB_CREATE_NOTIFY",
		17: "XCB_DESTROY_NOTIFY",
		18: "XCB_UNMAP_NOTIFY",
		19: "XCB_MAP_NOTIFY",
		20: "XCB_MAP_REQUEST",
		21: "XCB_REPARENT_NOTIFY",
		22: "XCB_CONFIGURE_NOTIFY",
		23: "XCB_CONFIGURE_REQUEST",
		24: "XCB_GRAVITY_NOTIFY",
		25: "XCB_RESIZE_REQUEST",
		26: "XCB_CIRCULATE_NOTIFY",
		27: "XCB_CIRCULATE_REQUEST",
		28: "XCB_PROPERTY_NOTIFY",
		29: "XCB_SELECTION_CLEAR",
		30: "XCB_SELECTION_REQUEST",
		31: "XCB_SELECTION_NOTIFY",
		32: "XCB_COLORMAP_NOTIFY",
		33: "XCB_CLIENT_MESSAGE",
		34: "XCB_MAPPING_NOTIFY",
		35: "XCB_GE_GENERIC",
		1: "XCB_REQUEST",
		2: "XCB_VALUE",
		3: "XCB_WINDOW",
		4: "XCB_PIXMAP",
		5: "XCB_ATOM",
		6: "XCB_CURSOR",
		7: "XCB_FONT",
		8: "XCB_MATCH",
		9: "XCB_DRAWABLE",
		10: "XCB_ACCESS",
		11: "XCB_ALLOC",
		12: "XCB_COLORMAP",
		13: "XCB_G_CONTEXT",
		14: "XCB_ID_CHOICE",
		15: "XCB_NAME",
		16: "XCB_LENGTH",
		17: "XCB_IMPLEMENTATION",
		1: "XCB_CREATE_WINDOW",
		2: "XCB_CHANGE_WINDOW_ATTRIBUTES",
		3: "XCB_GET_WINDOW_ATTRIBUTES",
		4: "XCB_DESTROY_WINDOW",
		5: "XCB_DESTROY_SUBWINDOWS",
		6: "XCB_CHANGE_SAVE_SET",
		7: "XCB_REPARENT_WINDOW",
		8: "XCB_MAP_WINDOW",
		9: "XCB_MAP_SUBWINDOWS",
		10: "XCB_UNMAP_WINDOW",
		11: "XCB_UNMAP_SUBWINDOWS",
		12: "XCB_CONFIGURE_WINDOW",
		13: "XCB_CIRCULATE_WINDOW",
		14: "XCB_GET_GEOMETRY",
		15: "XCB_QUERY_TREE",
		16: "XCB_INTERN_ATOM",
		17: "XCB_GET_ATOM_NAME",
		18: "XCB_CHANGE_PROPERTY",
		19: "XCB_DELETE_PROPERTY",
		20: "XCB_GET_PROPERTY",
		21: "XCB_LIST_PROPERTIES",
		22: "XCB_SET_SELECTION_OWNER",
		23: "XCB_GET_SELECTION_OWNER",
		24: "XCB_CONVERT_SELECTION",
		25: "XCB_SEND_EVENT",
		26: "XCB_GRAB_POINTER",
		27: "XCB_UNGRAB_POINTER",
		28: "XCB_GRAB_BUTTON",
		29: "XCB_UNGRAB_BUTTON",
		30: "XCB_CHANGE_ACTIVE_POINTER_GRAB",
		31: "XCB_GRAB_KEYBOARD",
		32: "XCB_UNGRAB_KEYBOARD",
		33: "XCB_GRAB_KEY",
		34: "XCB_UNGRAB_KEY",
		35: "XCB_ALLOW_EVENTS",
		36: "XCB_GRAB_SERVER",
		37: "XCB_UNGRAB_SERVER",
		38: "XCB_QUERY_POINTER",
		39: "XCB_GET_MOTION_EVENTS",
		40: "XCB_TRANSLATE_COORDINATES",
		41: "XCB_WARP_POINTER",
		42: "XCB_SET_INPUT_FOCUS",
		43: "XCB_GET_INPUT_FOCUS",
		44: "XCB_QUERY_KEYMAP",
		45: "XCB_OPEN_FONT",
		46: "XCB_CLOSE_FONT",
		47: "XCB_QUERY_FONT",
		48: "XCB_QUERY_TEXT_EXTENTS",
		49: "XCB_LIST_FONTS",
		50: "XCB_LIST_FONTS_WITH_INFO",
		51: "XCB_SET_FONT_PATH",
		52: "XCB_GET_FONT_PATH",
		53: "XCB_CREATE_PIXMAP",
		54: "XCB_FREE_PIXMAP",
		55: "XCB_CREATE_GC",
		56: "XCB_CHANGE_GC",
		57: "XCB_COPY_GC",
		58: "XCB_SET_DASHES",
		59: "XCB_SET_CLIP_RECTANGLES",
		60: "XCB_FREE_GC",
		61: "XCB_CLEAR_AREA",
		62: "XCB_COPY_AREA",
		63: "XCB_COPY_PLANE",
		64: "XCB_POLY_POINT",
		65: "XCB_POLY_LINE",
		66: "XCB_POLY_SEGMENT",
		67: "XCB_POLY_RECTANGLE",
		68: "XCB_POLY_ARC",
		69: "XCB_FILL_POLY",
		70: "XCB_POLY_FILL_RECTANGLE",
		71: "XCB_POLY_FILL_ARC",
		72: "XCB_PUT_IMAGE",
		73: "XCB_GET_IMAGE",
		74: "XCB_POLY_TEXT_8",
		75: "XCB_POLY_TEXT_16",
		76: "XCB_IMAGE_TEXT_8",
		77: "XCB_IMAGE_TEXT_16",
		78: "XCB_CREATE_COLORMAP",
		79: "XCB_FREE_COLORMAP",
		80: "XCB_COPY_COLORMAP_AND_FREE",
		81: "XCB_INSTALL_COLORMAP",
		82: "XCB_UNINSTALL_COLORMAP",
		83: "XCB_LIST_INSTALLED_COLORMAPS",
		84: "XCB_ALLOC_COLOR",
		85: "XCB_ALLOC_NAMED_COLOR",
		86: "XCB_ALLOC_COLOR_CELLS",
		87: "XCB_ALLOC_COLOR_PLANES",
		88: "XCB_FREE_COLORS",
		89: "XCB_STORE_COLORS",
		90: "XCB_STORE_NAMED_COLOR",
		91: "XCB_QUERY_COLORS",
		92: "XCB_LOOKUP_COLOR",
		93: "XCB_CREATE_CURSOR",
		94: "XCB_CREATE_GLYPH_CURSOR",
		95: "XCB_FREE_CURSOR",
		96: "XCB_RECOLOR_CURSOR",
		97: "XCB_QUERY_BEST_SIZE",
		98: "XCB_QUERY_EXTENSION",
		99: "XCB_LIST_EXTENSIONS",
		100: "XCB_CHANGE_KEYBOARD_MAPPING",
		101: "XCB_GET_KEYBOARD_MAPPING",
		102: "XCB_CHANGE_KEYBOARD_CONTROL",
		103: "XCB_GET_KEYBOARD_CONTROL",
		104: "XCB_BELL",
		105: "XCB_CHANGE_POINTER_CONTROL",
		106: "XCB_GET_POINTER_CONTROL",
		107: "XCB_SET_SCREEN_SAVER",
		108: "XCB_GET_SCREEN_SAVER",
		109: "XCB_CHANGE_HOSTS",
		110: "XCB_LIST_HOSTS",
		111: "XCB_SET_ACCESS_CONTROL",
		112: "XCB_SET_CLOSE_DOWN_MODE",
		113: "XCB_KILL_CLIENT",
		114: "XCB_ROTATE_PROPERTIES",
		115: "XCB_FORCE_SCREEN_SAVER",
		116: "XCB_SET_POINTER_MAPPING",
		117: "XCB_GET_POINTER_MAPPING",
		118: "XCB_SET_MODIFIER_MAPPING",
		119: "XCB_GET_MODIFIER_MAPPING",
		127: "XCB_NO_OPERATION"
	];
	if (auto event_string = event.response_type in event_strings) {
		return *event_string;
	}
	return "UNKNOWN_EVENT";
}
