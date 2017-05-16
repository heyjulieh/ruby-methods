
function merge(arr1, arr2){
  var finalArr = [];
  // while loop
  while (arr1.length && arr2.length){
    console.log("looping",arr2[0]);
    if (arr1[0] >= arr2[0]){
      console.log("  if(arr1[0] > arr2[0])");
      finalArr.push(arr2.shift());
    }
    else if(arr1[0] <= arr2[0]){
      console.log("else if(arr1[0] < arr2[0])");
      finalArr.push(arr1.shift());
    }
    else{
      finalArr.push(arr1.shift());
      finalArr.push(arr2.shift());
      console.log("else {");
      console.log(finalArr);
    }
  }
  // now that we have gone through while, loop, we'll want to add
  // any values from the left-over array into the final array
  if (arr1.length > 0) {
      finalArr.push(arr1);
      console.log("if (arr1.length > 0)");
  }
  if (arr2.length > 0) {
    finalArr.push(arr2);
    console.log("if (arr2.length > 0)");
  }
  return finalArr;
}


var arr1 = [1,3,6,7];
var arr2 = [4,7,8];
console.log(merge(arr1, arr1));

/* Some test cases */

// console.log(merge([1,3,5],[2,4,6]));
// expect [1,2,3,4,5,6]

/* Arrays of differing length */
// console.log(merge([1,3],[2,4,5,6]));
// expect [1,2,3,4,5,6]

/* Arrays with repeat values */
// console.log(merge([1,2,3],[3,4,5]));
// expect [1,2,3,3,4,5]

/* Empty array */
// console.log(merge([],[3,4,5]));
// expect [3,4,5]

/* Arrays with incorrect data types*/
// console.log(merge(["1","2","3"],[4,5,6]));
// expect null

// console.log(merge([{},{},{}],[4,5,6]));
// expect null
