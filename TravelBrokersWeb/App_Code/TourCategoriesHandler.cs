﻿using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourCategoriesHandler
    {
        public void deleteTourCategories(string idTourCategories)
        {
            SqlCommand cmd = new SqlCommand("delete from TourCategories where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourCategories);
        }

        public void insertTourCategories(string id, string name, string description)
        {
            SqlCommand cmd = new SqlCommand("insert into TourCategories values (@id,@name,@description)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@description", description);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void updateTourCategories(string id, string name, string description)
        {
            SqlCommand cmd = new SqlCommand("update TourCategories set name=@name,description=@description where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@description", description);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
    }
}