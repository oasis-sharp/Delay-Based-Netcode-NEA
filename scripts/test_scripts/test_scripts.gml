// Reads a level from a text file and returns it as a 2D array of strings.
// The file should have the .level extension and be structured as shown in the example above,
// where a "b" indicates a block object and a "0" indicates nothing.
function read_level(filename)
{
    // Open the file for reading
    var file = file_text_open_read(filename);

    // Create an empty array to store the level
    var level = [];

    // Read the file line by line
    var line;
    while (!file_text_eof(file))
    {
        line = file_text_read_string(file);

        // Add the line to the level array
		array_push(level,line);
    }

    // Close the file
    file_text_close(file);

    // Return the level
    return level;
}

// Converts a 2D array of strings into a 2D array of objects with the specified size.
// The "obj_map" argument is a dictionary that maps characters in the input array to
// objects that should be created in the output array. For example, if "obj_map" is
// { "b": obj_block }, then any "b" characters in the input array will be replaced
// with instances of the "obj_block" object in the output array.
function convert_level(level, obj_map, obj_size)
{
    // Create an empty array to store the converted level
    var converted_level = [];

    // Loop through each row in the level
    for (var i = 0; i < level.length; i++)
    {
        // Create an empty array to store the converted row
        var row = [];

        // Loop through each character in the row
        for (var j = 0; j < level[i].length; j++)
        {
            // Get the character at the current position
            var ch = level[i][j];

            // Check if the character has a corresponding object in the object map
            if (ch == "b")
            {
                // Create an instance of the object at the current position
                var obj = instance_create_layer(obj_size * j, obj_size * i, "Instances" , obj_map[ch]);

                // Add the object to the row array
                array_push(row, obj);
            }
            else
            {
                // If the character doesn't have a corresponding object, add null to the row array
                array_push(row, noone)
            }
        }

        // Add the row to the converted level array
        array_push(converted_level, row);
    }

    // Return the converted level
    return converted_level;
}
