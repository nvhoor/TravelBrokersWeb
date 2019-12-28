using System;
using System.Web.UI.WebControls;
using TravelBrokersWeb.App_Code;

namespace TravelBrokersWeb.GUI
{
    public partial class HomeUser : System.Web.UI.Page
    {
        ToursHandler toursHandler = new ToursHandler();
        PostsHandler postsHandler = new PostsHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ((Repeater)dsHotNhat.FindControl("rpDSSP")).DataSource = toursHandler.getTopTourHotest();
                ((Repeater)dsHotNhat.FindControl("rpDSSP")).DataBind();
                ((Repeater)dsMoiNhat.FindControl("rpDSSP")).DataSource = toursHandler.getTopTourNewest();
                ((Repeater)dsMoiNhat.FindControl("rpDSSP")).DataBind();
            }
        }
    }
}