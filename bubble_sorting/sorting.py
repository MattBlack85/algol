def bubble_sort(array: list) -> list:
    max_len = len(array)
    modified = True

    while modified:
        modified = False
        cursor = 0

        while cursor < max_len - 1:
            if array[cursor] > array[cursor + 1]:
                array[cursor], array[cursor + 1] = array[cursor + 1], array[cursor]
                modified = True

            cursor += 1
