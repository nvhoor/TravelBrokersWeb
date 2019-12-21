using SQLDB;
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
        public DataTable getListPriceByTourID(string tourID)
        {
            SqlCommand cmd = new SqlCommand("select tourID, originalPrice, promotionPrice, b.name as touristType, StartDatePro, EndDatePro from Prices a, TouristType b where tourID = @tourID and a.touristTypeID = b.id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@tourID", tourID);
            return SQLDB.SQLDB.getData(cmd);
        }
        public void updatePrice(string id, string tourID, decimal originalPrice, decimal promotionPrice, DateTime StartDatePro, DateTime EndDatePro, string touristTypeID)
        {
            SqlCommand cmd = new SqlCommand("update Prices set tourID=@tourID,originalPrice=@originalPrice,promotionPrice=@promotionPrice,StartDatePro=@StartDatePro,EndDatePro=@EndDatePro,touristTypeID=@touristTypeID where id=@id");
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
        public void insertPrice(string id, string tourID, decimal originalPrice, decimal promotionPrice, DateTime StartDatePro, DateTime EndDatePro, string touristTypeID)
        {
            SqlCommand cmd = new SqlCommand("insert Prices values (@id,@tourID,@originalPrice,@promotionPrice,@StartDatePro,@EndDatePro,@touristTypeID ");
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
        public void deletePrice(string idPrices)
        {
            SqlCommand cmd = new SqlCommand("delete from Prices where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idPrices);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }


    }
}