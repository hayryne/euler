using System;
using static System.Array;
using System.IO;

class Program
{
    static char[] roms = new char[] { 'M', 'D', 'C', 'L', 'X', 'V', 'I' };
    static int[]  decs = new int[] { 1000, 500, 100, 50,  10,   5,   1  };

    static char[] recs = new char[] { 'M', 'C', 'C', 'X', 'X', 'I', 'I' };
    static int[]  reds = new int[]  { 1000, 100, 100, 10,  10,  1,   1  };

    static void Main(string[] args)
    {
        string[] inp = File.ReadAllLines("eu89.txt");
        int sum = 0; 
        for (int i = 0; i < inp.Length; i++)
            sum += inp[i].Length - DecimalToRoman(RomanToDecimal(inp[i])).Length;
        Console.WriteLine(sum);
    }

    static int RomanToDecimal(string rom)
    {
        int dec = 0;
        for (int p = 0; rom.Length > 0; p++)
            while (rom.IndexOf(roms[p]) > -1)
            {
                int i = 0; while (i < rom.Length && rom[i] == roms[p]) i++;
                rom = rom.Remove(0, i); dec += i * decs[p];

                string temp = rom.Substring(0, rom.LastIndexOf(roms[p]) + 1);
                if (temp.Length > 1)
                    dec += decs[p] - decs[IndexOf(roms, temp[0])];
                rom = rom.Remove(0, temp.Length);
            }
        return dec;
    }

    static string DecimalToRoman(int n)
    {
        string rom = ""; 
        for (int p = 0; n > 0; p++)
        {
            while (n >= decs[p]) { rom += roms[p]; n -= decs[p]; }

            if (n > 0 && n >= decs[p]-reds[p+1])
            {
                rom += recs[p + 1] + "" + roms[p];
                n -= decs[p] - reds[p + 1];
            }
        }
        return rom;
    }
}

