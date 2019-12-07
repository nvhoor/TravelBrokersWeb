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


    }
}