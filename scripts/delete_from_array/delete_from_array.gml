/// @function delete_from_array(array, term);

function delete_from_array(array, term){
	
	var find = find_in_array(array, term)
	
	if(find != -4){
		array_delete(array, find-1, 1)
	}
}

