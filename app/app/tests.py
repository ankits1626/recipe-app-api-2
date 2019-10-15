from django.test import TestCase

from app.calc import add


class CalcTests(TestCase):

    def testAddtwoNumbers(self):
        self.assertEqual(add(2,5),7)
