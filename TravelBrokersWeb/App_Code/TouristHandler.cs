using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class Tourist
    {
        public void deleteTourist(string idTourist)
        {
            SqlCommand cmd = new SqlCommand("delete from Tourist where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourist);
        }
    }
}