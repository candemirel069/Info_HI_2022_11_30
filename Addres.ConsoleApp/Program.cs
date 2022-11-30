using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Adres.Data.DAL;

namespace Addres.ConsoleApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            DataTable dt1 = null;
            if (dt1 != null && dt1.Rows.Count > 0)
                Console.WriteLine("data var");
            else
                Console.WriteLine("boş");

            if (dt1?.Rows.Count > 0)
                Console.WriteLine("data var");
            else
                Console.WriteLine("boş");

        }

        private static void DataTableExtention()
        {
            DataTable dt1 = new DataTable();
            if (dt1.HasRow())
                Console.WriteLine("data var");
            else
                Console.WriteLine("boş");

            Console.WriteLine(dt1.HasRow() ? "data var" : "boş");
        }

        private static void GetDataSet1()
        {
            //GetDataTable1();
            Db db = new Db();
            DataSet ds = new DataSet();
            var cmd = db.GetCommand("usp_GetLocation", CommandType.StoredProcedure);
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            adap.Fill(ds);

            foreach (DataRow rw in ds.Tables[1].Rows)
            {
                Console.WriteLine(rw["Adi"]);
            }
        }

        private static void GetDataTable1()
        {
            Db db = new Db();
            DataTable dataTable = new DataTable();
            var cmd = db.GetCommand("select * from sehir");
            SqlDataAdapter adap = new SqlDataAdapter(cmd);
            adap.Fill(dataTable);

            foreach (DataRow rw in dataTable.Rows)
            {
                Console.WriteLine(rw["Adi"]);
            }
        }

        private static void dbDataReader()
        {
            Db db = new Db();
            var cmd = db.GetCommand();
            cmd.CommandText = "select top 5 * from ders order by Adi";
            cmd.CommandType = CommandType.Text;

            cmd.Connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Console.WriteLine(dr["Id"] + " - " + dr["Adi"]);
            }

            cmd.Connection.Close();
        }

        private static void dbTest1()
        {
            Db db = new Db();
            Console.WriteLine(db.CreateConnectionString());
            var con = db.GetConnection();
            con.Open();
            Console.WriteLine("test");
            con.Close();
            Console.WriteLine("db closed");
        }
    }
}
