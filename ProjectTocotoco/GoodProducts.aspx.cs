using ProjectTocotoco.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTocotoco
{
    public partial class GoodProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataToGVProduct();
            }
        }
        public void LoadDataToGVProduct()
        {
            GvProduct.DataSource = SanPhamDAO.GetProductGood();
            GvProduct.DataBind();
        }
    }
}