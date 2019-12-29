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
                if (Session["login-user"] != null)
                {
                    dangky.Visible = dangnhap.Visible = false;
                    dangxuat.Visible = lnkTenAdmin.Visible = true;

                    lnkTenAdmin.InnerText = new AccountsHandler().TimTaiKhoan(Session["login-user"].ToString()).Rows[0]["username"].ToString();
                }
                else
                {
                    dangxuat.Visible = lnkTenAdmin.Visible = false;
                }
            }
        }

        protected void rpDSDM1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Session["id"] = e.CommandArgument.ToString();
            Response.Redirect("DanhSachSPTheoDanhMucWebForm.aspx");
        }

        protected void dangnhap_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void dangxuat_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }
    }
}