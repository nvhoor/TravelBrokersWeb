using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class TourSuppliers
    {
        public void deleteTourSuppliers(string idTourSuppliers)
        {
            SqlCommand cmd = new SqlCommand("delete from TourSuppliers where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idTourSuppliers);
        }
    }
}