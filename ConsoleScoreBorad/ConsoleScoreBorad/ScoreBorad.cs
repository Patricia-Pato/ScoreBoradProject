using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleScoreBorad
{
    class ScoreBorad
    {
        public int Score1 { get; set; }
        public int Score2 { get; set; }
        public int Score3 { get; set; }
        public int Score4 { get; set; }

        public ScoreBoradMode Mode { get; set; }
    }

    enum ScoreBoradMode
    {
        ScoreBorad,
        Announcement,
        Clock
    }
}
