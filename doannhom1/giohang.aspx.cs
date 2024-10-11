using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace doannhom1
{
    public partial class giohang : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string q = " select DONHANG.mahang,tenhang,mota,donggia,soluong,"
                    + "soluong*donggia as ThanhTien from DONHANG, MATHANG "
                    + " where MatHang.MaHang = DonHang.MaHang";
                this.GridView1.DataSource = kn.getdata(q);
                this.GridView1.DataBind();  
                double tong = 0;
                foreach (DataRow row in kn.getdata(q).Rows)
                {
                    double ThanhTien = Convert.ToDouble(row["ThanhTien"]);
                    tong = tong + ThanhTien;

                }
                this.Label1.Text = "Tổng Thành Tiền: " + tong + " đồng";

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}