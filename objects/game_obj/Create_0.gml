network_status = "";
network_set_config(network_config_connect_timeout, 4000); // Try to connect for 4 seconds.
network_set_config(network_config_use_non_blocking_socket,1)

socketlist = ds_list_create();
room_creation = 0;

timer = 0;

gameRunning = 1;

hostIP = "127.0.0.1"

online_inp = [];
online_inp_buffer = [];

begin_timer = -4;
timer_sync = 0;

levelStore=[];

input_arr = [];

client_socket = 0;
server_socket = 0;


var file;
file = get_open_filename("text file|*.txt", "");
if file != ""
{
    var opened_file =file_text_open_read(file);
}

levelStore = read_file(opened_file);
levelStore = runLengthDecode(levelStore);


// UNIT TESTS




show_debug_message("== TESTING == ");

// Define the array to use in all tests
var array_to_test = ["a", "b", "c"];

// Test the add_to_array function
test("add_to_array adds new item to array", true, add_to_array(array_to_test, "d"));
test("add_to_array returns false if item already exists in array", false, add_to_array(array_to_test, "a"));

show_debug_message(" ");

// Test the delete_from_array function
test("delete_from_array removes existing item from array", true, delete_from_array(array_to_test, "b"));
test("delete_from_array returns false if item does not exist in array", false, delete_from_array(array_to_test, "e"));
test("delete_from_array returns false if array is empty", false, delete_from_array([], "a"));
test("delete_from_array removes last item from array", true, delete_from_array(array_to_test, "c"));

show_debug_message(" ");

// Test the find_in_array function
test("find_in_array returns index of existing item", 0, find_in_array(array_to_test, array_length(array_to_test), "a"));
test("find_in_array returns -4 if item does not exist in array", -4, find_in_array(array_to_test, array_length(array_to_test), "e"));
test("find_in_array returns -4 if array is empty", -4, find_in_array([], 0, "a"));

show_debug_message(" ");

// Define arrays to use in tests
var array_to_test = [["a", 1], ["b", 2], ["c", 3], ["d", 4]];
var array_to_test_2 = [["a", 1], ["c", 3], ["e", 5], ["g", 7]];
var array_to_test_3 = [["b", 2], ["d", 4], ["f", 6], ["h", 8], ["j", 10]];

// Test the binary_search function with different arrays
test("binary_search returns index of existing item in array", 2, binary_search(array_to_test, "c"));
test("binary_search returns -4 if item does not exist in array", -4, binary_search(array_to_test, "e"));
test("binary_search returns -4 if array is empty", -4, binary_search([], "a"));
test("binary_search returns index of existing item in second array", 2, binary_search(array_to_test_2, "e"));
test("binary_search returns -4 if item does not exist in second array", -4, binary_search(array_to_test_2, "b"));
test("binary_search returns index of existing item in third array", 1, binary_search(array_to_test_3, "d"));
test("binary_search returns -4 if item does not exist in third array", -4, binary_search(array_to_test_3, "k"));


show_debug_message(" ");

var compressed = [[[1, 3], [2, 2]], [[3, 1], [4, 4]]];

// Test the runLengthDecode function
test("runLengthDecode decodes compressed numerical arrays correctly", [[1,1,1,2,2], [3,4,4,4,4]], runLengthDecode(compressed));

show_debug_message("");

var inputs = [  [1, 0, 1, 0, 1, 0, 1, 0],
  [2, 1, 0, 1, 0, 1, 0, 1],
  [3, 0, 1, 1, 0, 1, 1, 0],
  [4, 1, 1, 0, 0, 1, 1, 1],
];

// Test the find_current_inputs function
test("find_current_inputs finds the correct input with given delay", [3, 0, 1, 1, 0, 1, 1, 0], find_current_inputs(inputs, 1));
test("find_current_inputs returns -4 if no matching input is found", -4, find_current_inputs(inputs, 10));
