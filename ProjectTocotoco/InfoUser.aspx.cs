﻿using ProjectTocotoco.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTocotoco
{
    public partial class InfoUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataDvInfo();
            }
        }

        public void LoadDataDvInfo()
        {
            string account = (string)Session["user"];
            DvInfo.DataSource = SanPhamDAO.GetUserNameById(account);
            DvInfo.DataBind();
        }
    }
}