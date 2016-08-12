class List():
  def __init__(self):
    self.head = None
  
  def add(self, node):
    if self.head is None:
      self.head = node
    else:
      tmp = self.head
      self.head = node
      self.head.next = tmp

  def delete(self, node):
    """Delete first instance of node and return it"""
    if self.head is None:
      return None

    if self.head.equals(node):
      tmp = self.head
      self.head = self.head.next
      return tmp
    
    tNode = self.head
    while tNode.next is not None and not tNode.next.equals(node):
      tNode = tNode.next  

    if tNode.next is not None:
      tmp = tNode.next
      tNode.next = tNode.next.next
      return tmp

  def add_tail(self, node):
    if self.head is None:
      self.head = node
    else:
      tNode = self.head
      while tNode.next is not None:
         tNode = tNode.next

      tNode.next = node   

  def to_string(self):
    return str(self.to_list())

  def to_list(self):
    list = []

    tNode = self.head

    while tNode is not None:
      list.append(tNode.value)
      tNode = tNode.next  
    
    return list

  def length(self):
    c = 0
    tNode = self.head

    while tNode is not None:
      c += 1
      tNode = tNode.next  

    return c

class Node():
  def __init__(self, value):
    self.value = value
    self.next = None

  def equals(self, othernode):
    if self.value == othernode.value:
      return True

    return False