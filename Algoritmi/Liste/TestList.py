import unittest
from List import List, Node

class TestList(unittest.TestCase):

  def setUp(self):
    self.l = List()

  def test_to_string(self):
    self.assertEqual(self.l.to_string(),"[]")

    self.l.add(Node(1))
    self.assertEqual(self.l.to_string(),"[1]")

    self.l.add(Node(2))
    self.l.add(Node(3))
    self.assertEqual(self.l.to_string(),"[3, 2, 1]")

  def test_to_list(self):
    self.assertEqual(self.l.to_list(),[])

    self.l.add(Node(1))
    self.assertEqual(self.l.to_list(),[1])

    self.l.add(Node(2))
    self.l.add(Node(3))
    self.assertEqual(self.l.to_list(),[3, 2, 1])

  def test_add(self):
    self.l.add(Node(1))
    self.l.add(Node(2))
    self.l.add(Node(3))
    self.assertEqual(self.l.to_list(),[3, 2, 1])

  def test_add_tail(self):
    self.l.add_tail(Node(1))
    self.l.add_tail(Node(2))
    self.l.add_tail(Node(3))
    self.assertEqual(self.l.to_list(),[1, 2, 3])
    
  def test_add_mixed(self):
    self.l.add(Node(1))
    self.l.add_tail(Node(2))
    self.l.add_tail(Node(3))
    self.l.add(Node(4))
    self.l.add(Node(5))
    self.l.add_tail(Node(6))

    self.assertEqual(self.l.to_list(),[5, 4, 1, 2, 3, 6])

  def test_length(self):
    self.assertEqual(self.l.length(), 0)

    self.l.add(Node(1))
    self.l.add(Node(2))
    self.l.add(Node(3))

    self.assertEqual(self.l.length(), 3)

  def test_delete(self):
    self.l.add(Node(1))
    self.l.add(Node(2))
    self.l.add(Node(3))

    self.assertTrue(self.l.delete(Node(2)).equals(Node(2)))
    self.assertIsNone(self.l.delete(Node(12)))


"""class TestNode(unittest.TestCase):

  def setUp(self):
    self.node = Node(42)"""

if __name__ == '__main__':
  unittest.main()
