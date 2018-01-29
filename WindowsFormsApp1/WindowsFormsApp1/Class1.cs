using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WindowsFormsApp1
{
    class PolaczenieMSSQL
    {
        public static SqlConnection cnn = null;
        string ConnectionString = "Data Source = localhost; Initial Catalog = MKYOPC; User ID = sa; Password = mojabazasql";
        public void OpenConection()
        {
            
            cnn = new SqlConnection(ConnectionString);
            cnn.Open();
        }
        public void CloseConnection()
        {
            cnn.Close();
        }
        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, cnn);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader DataReader(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, cnn);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public object ShowDataInGridView(string Query_)
        {
            SqlDataAdapter dr = new SqlDataAdapter(Query_, cnn);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            object dataum = ds.Tables[0];
            return dataum;
        }

    }
    
}
