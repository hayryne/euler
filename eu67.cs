using System;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Euler67
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

    static int MaxPath(int[][] t)
    {
        for (int i = t.Length-1; i > 0; i--)
            for (int j = 0; j < t[i].Length-1; j++)
                t[i-1][j] += t[i][j] > t[i][j+1] ? t[i][j] : t[i][j+1];
        return t[0][0];
    }

    static void Main()
    {
        Console.WriteLine(MaxPath(ReadTriangle("eu67.txt")));
    }
}