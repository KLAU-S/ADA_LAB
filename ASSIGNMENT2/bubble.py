import sys
from array import ArrayType, array
import random
sys.setrecursionlimit(3002)
def bubbleSort(array, n):
 
    for i in range(n - 1):
        if array[i] > array[i + 1]:
                array[i], array[i +1] = array[i + 1], array[i]
    if n - 1 > 1:
        bubbleSort(array, n - 1)
 

if __name__ == "__main__":
    array = []
    n =500
    for i in range (0, n):
        array.append(random.randint(0, n))
     
    bubbleSort(array, len(array))
    print(array)