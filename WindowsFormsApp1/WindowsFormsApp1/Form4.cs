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
    public partial class Form4 : Form
    {
        Form2 form2;
        PolaczenieMSSQL NewConnection = new PolaczenieMSSQL();
        public Form4(Form2 form2)
        {
            this.form2 = form2;
            
            InitializeComponent();
        }



        public void comboBox1_Click(object sender, EventArgs e)
        {
            comboBox1.Items.Clear();
            comboBox1.Items.AddRange(new string[] { "Intel", "AMD" });
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        public void comboBox2_Click(object sender, EventArgs e)
        {
            comboBox2.Items.Clear();
            NewConnection.OpenConection();
            string Query_ = "SELECT distinct PFamily FROM CPU";
            SqlDataReader dr = NewConnection.DataReader(Query_);
            dr.Read();
            try
            {
                while (dr.Read())
                {
                    comboBox2.Items.Add((string)dr["PFamily"]);
                }
            }
            finally
            {
                // Always call Close when done reading.
                dr.Close();
            }


            if (comboBox1.Text == "Intel")
            {
                
                comboBox1.Items.Clear();
                comboBox2.Items.Clear();
                string Query1 = "SELECT distinct PFamily FROM CPU WHERE (Producent = 'Intel')";
                SqlDataReader dr1 = NewConnection.DataReader(Query1);
                dr1.Read();
                try
                {
                    while (dr1.Read())
                    {
                        comboBox2.Items.Add((string)dr1["PFamily"]);
                    }
                }
            finally
            {
                // Always call Close when done reading.
                dr1.Close();
            }
        }
            else if (comboBox1.Text == "AMD")
            {
                comboBox1.Items.Clear();
                comboBox2.Items.Clear();
                string Query2 = "SELECT distinct PFamily FROM CPU WHERE (Producent = 'AMD')";
                SqlDataReader dr2 = NewConnection.DataReader(Query2);
                dr2.Read();
                try
                {
                    while (dr2.Read())
                    {
                        comboBox2.Items.Add((string)dr2["PFamily"]);
                    }
}
            finally
            {
                // Always call Close when done reading.
                dr2.Close();
         }}
            }

        private void comboBox3_Click(object sender, EventArgs e)
        {
            comboBox2.Items.Clear();
            NewConnection.OpenConection();
            string Query_ = "SELECT distinct Socket FROM CPU";
            SqlDataReader dr = NewConnection.DataReader(Query_);
            dr.Read();
            try
            {
                while (dr.Read())
                {
                    comboBox3.Items.Add((string)dr["Socket"]);
                }
            }
            finally
            {
                // Always call Close when done reading.
                dr.Close();
            }


            if (comboBox1.Text == "Intel")
            {

                comboBox1.Items.Clear();
                comboBox2.Items.Clear();
                comboBox3.Items.Clear();
                string Query3 = "SELECT distinct Socket FROM CPU WHERE (Producent = 'Intel')";
                SqlDataReader dr3 = NewConnection.DataReader(Query3);
                dr3.Read();
                try
                {
                    while (dr3.Read())
                    {
                        comboBox3.Items.Add((string)dr3["Socket"]);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    dr3.Close();
                }
            }
            else if (comboBox1.Text == "AMD")
            {
                comboBox1.Items.Clear();
                comboBox2.Items.Clear();
                comboBox3.Items.Clear();
                string Query4 = "SELECT distinct Socket FROM CPU WHERE (Producent = 'AMD')";
                SqlDataReader dr4 = NewConnection.DataReader(Query4);
                dr4.Read();
                try
                {
                    while (dr4.Read())
                    {
                        comboBox3.Items.Add((string)dr4["Socket"]);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    dr4.Close();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            comboBox1.Text = "Wybierz producenta procesorów procesorów";
            comboBox2.Text = "Wybierz rodzinę procesorów";
            comboBox3.Text = "Wybierz Socket"; 
        }

        private void comboBox25_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
