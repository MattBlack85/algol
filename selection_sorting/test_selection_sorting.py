from .sorting import selection_sort


def test_selection_sorting():
    array = [5, 7, 1, 9, 11]
    selection_sort(array)

    assert array == [1, 5, 7, 9, 11]
