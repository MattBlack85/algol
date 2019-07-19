def selection_sort(array: list) -> None:
    for start in range(len(array)):
        min = array[start]
        minpos = start
        cursor = start + 1
        while cursor < len(array):
            if array[cursor] < min:
                min = array[cursor]
                minpos = cursor
            cursor += 1
        print(array)
        print(min)
        print(minpos)
        print('------------------')
        array[start], array[minpos] = array[minpos], array[start]
