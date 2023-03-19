function create_level(level)
{
    var width = array_length(level[0])
    var height = array_length(level)

    for (var i = 0; i < height; i += 1)
    {
        for (var j = 0; j < width; j += 1)
        {
            switch (level[i][j])
            {
                case 0:
                    // do nothing
                    break;
                case 1:
                    instance_create_layer(j * 8, i * 8,"Instances_1", block_obj)
                    break;
                case 2:
                    instance_create_layer(j * 8, i * 8, "Instances" , player);
                    break;
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


function read_file(fileID) {
	var level = [];
	var doubleAr = [];
	var lineAr = [];
	
	while (!file_text_eoln(fileID))
	{
			var nextVal = file_text_read_real(fileID)
		
			if(nextVal != 5){
				doubleAr = [];
				array_push(doubleAr, file_text_read_real(fileID));
				array_push(doubleAr, file_text_read_real(fileID));
				array_push(lineAr, doubleAr);
			}
			else{
				array_push(level, lineAr);
				lineAr = 0;
			}
		
	}
	
	file_text_close(fileID);
	
	return level;
}