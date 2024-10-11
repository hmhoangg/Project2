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
    public partial class sanpham : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ml"] == null)    //liên kết dữ liệu 
                q = "select * from MATHANG";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from MATHANG where maloai = '" + maloai + "'";
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string mahang = ((LinkButton)sender).CommandArgument;
            Context.Items["mh"] = mahang;
            Server.Transfer("chitietsanpham.aspx");
        }
    }

}