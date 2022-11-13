import unittest

from my_python_package import my_add


class MyTestCase(unittest.TestCase):
    def test_something(self):
        self.assertEqual(my_add(1, 2), 3)


if __name__ == '__main__':
    unittest.main()
