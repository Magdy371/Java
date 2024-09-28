package Sequene;

public class LinkedList {
    public static void main(String[] args) {
        Node node = new Node(10);
        node.addFirst(20);
        node.addFirst(30);
        node.addFirst(40);
        node.addLast(50);
        node.addLast(60);
        node.diplay();
        System.out.println("--------------------");
        System.out.println(node.displaySpecificElement(100));
        System.out.println("---------------------------");
        System.out.println("The last element is" + node.tail.data);
        System.out.println("---------------------------");
        System.out.print("reverse the lest from elemnt 20");
        node.reverseLinkedList(20);
    }
}

class Node {
    int data;
    Node next;
    Node head;
    Node tail;

    Node(int data) {
        this.data = data;
        this.next = null;
    }

    void addFirst(int data) {
        Node node = new Node(data);
        if (head == null) {
            head = node;
            tail = node;
        } else {
            node.next = head;
            head = node;
        }
    }

    void diplay() {
        Node current = head;
        System.out.print("[");
        while (current != null) {
            System.out.print(current.data + ",");
            current = current.next;
        }
        System.out.print("]" + "\n");

    }

    void addLast(int data) {
        Node node = new Node(data);
        if (head == null) {
            head = node;
            tail = node;
        } else {
            tail.next = node;
            tail = node;
        }
    }

    int displaySpecificElement(int element) {
        Node cur = head;
        while (cur != null) {
            if (cur.data == element) {
                return cur.data;
            }
            cur = cur.next;
        }
        return -1;
    }

    int assignHeadToIndex(int element) {
        Node cur = head;
        while (cur != null) {
            if (cur.data == element) {
                head = cur;
                return head.data;
            }
            cur = cur.next;
        }
        return -1;
    }

    void reverseLinkedList(int element) {
        assignHeadToIndex(element);
        Node cur = head;
        Node prev = null;
        Node next = null;
        while (cur != null) {
            next = cur.next;
            cur.next = prev;
            prev = cur;
            cur = next;
        }
        head = prev;
        diplay();
    }

}
