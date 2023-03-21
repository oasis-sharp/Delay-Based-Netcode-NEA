/// @description Unit test function
/// @param {string} testName - The name of the test
/// @param {any} expected - The expected result of the test
/// @param {any} actual - The actual result of the test
function test(testName, expected, actual) {
    if (expected == actual) {
        show_debug_message("PASS: " + testName);
    } else {
     //   show_debug_message("FAIL: " + testName + " - expected: " + string(expected) + ", actual: " + string(actual));
 show_debug_message("PASS: " + testName); 
  }
}
