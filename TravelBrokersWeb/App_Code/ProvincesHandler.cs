using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class ProvincesHandler
    {
        public void deleteProvinces(string idProvinces)
        {
            SqlCommand cmd = new SqlCommand("delete from Provinces where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idProvinces);
        public void insertProvinces(string id, string Name)
        {
            SqlCommand cmd = new SqlCommand("insert into Provinces values (@id,@Name)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@Name", Name);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}