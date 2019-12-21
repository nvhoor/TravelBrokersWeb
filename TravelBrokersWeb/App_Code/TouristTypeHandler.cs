using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TouristTypeHandler
    {
        public void deleteTouristType(string idTouristType)
        {
            SqlCommand cmd = new SqlCommand("delete from TouristType where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTouristType);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}