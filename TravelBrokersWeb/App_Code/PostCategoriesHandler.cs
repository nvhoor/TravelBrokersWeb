using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class PostCategoriesHandler
    {
        public void deletePostCategories(string idPostCategories)
        {
            SqlCommand cmd = new SqlCommand("delete from PostCategories where id=@id");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", idPostCategories);
        }
        public void getListCategories(int start,int end)
        {
            SqlCommand cmd = new SqlCommand("Select * from (SELECT *,ROW_NUMBER() OVER (ORDER BY id) AS RowNum FROM TourCategories a) as subTable where subTable.RowNum between @start and @end");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@start", start);
            cmd.Parameters.AddWithValue("@end", end);
            SQLDB.SQLDB.getData(cmd);
        }
    }
}