set_controls();
player_setup();
input();

// Check if the file exists at the specified location
if (!file_exists("C:\level\level1.level"))
{
    // File does not exist - prompt the user to select it manually
    var filePath = get_save_filename(".", "Untitled.level");
    if (filePath == "")
    {
        // User cancelled the file selection dialog
        return;
    }
}
else
{
    // File exists - use the specified file path
    var filePath = "C:\level\level1.level";
}

// Open the file for reading
var file = file_text_open_read(filePath);


// Read the level from the .level file
var my_level = read_level(working_directory + "/level/level1.level");

// Define the object map that maps characters to objects
obj_map = ds_map_create();

ds_map_add(obj_map, "b", block_obj);

// Convert the level using the object map and object size
var converted_level = convert_level(my_level, obj_map, 8);
