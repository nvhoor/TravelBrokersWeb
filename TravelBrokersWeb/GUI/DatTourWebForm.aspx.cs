using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelBrokersWeb.App_Code;

namespace TravelBrokersWeb.GUI
{
    public partial class DatTourWebForm : System.Web.UI.Page
    {
        TourBookingsHandler bkhd=new TourBookingsHandler();
        TourCustomersHandler tchd = new TourCustomersHandler();
        TourBookingDetails tbkd = new TourBookingDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["login-user"] == null) Response.Redirect("DangNhap.aspx");
            //(Master.FindControl("lnkHome") as HyperLink).NavigateUrl = "DefaultMasterPage.aspx";
        }

        protected void btnDattour_Click(object sender, EventArgs e)
        {
            //try
            //{
                string IDBK = "TB" + DateTime.UtcNow.ToString("yyyMMddHHmmssfff", CultureInfo.InvariantCulture);
                bkhd.insertTourBookings(IDBK, txtcontact_name.Text.Trim(), txtemail.Text.Trim(), txtmobilephone.Text.Trim(),txtaddress.Text.Trim(),txtNote.InnerText.Trim(), "utthao", "TR01", 1,false);

                string IDBKDT = "TBD" + DateTime.UtcNow.ToString("yyyMMddHHmmssfff", CultureInfo.InvariantCulture);
                tbkd.insertTourBookingDetails(IDBKDT, "TR01", IDBK);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đặt tour thành công');", true);

            //}
            //catch
            //{

            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đặt tour không thành công');", true);
            //}
        }
    }
}