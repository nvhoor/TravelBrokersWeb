﻿using System;
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
        public DataTable getTopTourHotest()
        {

            SqlCommand cmd = new SqlCommand("select top 8 a.*,DATEDIFF(day, GETDATE(), departureDate) AS numDays,originalPrice,promotionPrice,a.id+'HOT' as timeID from Tours a, Prices b where hotFlag=1 and a.id=b.tourID and b.touristTypeID='TT01'");

            cmd.CommandType = CommandType.Text;
            return SQLDB.SQLDB.getData(cmd);
        }
        public DataTable getTopTourNewest()
        {

            SqlCommand cmd = new SqlCommand("select top 8 a.*,DATEDIFF(day, GETDATE(), departureDate) AS numDays,originalPrice,promotionPrice,a.id+'NEW' as timeID from Tours a, Prices b where newFlag=1 and a.id=b.tourID and b.touristTypeID='TT01' order by createdDate desc");

            cmd.CommandType = CommandType.Text;
            return SQLDB.SQLDB.getData(cmd);
        }
        public DataTable getListTourByCateID(string cateID)
        {

            SqlCommand cmd = new SqlCommand("select a.*,DATEDIFF(day, GETDATE(), departureDate) AS numDays,originalPrice,promotionPrice,a.id+'NEW' as timeID from Tours a, Prices b where a.id=b.tourID and b.touristTypeID='TT01' and categoryID=@categoryID order by createdDate desc");

            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@categoryID", cateID);
            return SQLDB.SQLDB.getData(cmd);
        }
        public void insertTours(string id, string name, string image, string images, string description, DateTime departureDate,string departureID, int slot,Boolean newFlag,Boolean hotFlag,DateTime createdDate,DateTime updatedDate, string createdBy,string updatedBy,Boolean status,Boolean deleted, string categoryID)
        { SqlCommand cmd = new SqlCommand("insert into Tours values (@id,@name,@image,@images,@description,@departureDate,@departureID,@slot,@newFlag,@hotFlag,@createdDate,@updatedDate,@createdBy,@updatedBy,@status,@deleted,@categoryID)");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@images", images);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@departureDate", departureDate);
            cmd.Parameters.AddWithValue("@departureID", departureID);
            cmd.Parameters.AddWithValue("@slot", slot);
            cmd.Parameters.AddWithValue("@newFlag", newFlag);
            cmd.Parameters.AddWithValue("@hotFlag", hotFlag);
            cmd.Parameters.AddWithValue("@createdDate", createdDate);
            cmd.Parameters.AddWithValue("@updatedDate", updatedDate);
            cmd.Parameters.AddWithValue("@createdBy", createdBy);
            cmd.Parameters.AddWithValue("@updatedBy", updatedBy);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            cmd.Parameters.AddWithValue("@categoryID", categoryID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void deleteTours(string idTours)
        {
            SqlCommand cmd = new SqlCommand("delete from Tours where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTours);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public void updateTours(string id, string name, string image, string images, string description, DateTime departureDate,string departureID, int slot,Boolean newFlag,Boolean hotFlag,DateTime createdDate,DateTime updatedDate, string createdBy,string updatedBy,Boolean status,Boolean deleted, string categoryID)
        { SqlCommand cmd = new SqlCommand("update Tours set name=@name,image=@image,images=@images,description=@description,departureDate=@departureDate,departureID=@departureID,slot=@slot,newFlag=@newFlag,hotFlag=@hotFlag,createdDate=@createdDate,updatedDate=@updatedDate,createdBy=@createdBy,updatedBy=@updatedBy,status=@status,deleted=@deleted,categoryID=@categoryID where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@images", images);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@departureDate", departureDate);
            cmd.Parameters.AddWithValue("@departureID", departureID);
            cmd.Parameters.AddWithValue("@slot", slot);
            cmd.Parameters.AddWithValue("@newFlag", newFlag);
            cmd.Parameters.AddWithValue("@hotFlag", hotFlag);
            cmd.Parameters.AddWithValue("@createdDate", createdDate);
            cmd.Parameters.AddWithValue("@updatedDate", updatedDate);
            cmd.Parameters.AddWithValue("@createdBy", createdBy);
            cmd.Parameters.AddWithValue("@updatedBy", updatedBy);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            cmd.Parameters.AddWithValue("@categoryID", categoryID);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public DataTable getListTours()
        {
            SqlCommand cmd = new SqlCommand("select id, name, description from Tours");
            cmd.CommandType = CommandType.Text;
            return SQLDB.SQLDB.getData(cmd);
        }
    }
}