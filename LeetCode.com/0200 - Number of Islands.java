import java.util.*;

class Solution {
    final int[][] DIRECTIONS = { { 0, 1 }, { 1, 0 }, { -1, 0 }, { 0, -1 } };

    public int numIslands(char[][] grid) {
        if (grid == null || grid.length == 0) {
            return 0;
        }
        int numIslands = 0;
        for (int r = 0; r < grid.length; ++r) {
            for (int c = 0; c < grid[0].length; ++c) {
                if (grid[r][c] == '1') {
                    ++numIslands;
                    bfs(grid, r, c);
                }
            }
        }
        return numIslands;
    }

    public void bfs(char[][] grid, int r, int c) {
        Queue<int[]> q = new LinkedList<>();
        q.add(new int[] { r, c });
        grid[r][c] = '0';
        while (!q.isEmpty()) {
            int[] p = q.poll();
            for (var dir : DIRECTIONS) {
                int[] moved = { p[0] + dir[0], p[1] + dir[1] };
                if (moved[0] >= 0 && moved[1] >= 0 && moved[0] < grid.length && moved[1] < grid[0].length
                        && grid[moved[0]][moved[1]] == '1') {
                    q.add(moved);
                    grid[moved[0]][moved[1]] = '0';
                }
            }
        }
    }
}