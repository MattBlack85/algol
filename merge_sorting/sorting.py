import math


def merge_sort(array: list) -> None:
    length = len(array)

    if length <= 1:
        return array

    split_point = math.ceil(length / 2)
    left_array = array[:split_point]
    right_array = array[split_point:]
    left = merge_sort(left_array)
    right = merge_sort(right_array)

    return merge(left, right)


def merge(left, right):
    index_left = 0
    index_right = 0
    total_length = len(left) + len(right)
    sorted_array = []

    while len(sorted_array) < total_length - 1:
        if left[index_left] > right[index_right]:
            sorted_array.append(right[index_right])
            index_right += 1
        else:
            sorted_array.append(left[index_left])
            index_left += 1

    if index_left <= index_right:
        sorted_array.append(left[index_left])
    else:
        sorted_array.append(right[index_right])

    return sorted_array
