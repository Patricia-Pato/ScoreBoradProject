using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;
using System.Windows.Input;
using ScoreBorad_Controller.Command;

namespace ScoreBorad_Controller.ViewModel
{
    public class PanelViewModel : INotifyPropertyChanged
    {
        public ICommand PlusHun { get; set; }
        public ICommand MinusHun { get; set; }
        public ICommand PlusTen { get; set; }
        public ICommand MinusTen { get; set; }
        public ICommand PlusOne { get; set; }
        public ICommand MinusOne { get; set; }

        public PanelViewModel()
        {
            PlusHun = new RelayCommand(() => Score += 100);
            MinusHun = new RelayCommand(() => Score -= 100);
            PlusTen = new RelayCommand(() => Score += 10);
            MinusTen = new RelayCommand(() => Score -= 10);
            PlusOne = new RelayCommand(() => Score += 1);
            MinusOne = new RelayCommand(() => Score -= 1);
        }

        private int score;
        public int Score
        {
            get { return score; }
            set 
            {
                NotifyPropertyChanged(ref score, value);
                if (Score > 999) Score = 999;
                if (Score < 0) Score = 0;
            }
        }

        private string blockName;
        public string BlockName
        {
            get { return blockName; }
            set { NotifyPropertyChanged(ref blockName, value); }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged<T>(ref T field,T value,string name = null)
        {
            field = value;
            if(PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(name));
            }
        }
    }
}
