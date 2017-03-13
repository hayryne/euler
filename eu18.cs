using System;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Euler18
{
    static int[][] ReadTriangle(string inp)
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


    static int MaxPath(int[][] t, int r, int p)
    {
        if (r >= t.Length) return 0;
        return MaxPath(t, r+1, p) > MaxPath(t, r+1, p+1) ?
            t[r][p] + MaxPath(t, r+1, p) : t[r][p] + MaxPath(t, r+1, p+1);
    }


    static void Main()
    {
        int[][] tr = ReadTriangle("eu18.txt");
        Console.WriteLine(MaxPath(tr, 0, 0));
    }
}

