using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourCustomersHandler
    {
        public void deleteTourCustomers(string idTourCustomers)
        {
            SqlCommand cmd = new SqlCommand("delete from TourCustomers where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourCustomers);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}