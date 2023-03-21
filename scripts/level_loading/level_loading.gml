function create_level(level)
{
    var width = 0;
    var height = array_length(level)

    for (var i = 0; i < height; i += 1)
    {
        var row_width = array_length(level[i]);
        if (row_width > width) {
            width = row_width;
        }
    }

    for (var i = 0; i < height; i += 1)
    {
        for (var j = 0; j < width; j += 1)
        {
            if (i >= height || j >= array_length(level[i]) || level[i][j] == undefined)
            {
                // If index is out of range, or the value is undefined,
                // create a block_obj instance at the position.
                instance_create_layer(j * 8, i * 8,"Instances_1", block_obj);
            }
            else
            {
                switch (level[i][j])
                {
                    case 0:
                        // do nothing
                        break;
                    case 1:
                        instance_create_layer(j * 8, i * 8,"Instances_1", block_obj);
                        break;
                    case 2:
                        instance_create_layer(j * 8, i * 8, "Instances" , player);
						instance_create_layer(j * 8, i * 8, "Instances" , player_o);
                        break;
                }
            }
        }
    }
}


function runLengthDecode(compressed) {
  var level = [];

  for (var i = 0; i < array_length(compressed); i++) {
    var current = compressed[i];
    var result = [];

    for (var j = 0; j < array_length(current); j++) {
      var value = current[j][0];
      var count = current[j][1];

      for (var k = 0; k < count; k++) {
        array_push(result, value);
      }
    }

    array_push(level, result);
  }

  return level;
}





function string_split(input_string, delimiter) {
    var output = [];    // Initialize an empty array to hold the split strings
    var start = 1;      // Initialize a variable to keep track of the start of the current substring

    // Loop through each character in the input string
    for (var i = 1; i <= string_length(input_string); i++) {
        // If the current character is equal to the delimiter
        if (string_char_at(input_string, i) == delimiter) {
            // Extract the substring between the "start" index and the current index
            // Add it to the "output" array
            // Update the "start" index to the current index plus one
            array_push(output, string_copy(input_string, start, i - start));
            start = i + 1;
        }
    }

    // If the "start" index is less than or equal to the length of the input string
    // Extract the remaining substring and add it to the "output" array
    if (start <= string_length(input_string)) {
        array_push(output, string_copy(input_string, start, string_length(input_string) - start + 1));
    }

    return output;      // Return the "output" array
}





function read_file(file)
{
    // Create an empty 2D array to hold the decoded data.
    var arr = [];

    // Loop over each line of the file until we reach the end.
    while (!file_text_eof(file))
    {

        var line = file_text_readln(file);     
        var subarr = string_split(line, ",");  // Split the line into subarrays using commas as separators.
        
        var inner_arr = [];
        
        // Loop over each subarray in the line.
        for (var i = 0; i < array_length(subarr); i++)
        {
            // Split the subarray into a pair of values using a semicolon as a separator.
            var pair = string_split(subarr[i], ";");
            
            // Convert the values from strings to real numbers.
            var val1 = real(pair[0]);
            var val2 = real(pair[1]);
            
            // Add the pair to the inner array.
            inner_arr[i] = [val1, val2];
        }
        
        
        array_push(arr, inner_arr); // Add the inner array to the main array.
    }

    return arr;
}


