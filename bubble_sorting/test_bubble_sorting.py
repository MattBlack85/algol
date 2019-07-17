from .sorting import bubble_sort


def test_bubble_sorting():
    array = [2, 7, 1, 9, 12, 3]
    bubble_sort(array)

    assert array == [1, 2, 3, 7, 9, 12]
