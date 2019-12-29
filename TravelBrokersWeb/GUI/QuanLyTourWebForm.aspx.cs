using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelBrokersWeb.App_Code;

namespace TravelBrokersWeb.GUI
{
    public partial class QuanLyTourWebForm : System.Web.UI.Page
    {
        ToursHandler xlt = new ToursHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drDMtour.DataSource = new TourCategoriesHandler().getListCategoriesTour();
                drDMtour.DataValueField = "id";
                drDMtour.DataTextField = "name";
                //
                drNoikhoihanh.DataSource = new ProvincesHandler().getListProvince();
                drNoikhoihanh.DataValueField = "id";
                drNoikhoihanh.DataValueField = "name";
                rpDSTour.DataSource = xlt.getListTours();
                rpDSTour.DataBind();
            }
            string script = @"
       function readURL(input) {

                 if (input.files && input.files[0]) {
                     var reader = new FileReader();

                     reader.onload = function (e) {
                         $('.imgHinhAnh').attr('src', e.target.result);
                     }

                     reader.readAsDataURL(input.files[0]);
                 }
             }
            $('.imgInp').change(function () { readURL(this);
        });";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "upload", script, true);
        }

        protected void btn_Them_Click(object sender, EventArgs e)
        {
            //try
            {
                string id = "TR" + DateTime.UtcNow.ToString("yyyMMddHHmmssfff", CultureInfo.InvariantCulture);
              //  string file = UploadFile();
                bool status = drTrangthai.SelectedIndex == 0 ? true : false;
                bool newFlag = drdsuutien.SelectedIndex == 0 ? true : false;
                bool hotFlag = drdshot.SelectedIndex == 0 ? true : false;
                xlt.insertTours(id, txtTenTour.Text.Trim(), "","", txtMota.Text.Trim(),DateTime.Parse(datepicker.Text.Trim()),drNoikhoihanh.SelectedValue, int.Parse(txtsochoconlai.Text.Trim()),newFlag,hotFlag, DateTime.Parse(datepicker2.Text.Trim())
                    , DateTime.Parse(datepicker3.Text.Trim()), txtnguoitao.Text.Trim(), txtnguoisuadoi.Text.Trim(), status,true,drDMtour.SelectedValue);
                Response.Redirect(Request.Url.ToString());
             }
            ///catch
           // {
           //     ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thao tác không thành công!');", true);
           // }
    }
        private string UploadFile()
        {
            string typefile = "";
            string file = hdImage.Value;
            if (flImage.FileName.Length > 0)
            {
                if (flImage.PostedFile.ContentLength < 5000000)
                {
                    if (flImage.PostedFile.ContentType.Equals("image/jpeg") || flImage.PostedFile.ContentType.Equals("image/pjpeg") || flImage.PostedFile.ContentType.Equals("image/x-png") || flImage.PostedFile.ContentType.Equals("image/gif") || flImage.PostedFile.ContentType.Equals("image/png"))
                    {
                        typefile = Path.GetExtension(flImage.FileName).ToLower();
                        file = Path.GetFileName(flImage.PostedFile.FileName);
                        file = flImage.FileName.Replace(file, "travel" + DateTime.Now.Second + DateTime.Now.Minute + DateTime.Now.Hour + DateTime.Now.Day + DateTime.Now.Month + DateTime.Now.Year + typefile);
                        flImage.PostedFile.SaveAs(Server.MapPath("~/images/") + file);
                    }
                }
            }
            return file;
        }
    }
}