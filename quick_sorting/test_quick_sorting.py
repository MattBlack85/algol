from .sorting import quick_sort


def test_quick_sorting():
    array = [3, 7, 1, 23, 2, 9, 40, 5]
    quick_sort(array)

    assert array == [1, 2, 3, 5, 7, 9, 23, 40]
