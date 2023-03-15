/// @function delete_from_array(array, term);

function delete_from_array(array, term){
	
	var find = find_in_array(array, array_length(array), term);
	
	if(find != -4){
		array_delete(array, find, 1);
		return true;
	}
	else{
		return false;	
	}
}

