void main() {
  SelectionSort().selectionSortFun(myList: [4, 2, 6, 8, 3], newList: []);
}

class SelectionSort {
  //O(n^2)
  selectionSortFun({required List myList, required List newList}) {
    int lowest = myList[0];

    for (var i = 0; i < myList.length; i++) {
      if (lowest > myList[i]) {
        lowest = myList[i];
      }
    }
    newList.add(lowest);
    myList.remove(lowest);
    if (myList.isNotEmpty) {
      selectionSortFun(myList: myList, newList: newList);
    } else {
      print(myList);
      print(newList);
    }
  }

  //O(n^2)
  swapSort({required List myList}) {
    int temp = myList[0];
    for (var j = 0; j < myList.length - 1; j++) {
      for (var i = 0; i < myList.length - 1; i++) {
        if (myList[i] > myList[i + 1]) {
          temp = myList[i + 1];
          myList[i + 1] = myList[i];
          myList[i] = temp;
        }
      }
    }
    print(myList);
  }
}
