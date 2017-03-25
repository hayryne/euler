using System;

class Eu26
{
    static void Main()
    {
        Console.WriteLine(DiagonalSum(MakeSpiral(1001)));
    }

    static int[,] MakeSpiral(int size)
    {
        int[,] spiral = new int[size, size];
        int x = size / 2, y = size / 2;
        int n = 1, side = 1;

        spiral[x++, y] = n++;

        while (x < size)
        {
            for (int i = 0; i < side; i++)
                spiral[x, y++] = n++;
            side++;
            for (int i = 0; i < side; i++)
                spiral[x--, y] = n++;
            for (int i = 0; i < side; i++)
                spiral[x, y--] = n++;
            side++;
            for (int i = 0; i < side; i++)
                spiral[x++, y] = n++;
        }

        return spiral;
    }

    static int DiagonalSum(int[,] spiral)
    {
        int sum = 0;

        for (int i = 0; i < spiral.GetLength(0); i++)
            sum += spiral[i, i];
        for (int i = 0; i < spiral.GetLength(0); i++)
            sum += spiral[i, spiral.GetLength(0)-1-i];     

        return sum-1;
    }
}

