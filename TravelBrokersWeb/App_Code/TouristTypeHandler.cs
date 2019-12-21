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
        public void insertTouristType(string id, string name)
        {
            SqlCommand cmd = new SqlCommand("insert into TouristType values (@id,@name)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}