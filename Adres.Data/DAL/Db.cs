using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Adres.Data.DAL
{
    public class Db
    {
        public string CreateConnectionString()
        {
            SqlConnectionStringBuilder conStr = new SqlConnectionStringBuilder();
            //conStr.DataSource = "DESKTOP-D7UU1NC\\SQLEXPRESS";
            conStr.DataSource = ".\\SQLEXPRESS";
            conStr.IntegratedSecurity = true;
            conStr.InitialCatalog = "OkulHI";
            return conStr.ToString();
        }

        public SqlConnection GetConnection()
        {
            var constr = CreateConnectionString();
            SqlConnection con = new SqlConnection(constr);
            //con.ConnectionString = constr;
            return con;
        }

        public SqlCommand GetCommand()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = GetConnection();
            return cmd;
        }

        public SqlCommand GetCommand(string cmdText, CommandType cmdType = CommandType.Text)
        {
            var conneciton = GetConnection();
            var cmd = conneciton.CreateCommand();
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            return cmd;
        }

        public DataSet GetDataSet(string cmdText, CommandType cmdType = CommandType.Text)
        {
            DataSet ds = new DataSet();
            var cmd = GetCommand(cmdText, cmdType);
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            adap.Fill(ds);
            return ds;
        }

        public DataTable GetDataTable(string cmdText, CommandType cmdType = CommandType.Text)
        {
            return GetDataSet(cmdText, cmdType).Tables[0];
            //var dt = new DataTable();
            //var cmd = GetCommand(cmdText, cmdType);
            //SqlDataAdapter adap = new SqlDataAdapter(cmd);
            //adap.Fill(dt);
            //return dt;

        }
    }
}