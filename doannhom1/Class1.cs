﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace doannhom1
{
    public class Class1
    {
        SqlConnection con;
        private void ketnoi()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kttmdt\doannhom1\doannhom1\doannhom1\App_Data\xemay.mdf;Integrated Security=True");
            con.Open();
        }
        private void dongketnoi()
        {
            if (con.State == ConnectionState.Open) ;
            con.Close();
        }
        public DataTable getdata(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                ketnoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch { dt = null; }
            finally { dongketnoi(); }
            return dt;
        }
    }
}