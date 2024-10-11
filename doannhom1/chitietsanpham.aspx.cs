using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace doannhom1
{
    public partial class chitietsanpham : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kttmdt\doannhom1\doannhom1\doannhom1\App_Data\xemay.mdf;Integrated Security=True";
            ketnoi kn = new ketnoi();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Page.IsPostBack) return;
                string q;
                if (Context.Items["mh"] == null)    //liên kết dữ liệu 
                    q = "select * from MATHANG";
                else
                {
                    string mahang = Context.Items["mh"].ToString();
                    q = "select * from MATHANG where mahang = '" + mahang + "'";
                }
                try
                {

                    this.DataList1.DataSource = kn.getdata(q);
                    this.DataList1.DataBind();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);//hiện trang mới
                }
            
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button muahang = (Button)sender;
            string mahang = muahang.CommandArgument.ToString();
            DataListItem item = (DataListItem)muahang.Parent;
            string soluong = ((TextBox)item.FindControl("TextBox1")).Text;
            if (Request.Cookies["tendn"] == null) return;
            string ten = Request.Cookies["tendn"].Value;
            SqlConnection conn = new SqlConnection(stcn);
            conn.Open();
            string query = " select * from DONHANG" + " where tendn= '" + ten + "' and mahang= '" + mahang + "'";
            SqlCommand Command = new SqlCommand(query, conn);
            SqlDataReader reader = Command.ExecuteReader();
            if (reader.Read())
            {
                reader.Close();
                Command = new SqlCommand(
                    " update DONHANG set soluong=soluong + " + soluong + "where tendn='" + ten + "' and mahang= '" + mahang + "'", conn);
            }
            else
            {
                reader.Close();
                Command = new SqlCommand(" insert into DONHANG " + "(tendn,mahang,soluong) values('"
                    + ten + "', '" + mahang + "'," + soluong + ")", conn);
            }
            Command.ExecuteNonQuery();
            conn.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("giohang.aspx");
        }
    }
}