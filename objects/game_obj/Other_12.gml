/// @description Room generation

var level999 =
[[[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,16],[1,3]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,17],[2,1], [0, 1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,15],[1,4]],
 [[1,1],[0,18],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,8],[0,11],[1,1]],
 [[1,1],[0,18],[1,1]],
 [[1,42]]]
 
var level99 = runLengthDecode(level999); 

/*
var file;
file = get_open_filename("text file|*.txt", "");
if file != ""
{
    var opened_file =file_text_open_read(file);
}

var level1 = read_file(opened_file);
*/


create_level(level99);
