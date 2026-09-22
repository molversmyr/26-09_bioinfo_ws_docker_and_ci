from unittest.mock import patch
import unittest

from greeter.main import main


class TestMain(unittest.TestCase):
    def test_prints_greeting(self):
        with patch("builtins.print") as print_mock:
            main("Ola")

        print_mock.assert_called_once_with("Hello, Ola! Hei, Ola!")