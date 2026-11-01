import unittest
from pm_toolkit.metrics import conversion_rate, retention_rate, relative_lift, rice_score

class TestMetrics(unittest.TestCase):
    def test_conversion(self):
        self.assertAlmostEqual(conversion_rate(120, 1000), .12)

    def test_retention(self):
        self.assertAlmostEqual(retention_rate(75, 100), .75)

    def test_lift(self):
        self.assertAlmostEqual(relative_lift(.11, .10), .10)

    def test_rice(self):
        self.assertEqual(rice_score(1000, 2, .8, 4), 400)

    def test_invalid_denominator(self):
        with self.assertRaises(ValueError):
            conversion_rate(1, 0)

    def test_invalid_counts(self):
        with self.assertRaises(ValueError):
            conversion_rate(11, 10)

    def test_invalid_confidence(self):
        with self.assertRaises(ValueError):
            rice_score(100, 2, 1.2, 3)

if __name__ == "__main__":
    unittest.main()
