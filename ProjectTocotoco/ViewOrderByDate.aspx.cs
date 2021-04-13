using ProjectTocotoco.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTocotoco
{
    public partial class ViewOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            DateTime date = Convert.ToDateTime(txtDate.Text);
            GvProduct.DataSource = SanPhamDAO.GetAllDonHangByDate(date);
            GvProduct.DataBind();
        }

    }
}