import java.util.*;

class LRUCache {

    private static class Node {
        int key, val;
        Node prev, next;

        Node() {
        }

        Node(int key, int val) {
            this.key = key;
            this.val = val;
        }
    }

    private Map<Integer, Node> cache;
    private final int capacity;
    private final Node most;
    private final Node least;

    public LRUCache(int capacity) {
        this.capacity = capacity;
        most = new Node();
        least = new Node();
        cache = new HashMap<>(capacity + 1); // because we add before checking capacity, 1 extra
        least.next = most;
        most.prev = least;
    }

    public int get(int key) {
        if (!cache.containsKey(key)) {
            return -1;
        }
        Node current = cache.get(key);
        remove(current);
        addToFront(current);
        return current.val;
    }

    public void put(int key, int value) {
        Node current;
        if (cache.containsKey(key)) { // if key exists
            current = cache.get(key); // get existing node
            current.val = value; // update the value
            remove(current); // delete from LL, not Cache
        } else { // no key exists
            current = new Node(key, value); // create new node
        }
        cache.put(key, current); // upsert key with node in Cache
        addToFront(current); // add node to LL
        if (cache.size() > capacity) { // if at capacity
            Node lru = least.next; // find LRU, which is always next of least
            remove(lru); // remove from LL
            cache.remove(lru.key); // remove from Cache
        }
    }

    private void addToFront(Node current) {
        Node p = most.prev, n = most;
        p.next = current;
        current.next = n;
        current.prev = p;
        most.prev = current;
    }

    private void remove(Node current) {
        Node p = current.prev, n = current.next;
        n.prev = p;
        p.next = n;
    }
}