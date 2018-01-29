using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form3 : Form
    {
        Form1 form1;

        public Form3(Form1 form1)
        {
            this.form1 = form1;
            PolaczenieMSSQL NewConnection = new PolaczenieMSSQL();
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }

        private void comboBox1_Click(object sender, EventArgs e)
        {
            comboBox1.Items.Clear();
            comboBox1.Items.AddRange(new string[] { "Procesory", "Chłodzenie procesorów", "Karty Graficzne", "Dyski twarde", "Klawiatury", "Myszki", "Płyty Główne", "Monitory", "Napędy optyczne", "Obudowy komputerowe", "Zasilacze komputerowe", "Pamięci RAM", "Dyski SSD" });
        }

        private void comboBox2_Click(object sender, EventArgs e)
        {
            string sel = comboBox1.SelectedItem.ToString();
            if (comboBox1.Text == "Procesory")
            {
                
            }
        }
    }
}
