using System;

class Eu587
{
    static double PRECISION = 0.00001,
                  PERCENTAGE = 0.001,
                  RADIUS = 0.5,
                  DIAMETER = 2*RADIUS;

    static void Main()
    {
        double x = 1, cornerArea = 0, area = 1;

        for (double i = 0; i <= RADIUS; i += PRECISION)
            cornerArea += (RADIUS-Math.Sqrt(-(i-1)*i)) * PRECISION;

        while (area/cornerArea > PERCENTAGE)
            for (double i = 0; i <= RADIUS; i += PRECISION)
                if (Math.Abs(RADIUS-Math.Sqrt(-(i-1)*i)-1/x*i) < PRECISION)
                {
                    area = 1/x*(i*i)/2;
                    for (double j = i; j <= RADIUS; j += PRECISION)
                        area += (RADIUS-Math.Sqrt(-(j-1)*j)) * PRECISION;
                    x++; break;
                }

        Console.WriteLine("Below {0}% at {1} circles", PERCENTAGE*100, --x);
    }
}
