using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourBookingsHandler
    {
        public void deleteTourBookings(string idTourBookings)
        {
            SqlCommand cmd = new SqlCommand("delete from TourCustomers where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourBookings);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}