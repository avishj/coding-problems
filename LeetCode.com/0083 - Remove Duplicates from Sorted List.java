// Source: https://web.archive.org/web/20240424142341/https://leetcode.com/problems/remove-duplicates-from-sorted-list/

import java.util.Objects;

class ListNode {
    int val;
    ListNode next;

    ListNode() {
    }

    ListNode(int val) {
        this.val = val;
    }

    ListNode(int val, ListNode next) {
        this.val = val;
        this.next = next;
    }
}

class Solution {
    public ListNode deleteDuplicates(ListNode head) {
        if (Objects.isNull(head)) {
            return head;
        }
        ListNode current = head;
        while (Objects.nonNull(current.next)) {
            if (current.val == current.next.val) {
                current.next = current.next.next;
            } else {
                current = current.next;
            }
        }
        return head;
    }
}