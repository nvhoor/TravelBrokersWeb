using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class Tourists
    {
        public void deleteTourists(string Tourists)
        {
            SqlCommand cmd = new SqlCommand("delete from Tourists where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", Tourists);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}