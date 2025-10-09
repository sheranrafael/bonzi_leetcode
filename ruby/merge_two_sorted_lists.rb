# LeetCode #21: Merge Two Sorted Lists (Ruby)
class ListNode
  attr_accessor :val, :next
  
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def merge_two_lists(list1, list2)
  dummy = ListNode.new
  current = dummy
  
  while list1 && list2
    if list1.val <= list2.val
      current.next = list1
      list1 = list1.next
    else
      current.next = list2
      list2 = list2.next
    end
    current = current.next
  end
    current.next = list1 || list2
    dummy.next
end