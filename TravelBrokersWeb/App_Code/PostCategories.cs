using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class PostCategories
    {
        public void deletePostCategories(string idPostCategories)
        {
            SqlCommand cmd = new SqlCommand("delete from PostCategories where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idPostCategories);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}