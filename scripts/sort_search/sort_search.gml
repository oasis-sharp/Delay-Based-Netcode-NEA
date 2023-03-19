function binary_search(arr, term)
{
    var left = 0;
    var right = array_length(arr) - 1;
    
    while (left <= right)
    {
        var mid = (left + right) div 2;
        
        if (arr[mid, 0] == term)
            return mid;
        else if (arr[mid, 0] < term)
            left = mid + 1;
        else
            right = mid - 1;
    }
    
    return -4;
}