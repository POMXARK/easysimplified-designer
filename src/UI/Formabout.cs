using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace mwf_designer.src.UI
{
    public partial class Formabout : Form
    {
        public Formabout()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {
            
        }

        private void linkLabel1_Click(object sender, EventArgs e)
        {
            Process.Start("https://github.com/MakiWolf/easysimplified-designer");
        }
    }
}
