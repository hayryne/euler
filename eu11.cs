using System;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Euler11
{
    static int[][] t; static int curr, max = 1;
    static int[][] m = { new int[] { 0, 1}, new int[] { 0,-1},
                         new int[] { 1, 0}, new int[] {-1, 0},
                         new int[] {-1, 1}, new int[] { 1,-1},
                         new int[] {-1,-1}, new int[] { 1,1 } };
    
    static int[][] ReadSquare(string inp)
    {
        string[] lines = File.ReadAllLines(inp);
        int[][] arr = new int[lines.Length][];

        for (int i = 0; i < lines.Length; i++)
        {
            string[] sp = lines[i].Split();
            int[] curr = new int[sp.Length];
            for (int j = 0; j < sp.Length; j++)
                curr[j] = Int32.Parse(sp[j]);
            arr[i] = curr;
        }

        return arr;
    }

    static int MaxProds(int[][] t)
    {
        for (int i = 0; i < t.Length; i++)
            for (int j = 0; j < t.Length; j++)
                for (int k = 0; k < m.Length; k++)
                    if ((curr = MaxProd(i, j, k, 0)) > max)
                        Console.WriteLine("New max " + (max = curr) +
                                          " at i=" + i + ", j=" + j);
        return max;
    }

    static int MaxProd(int row, int col, int dir, int step)
    {
        if (step == 4) return 1;
        if (!(row+m[dir][0] < 0 || row+m[dir][0] >= t.Length ||
              col+m[dir][1] < 0 || col+m[dir][1] >= t.Length ))
            return t[row][col] * MaxProd(row+m[dir][0],
                                 col+m[dir][1], dir, step+1);
        return 1;
    }

    static void Main()
    {
        t = ReadSquare("eu11.txt");
        Console.WriteLine(MaxProds(t));
    }
}