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
        public void insertTourBookings(string id, string fullname,string email,string mobie,string address, int adult,int children, int kid, string note,string accountID, string tourID,int status, bool deleted)
        {
            SqlCommand cmd = new SqlCommand("insert into TourBookings values (@id,@fullname,@email,@mobie,@address,@adult,@children,@kid,@note,@accountID,@tourID,@status,@deleted)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fullname", fullname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobie", mobie);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@adult", adult);
            cmd.Parameters.AddWithValue("@children", children);
            cmd.Parameters.AddWithValue("@kid", kid);
            cmd.Parameters.AddWithValue("@note", note);
            cmd.Parameters.AddWithValue("@accountID", accountID);
            cmd.Parameters.AddWithValue("@tourID", tourID);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@deleted", deleted);

            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}