using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class ToursHandler
    {
        public DataTable findIdTours(string idTours)
        {
            SqlCommand cmd = new SqlCommand("select * from Tours where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTours);
            return SQLDB.SQLDB.getData(cmd);
        }
        public void deleteTours(string idTours)
        {
            SqlCommand cmd = new SqlCommand("delete from Tours where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTours);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}