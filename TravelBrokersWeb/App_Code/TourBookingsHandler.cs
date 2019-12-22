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
        }

        public void insertTourBookings(string id, string fullname,string email,string mobie,string address,string note,string accountID, string tourID,int status, bool deleted)
        {
            SqlCommand cmd = new SqlCommand("insert into TourBookings values (@id,@fullname,@email,@mobie,@address,@note,@accountID,@tourID,@status,@deleted)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fullname", fullname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobie", mobie);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@note", note);
            cmd.Parameters.AddWithValue("@accountID", accountID);
            cmd.Parameters.AddWithValue("@tourID", tourID);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void updateTourBookings(string id, string fullname,string email,string mobie,string address,string note,string accountID, string tourID,int status, bool deleted)
        {
            SqlCommand cmd = new SqlCommand("update TourBookings set fullname=@fullname,email=@email,mobie=@mobie,address=@address,note=@note,accountID=@accountID,tourID=@tourID,status=@status,deleted=@deleted where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fullname", fullname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@mobie", mobie);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@note", note);
            cmd.Parameters.AddWithValue("@accountID", accountID);
            cmd.Parameters.AddWithValue("@tourID", tourID);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}