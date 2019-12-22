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
        public void insertTourCustomers(string id, string fullname,bool gender, DateTime birthday, string tourBookingID,string touristTypeID)
        {
            SqlCommand cmd = new SqlCommand("insert into TourCustomers values (@id,@fullname,@gender,@birthday,@tourBookingID,@touristTypeID)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fullname", fullname);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@birthday", birthday);
            cmd.Parameters.AddWithValue("@tourBookingID", tourBookingID);
            cmd.Parameters.AddWithValue("@touristTypeID", touristTypeID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void updateTourCustomers(string id, string fullname,bool gender, DateTime birthday, string tourBookingID,string touristTypeID)
        {
            SqlCommand cmd = new SqlCommand("update TourCustomers set fullname=@fullname,gender=@gender,birthday=@birthday,tourBookingID=@tourBookingID,touristTypeID=@touristTypeID where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fullname", fullname);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@birthday", birthday);
            cmd.Parameters.AddWithValue("@tourBookingID", tourBookingID);
            cmd.Parameters.AddWithValue("@touristTypeID", touristTypeID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}