using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelBrokersWeb.App_Code;

namespace TravelBrokersWeb.GUI
{
    public partial class HomeMasterPage : System.Web.UI.MasterPage
    {
        TourCategoriesHandler tourCategoriesHandler = new TourCategoriesHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rpDSDM1.DataSource = tourCategoriesHandler.getListCategories(1, 6);
                rpDSDM1.DataBind();
                DataTable dt2= tourCategoriesHandler.getListCategories(7, 12);
                if (dt2.Rows.Count > 0)
                {
                    rpDSDM2.DataSource = dt2;
                    rpDSDM2.DataBind();
                }
               
            }
        }

        protected void rpDSDM1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Session["id"] = e.CommandArgument.ToString();
            Response.Redirect("DanhSachSPTheoDanhMucWebForm.aspx");
        }
    }
}