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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        PolaczenieMSSQL NewConnection = new PolaczenieMSSQL();
        public Form1()
        {
            InitializeComponent();
            
        }


        private void button2_Click(object sender, EventArgs e)
        {

            Form3 f3 = new Form3(this);
            f3.label1.Visible = true;
            if (checkBox1.Checked)
            {
                try
                {

                    NewConnection.OpenConection();
                    f3.label1.Text = "Połączono z bazą danych";

                }
                catch (Exception ex)
                {
                    f3.label1.Text = "Nie można połączyć z bazą danych";

                }

                this.Hide();
                f3.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("Proszę najpierw połączyć się z bazą danych");
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            Form2 f2 = new Form2(this);
            f2.label1.Visible = true;
            if (checkBox1.Checked)
            {
                try
                {

                    NewConnection.OpenConection();
                    f2.label1.Text = "Połączono z bazą danych";

                }
                catch (Exception ex)
                {
                    f2.label1.Text = "Nie można połączyć z bazą danych";

                }

                this.Hide();
                f2.ShowDialog();
                this.Show();
            }
            else
            {
                MessageBox.Show("Proszę najpierw połączyć się z bazą danych");
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
        
        }

        private void button4_Click(object sender, EventArgs e)
        {
            NewConnection.CloseConnection();
            Application.Exit();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

            if (checkBox1.Checked) {
                label1.Visible = true;

            try
            {
                    
                NewConnection.OpenConection();
                label1.Text = "Połączono z bazą danych";
                  
                }
            catch (Exception ex)
            {
                    label1.Text = "Nie można połączyć z bazą danych";
                   
                }
            }
            else
            {
                NewConnection.CloseConnection();
                label1.Text = "Zakończono połączenie z bazą";
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
