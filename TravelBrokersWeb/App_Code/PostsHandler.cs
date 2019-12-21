using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class Posts
    {
        public void deletePosts(string idPosts)
        {
            SqlCommand cmd = new SqlCommand("delete from Posts where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idPosts);
        }
    }
}