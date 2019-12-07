using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class PricesHandler
    {
        public void updatePrice(string id, string tourID, decimal originalPrice, decimal promotionPrice, DateTime StartDatePro, DateTime EndDatePro, string touristTypeID )
        {
            SqlCommand cmd = new SqlCommand("insert into SANPHAM values (@id,@tourID,@originalPrice,@promotionPrice,@StartDatePro,@EndDatePro,@touristTypeID)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@tourID", tourID);
            cmd.Parameters.AddWithValue("@originalPrice", originalPrice);
            cmd.Parameters.AddWithValue("@promotionPrice", promotionPrice);
            cmd.Parameters.AddWithValue("@StartDatePro", StartDatePro);
            cmd.Parameters.AddWithValue("@EndDatePro", EndDatePro);
            cmd.Parameters.AddWithValue("@touristTypeID", touristTypeID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}