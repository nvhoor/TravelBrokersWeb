using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourBookingDetails
    {
        public void insertTourBookingDetails(string id, string tourID, string tourBookingID)
        {
            SqlCommand cmd = new SqlCommand("insert into TourBookingDetails values (@id,@tourID,@tourBookingID)")
                {
                    CommandType = CommandType.Text
                };
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@tourID", tourID);
            cmd.Parameters.AddWithValue("@tourBookingID", tourBookingID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}