import unittest

from my_package.extra import my_multiply


class MyTestCase(unittest.TestCase):
    def test_something(self):
        self.assertEqual(my_multiply(1, 2), 2)


if __name__ == '__main__':
    unittest.main()
