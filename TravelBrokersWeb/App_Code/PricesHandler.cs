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
        public void deletePrice(string idPrices)
        {
            SqlCommand cmd = new SqlCommand("delete from Prices where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idPrices);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}