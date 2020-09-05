using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;
using ScoreBorad_Controller.ViewModel;
using ScoreBorad_Controller.Command;
using System.Windows.Input;
using System.Windows;
using System.IO.Ports;
using System.Linq;
using System.Windows.Controls;
using System.Collections.ObjectModel;

namespace ScoreBorad_Controller.ViewModel
{
    public class MainWindowViewModel : INotifyPropertyChanged
    {
        public ICommand Send { get; set; }
        public ICommand Connect { get; set; }

        private SerialPort Serial;

        public MainWindowViewModel()
        {
            Panel1 = new PanelViewModel { BlockName = "赤" };
            Panel2 = new PanelViewModel { BlockName = "青" };
            Panel3 = new PanelViewModel { BlockName = "緑" };
            Panel4 = new PanelViewModel { BlockName = "黄" };

            Send = new RelayCommand(_Send);
            Connect = new RelayCommand(_connect);
            PortList = SerialPort.GetPortNames().ToList();

            ButtonText = "接続";
            IsConnect = false ;
        }

        private void _Send()
        {
            
            byte[] header = new byte[] { 0xA5, 0x5A, 0x80, 0x09 };
            byte[] data = new byte[] {0x01,(byte)(Panel1.Score),(byte)(Panel1.Score >> 8)
                                        ,(byte)(Panel2.Score),(byte)(Panel2.Score >> 8)
                                        ,(byte)(Panel3.Score),(byte)(Panel3.Score >> 8)
                                        ,(byte)(Panel4.Score),(byte)(Panel4.Score >> 8)};
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
                Serial.Write(vs, 0, vs.Length);
                AddLog("送信しました");
            }
            catch(Exception ex)
            {
                AddLog("送信できませんでした");
            }
        }

        private void _connect()
        {
            if (IsConnect)
            {
                Serial.Close();
                ButtonText = "接続";
                AddLog("切断しました");
                IsConnect = false;
            }
            else
            {
                if(SelectedPort == null)
                {
                    AddLog("シリアルポートが選択されていません");

                }
                else
                {
                    Serial = new SerialPort(SelectedPort, 115200, Parity.None, 8, StopBits.One);
                    try
                    {
                        Serial.Open();
                        ButtonText = "切断";
                        AddLog("接続しました");
                        IsConnect = true;
                    }
                    catch (Exception ex)
                    {
                        AddLog(ex.Message);
                    }
                }
                
            }
            
        }

        private void AddLog(string message)
        {
            Log.Insert(0, DateTime.Now.ToString("hh時mm分ss秒  "  + message));
        }

        private PanelViewModel panel1;
        public PanelViewModel Panel1
        {
            get { return panel1; }
            set { NotifyPropertyChanged(ref panel1, value); }
        }

        private PanelViewModel panel2;
        public PanelViewModel Panel2
        {
            get { return panel2; }
            set { NotifyPropertyChanged(ref panel2, value); }
        }

        private PanelViewModel panel3;
        public PanelViewModel Panel3
        {
            get { return panel3; }
            set { NotifyPropertyChanged(ref panel3, value); }
        }

        private PanelViewModel panel4;
        public PanelViewModel Panel4
        {
            get { return panel4; }
            set { NotifyPropertyChanged(ref panel4, value); }
        }

        private List<string> portList = new List<string>();
        public List<string> PortList
        {
            get { return portList; }
            set { NotifyPropertyChanged(ref portList, value); }
        }

        private string selectedPort;
        public string SelectedPort
        {
            get { return selectedPort; }
            set { NotifyPropertyChanged(ref selectedPort, value); }
        }

        private ObservableCollection<string> log = new ObservableCollection<string>();
        public ObservableCollection<string> Log
        {
            get { return log; }
            set { log = value; }
        }
             
        private string buttonText;
        public string ButtonText
        {
            get { return buttonText; }
            set { NotifyPropertyChanged(ref buttonText, value);}
        }

        private bool isConnect;
        public bool IsConnect
        {
            get { return isConnect; }
            set { NotifyPropertyChanged(ref isConnect, value); }
        }
        

        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged<T>(ref T field, T value, string name = null)
        {
            field = value;
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(name));
            }
        }
    }
}
