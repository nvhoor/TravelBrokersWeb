using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourCategoriesHandler
    {
        public void deleteTourCategories(string idTourCategories)
        {
            SqlCommand cmd = new SqlCommand("delete from TourCategories where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourCategories);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}