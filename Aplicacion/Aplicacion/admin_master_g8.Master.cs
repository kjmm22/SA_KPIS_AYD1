﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class admin_master_g8 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbuLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("main_home_g8.aspx");
        }
    }
}