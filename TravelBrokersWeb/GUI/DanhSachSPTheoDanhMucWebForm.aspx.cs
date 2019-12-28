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
    public partial class DanhSachSPTheoDanhMucWebForm : System.Web.UI.Page
    {
        ToursHandler toursHandler = new ToursHandler();
        TourCategoriesHandler toursCategoriesHandler = new TourCategoriesHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = toursHandler.getListTourByCateID(Session["id"].ToString());

                DataTable dtCate = toursCategoriesHandler.findTourCategoriesByID(Session["id"].ToString());
                lblDanhMuc.Text = dtCate.Rows[0]["name"].ToString();
                lblMoTaDM.Text = dtCate.Rows[0]["description"].ToString();
                ((Repeater)dsTourTheoDM.FindControl("rpDSSP")).DataSource = dt;
                ((Repeater)dsTourTheoDM.FindControl("rpDSSP")).DataBind();
            }
        }
    }
}