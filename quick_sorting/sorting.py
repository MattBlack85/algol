def quick_sort(array: list, start=0, end=None) -> None:
    if end is None:
        end = len(array) - 1

    if start >= end:
        return

    pivot = array[end]
    cursor = start
    swap_index = start - 1

    while cursor < end:
        if array[cursor] < pivot:
            swap_index += 1
            swap(array, swap_index, cursor)

        cursor += 1
    swap(array, end, swap_index + 1)
    print('---------------------------')
    print(array)
    quick_sort(array, start, swap_index)
    quick_sort(array, swap_index + 2, end)


def swap(array, a, b):
    if a == b:
        return
    array[a], array[b] = array[b], array[a]
