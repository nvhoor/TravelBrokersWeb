using SQLDB;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TravelBrokersWeb.App_Code
{
    public class AccountsHandler
    {
        public void deleteAccount(string username)
        {
            SqlCommand cmd = new SqlCommand("delete from Account where username=@username")
            {
                CommandType = CommandType.Text
            };
            cmd.Parameters.AddWithValue("@username", username);
        }

        public void insertAccounts(string username, string password, string avatar, string email, string phoneNumber,
            string roleID, bool deleted)
        {
            SqlCommand cmd =
                new SqlCommand(
                    "insert into Accounts values (@username,@password,@avatar,@email,@phoneNumber,@roleID,@deleted)")
                {
                    CommandType = CommandType.Text
                };
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@avatar", avatar);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phoneNumber", phoneNumber);
            cmd.Parameters.AddWithValue("@roleID", roleID);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }

        public void updateAccounts(string username, string password, string avatar, string email, string phoneNumber,
            string roleID, bool deleted)
        {
            SqlCommand cmd =
                new SqlCommand(
                    "update Accounts set password=@password,avatar=@avatar,email=@email,phoneNumber=@phoneNumber,roleID=@roleID,deleted=@deleted where username=@username")
                {
                    CommandType = CommandType.Text
                };
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@avatar", avatar);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phoneNumber", phoneNumber);
            cmd.Parameters.AddWithValue("@roleID", roleID);
            cmd.Parameters.AddWithValue("@deleted", deleted);
            SQLDB.SQLDB.ExcuteNonQuery(cmd);
        }
        public DataTable CheckLogin(string username, string password)
        {
            SqlCommand cmd = new SqlCommand("select * from Accounts where username=@username and password=@password ");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            return SQLDB.SQLDB.getData(cmd);
        }
        public bool IsAdmin(string username)
        {
            SqlCommand cmd = new SqlCommand("select * from Accounts where username=@username and roleId='RO01'");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", username);
            return (SQLDB.SQLDB.getData(cmd).Rows.Count > 0) ? true : false;
        }
        public DataTable TimTaiKhoan(string username)
        {
            SqlCommand cmd = new SqlCommand("select * from Accounts where username = @username");
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", username);

            return SQLDB.SQLDB.getData(cmd);
        }
    }
}