void mergedArr(
    List<int> first, List<int> sec, int nF, int nS, List<int> third) {
  int i = 0;
  int j = 0;
  int k = 0;
  do {
    third[k++] = first[i++];
  } while (i < nF);

  do {
    third[k++] = sec[j++];
  } while (j < nS);


}
