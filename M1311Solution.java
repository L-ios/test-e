package org.example;

import java.util.*;
import java.util.stream.Collectors;

/**
 * Project: JavaValid
 *
 * @author: Lionseun Ling
 * @create: 2020/10/15
 */
public class M1311Solution {
    public List<String> watchedVideosByFriends(List<List<String>> watchedVideos, int[][] friends, int id, int
            level) {
        Queue<Integer> queue = new LinkedList<>();
        HashMap<Integer, FNode> visitedd = new HashMap<>();
        queue.offer(id);
        visitedd.put(id, new FNode(id, 0));
        int depth = 1;
        while (!queue.isEmpty() && depth <= level) {
            int size = queue.size();
            for (int i = 0; i < size; i++) {
                Integer idd = queue.poll();
                for (int j = 0; j < friends[idd].length; j++) {
                    int vid = friends[idd][j];
                    if (!visitedd.keySet().contains(vid)) {
                        queue.add(vid);
                        visitedd.put(vid, new FNode(vid, depth)); // 查找准确的深度
                    }
                }
            }
            depth++;
        }

        List<String> watched = new ArrayList<>();
        for (Integer eid : visitedd.keySet()) {
            FNode fNode = visitedd.get(eid);
            if (fNode.getDepth() == level) {
                watched.addAll(watchedVideos.get(fNode.getId()));
            }
        }
        Map<String, Long> collect = watched.parallelStream().collect(Collectors.groupingBy(s -> s, Collectors.counting()));
        return watched.parallelStream().collect(Collectors.toSet())
                .parallelStream().sorted().sorted((o1, o2) -> collect.get(o1).compareTo(collect.get(02)) + o1.compareTo(o2)).collect(Collectors.toList());
    }

}
class FNode {
    private final int id;
    private final int depth;

    public FNode(int id, int depth) {
        this.id = id;
        this.depth = depth;
    }

    public int getId() {
        return id;
    }

    public int getDepth() {
        return depth;
    }

    @Override
    public String toString() {
        return "FNode{" +
                "id=" + id +
                ", depth=" + depth +
                '}';
    }
}
