using TravelBrokersWeb.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelBrokersWeb.GUI
{
    public partial class LoginForm : System.Web.UI.Page
    {
        AccountsHandler accountsHandler = new AccountsHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["username"] != null)

                    txtUsername.Text = Request.Cookies["username"].Value;

                if (Request.Cookies["password"] != null)

                    txtPass.Text = Request.Cookies["password"].Value;
                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                    chkRemember.Checked = true;
            }
        }

        protected void valiCustom_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DataTable dt = accountsHandler.CheckLogin(txtUsername.Text.Trim(), TienIch.MaHoaMD5(txtPass.Text.Trim()));
            if (dt.Rows.Count > 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnDN_ServerClick(object sender, EventArgs e)
        {
            DataTable dt = accountsHandler.CheckLogin(txtUsername.Text.Trim(), TienIch.MaHoaMD5(txtPass.Text.Trim()));
            if (dt.Rows.Count > 0)
            {
                if (chkRemember.Checked == true)
                {
                    Response.Cookies["username"].Value = txtUsername.Text;
                    Response.Cookies["password"].Value = txtPass.Text;
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(15);
                }

                else
                {
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                }
                if (accountsHandler.IsAdmin(txtUsername.Text.Trim()))
                {
                    Session["login-admin"] = txtUsername.Text.Trim();
                    Response.Redirect("QuanLyKhachHangWebForm.aspx");
                }
                else
                {
                    Session["login-user"] = txtUsername.Text.Trim();
                    Response.Redirect("HomeUser.aspx");
                }

            }
        }
    }
}