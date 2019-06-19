/// @description Object to handle save game loading

enum obj_create
{
	map,
	being,
	object,
	none
}

var current_object = obj_create.none;

DerpXml_Init();

if (DerpXmlRead_OpenFile(working_directory + "saves\\test.fsg"))
{
	var text = "";
	while DerpXmlRead_Read()
	{
		switch DerpXmlRead_CurType()
		{
			case DerpXmlType_OpenTag:
				switch DerpXmlRead_CurValue()
				{
			        case "map":
			            current_object = obj_create.map;
			            break;
			        case "being":
			            current_object = obj_create.being;
			            break;
					case "object":
						current_object = obj_create.object;
						break;
			    }
			    break
			
			case DerpXmlType_Text:
				text += DerpXmlRead_CurValue();
				break;
				
			case DerpXmlType_CloseTag:
				// Trim whitespace
				text = string_lettersdigits(text);
				switch current_object
				{
					case obj_create.map:
						scr_process_map_xml(text)
						break;
					default:
						show_debug_message("Unknown tag");
						break;
				}
				
				var current_object = obj_create.none;
		}
	}

	DerpXmlRead_CloseFile()
}