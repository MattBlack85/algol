from .sorting import merge_sort


def test_merge_sort_even():
    array = [4, 2, 6, 1, 5, 3]
    sorted_array = merge_sort(array)

    assert sorted_array == [1, 2, 3, 4, 5, 6]


def test_merge_sort_odd():
    array = [11, 4, 6, 15, 1, 9, 43]
    sorted_array = merge_sort(array)

    assert sorted_array == [1, 4, 6, 9, 11, 15, 43]
