/// @description Room generation

var level999 =
[[[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,14],[1,6]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,17],[2,1], [0, 1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,12],[1,7]],
 [[1,1],[0,18],[1,1]],
  [[1,9],[0,10],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,42]]]
 
var level99 = runLengthDecode(level999); 

/*
var file;
file = get_open_filename("text file|*.json", "");
if file != ""
{
    var opened_file =file_text_open_read(file);
}

levelStore = read_file(opened_file);
*/


create_level(level99);
