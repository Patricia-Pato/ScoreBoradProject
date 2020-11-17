using ScoreBorad2.Properties;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ScoreBorad2.ViewModels
{
    class ScoreBoradViewModel : NotificationObject
    {
        public ScoreBoradViewModel()
        {
            _block1 = new BlockViewModel(Settings.Default.BlockName1);
            _block2 = new BlockViewModel(Settings.Default.BlockName2);
            _block3 = new BlockViewModel(Settings.Default.BlockName3);
            _block4 = new BlockViewModel(Settings.Default.BlockName4);
        }

        private BlockViewModel _block1;
        public BlockViewModel Block1
        {
            get { return this._block1; }
            set { SetProperty(ref this._block1, value); }
        }

        private BlockViewModel _block2;
        public BlockViewModel Block2
        {
            get { return this._block2; }
            set { SetProperty(ref this._block2, value); }
        }

        private BlockViewModel _block3;
        public BlockViewModel Block3
        {
            get { return this._block3; }
            set { SetProperty(ref this._block3, value); }
        }
        private BlockViewModel _block4;
        public BlockViewModel Block4
        {
            get { return this._block4; }
            set { SetProperty(ref this._block4, value); }
        }


    }
}
