using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class Roles
    {
        public void deleteRoles(string roleID)
        {
            SqlCommand cmd = new SqlCommand("delete from Roles where roleID=@roleID");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@roleID", roleID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}