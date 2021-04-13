using ProjectTocotoco.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTocotoco
{
    public partial class ListProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataToGvProduct();
                
            }
        }

        public void LoadDataToGvProduct()
        {
            GvProduct.DataSource = SanPhamDAO.GetAllProduct();
            GvProduct.DataBind();
        }

        protected void GvProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvProduct.PageIndex = e.NewPageIndex;
            LoadDataToGvProduct();
        }
    }
}