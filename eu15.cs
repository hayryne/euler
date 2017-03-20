using System;
using System.Diagnostics;

// just give it an hour and no problem
// wanted to recurse and tbh it's pretty

class Euler15
{
	static bool[,] grid = new bool[21,21];
	static int l = grid.GetLength(0);
	static long paths = 0;

	static void Paths(int row, int col)
    {
		if (row == l-1 && col == l-1)
		{
			paths++;
			return;
		}

        if (row == l || col == l) return;

        Paths(row+1, col);
        Paths(row, col+1);
    }

	static void Main()
    {
    	Stopwatch sw = new Stopwatch(); sw.Start();
    	Paths(0,0); Console.WriteLine(paths);
    	sw.Stop(); TimeSpan ts = sw.Elapsed;
    	Console.WriteLine("Finished in {0}hrs {1}mins {2}.{3}secs",
    		ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds);
    }
}

