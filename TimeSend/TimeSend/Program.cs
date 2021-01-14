using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.IO.Ports;

namespace TimeSend
{
    class Program
    {
        static void Main(string[] args)
        {
            Timer timer = new Timer(500);
            timer.Elapsed += Timer_Elapsed;
            timer.Start();
            SerialPort.Open();
            Console.ReadLine();
        }
        static SerialPort SerialPort = new SerialPort("COM10", 115200, Parity.None, 8, StopBits.One);

        private static void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            DateTime time = DateTime.Now;
            Console.WriteLine(time);
            Send(time.Second,time.Minute,time.Hour,time.Day);
        }

        private static void Send(int num1,int num2,int num3,int num4)
        {
            byte[] header = new byte[] { 0xA5, 0x5A, 0x80, 0x09 };
            byte[] data = new byte[] {0x01,(byte)(num1),(byte)(num1 >> 8)
                                          ,(byte)(num2),(byte)(num2 >> 8)
                                          ,(byte)(num3),(byte)(num3 >> 8)
                                          ,(byte)(num4),(byte)(num4 >> 8)};
            byte xor = data[0];
            for (int i = 1; i < 9; i++)
            {
                xor = (byte)(xor ^ data[i]);
            }
            byte[] checksum = new byte[] { xor };

            byte[] vs = new byte[header.Length + data.Length + checksum.Length];
            header.CopyTo(vs, 0);
            data.CopyTo(vs, header.Length);
            checksum.CopyTo(vs, header.Length + data.Length);
            try
            {
                Console.WriteLine(BitConverter.ToString(vs));
                SerialPort.Write(vs, 0, vs.Length);
            }
            catch (Exception ex)
            {
                Console.WriteLine("eroor");
            }
        }
    }
}
