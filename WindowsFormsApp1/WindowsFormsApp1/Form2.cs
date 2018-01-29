using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApp1
{

    public partial class Form2 : Form
    {
        Form1 form1;
        PolaczenieMSSQL NewConnection = new PolaczenieMSSQL();

        public Form2(Form1 form1)
        {
            this.form1 = form1;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void label1_VisibleChanged(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form4 f4 = new Form4(this);
            f4.ShowDialog();
            this.Show();
        }

        private void comboBox1_Click(object sender, EventArgs e)
        {
            comboBox1.Items.Clear();
            string Query_ = "SELECT PFamily, PFullModelName FROM CPU";
            SqlDataReader dr = NewConnection.DataReader(Query_);
            dr.Read();
            try
            {
                while (dr.Read())
                {
                    comboBox1.Items.Add((string)dr["PFullModelName"]);
                }
            }
            finally
            {
                dr.Close();
            }
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            comboBox2.Items.Clear();
            string Query1 = "SELECT MFullModelName FROM MOTHERBOARDS";

            SqlDataReader dr1 = NewConnection.DataReader(Query1);
            dr1.Read();
            try
            {
                while (dr1.Read())
                {
                    comboBox2.Items.Clear();
                    comboBox2.Items.Add((string)dr1["MFullModelName"]);
                }
            }
            finally
            {
                dr1.Close();
            }
            if (comboBox1.SelectedItem.ToString().Contains("Intel"))
            {
                comboBox2.Items.Clear();
                string Query2 = "SELECT   MOTHERBOARDS.MFullModelName FROM  CPU INNER JOIN  MOTHERBOARDS ON CPU.PFamily = MOTHERBOARDS.PFamily1 AND CPU.PFamily = MOTHERBOARDS.PFamily2 AND CPU.PFamily = MOTHERBOARDS.PFamily3 AND CPU.PFamily = MOTHERBOARDS.PFamily4 AND CPU.PFamily = MOTHERBOARDS.PFamily5 AND CPU.Socket = MOTHERBOARDS.PSocket WHERE (CPU.Company = 'Intel')";
                SqlDataReader dr2 = NewConnection.DataReader(Query2);
                dr2.Read();
                try
                {
                    while (dr2.Read())
                    {
                        comboBox2.Items.Clear();
                        comboBox2.Items.Add((string)dr2["MFullModelName"]);
                    }
                }
                finally
                {
                    dr2.Close();
                }
            }
            else if (comboBox1.SelectedItem.ToString().Contains("AMD"))
            {
                string Query3 = "SELECT MOTHERBOARDS.MFullModelName FROM CPU INNER JOIN MOTHERBOARDS ON CPU.Socket = MOTHERBOARDS.PSocket WHERE (CPU.Company = 'AMD')";
                SqlDataReader dr3 = NewConnection.DataReader(Query3);
                dr3.Read();
                try
                {
                    while (dr3.Read())
                    {
                        comboBox2.Items.Clear();
                        comboBox2.Items.Add((string)dr3["MFullModelName"]);
                    }
                }
                finally
                {
                    dr3.Close();
                }
            }
        }


        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            if (comboBox1.SelectedIndex > -1)
            {
                listBox1.Items.Add(comboBox1.Text);
            }
            listBox1.Items.Add(comboBox2.Text);
            listBox1.Items.Add(comboBox3.Text);
            listBox1.Items.Add(comboBox4.Text);
            listBox1.Items.Add(comboBox5.Text);
        }
    }
}
