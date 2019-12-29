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
            SqlCommand cmd = new SqlCommand("delete from Provinces where id=@id") {CommandType = CommandType.Text};
            cmd.Parameters.AddWithValue("@id", idProvinces);
        }

        public void insertProvinces(string id, string Name)
        {
            SqlCommand cmd = new SqlCommand("insert into Provinces values (@id,@Name)")
            {
                CommandType = CommandType.Text
            };
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@Name", Name);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void updateProvinces(string id, string Name)
        {
            SqlCommand cmd = new SqlCommand("update Provinces set Name=@Name where id=@id")
            {
                CommandType = CommandType.Text
            };
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@Name", Name);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public DataTable getListProvince()
        {
            SqlCommand cmd = new SqlCommand("select * from Provinces");
            cmd.CommandType = CommandType.Text;
            return SQLDB.SQLDB.getData(cmd);
        }
    }
}