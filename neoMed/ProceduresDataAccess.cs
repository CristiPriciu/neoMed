using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace neoMed
{
    public class ProceduresDataAccess
    {

        

        
    }

    public class Procedures
    {
        public int Id { get; set; }
        public string name { get; set; }
        public int cost { get; set; }
    }

    public static class ProceduresDataAccessLayer
    {
        // Metoda pentru populat grid-ul
        public static List<Procedures> GetAllProcedures()
        {
            List<Procedures> listProcedures = new List<Procedures>();

            string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from tblProcedures", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Procedures procedure = new Procedures();
                    procedure.Id = Convert.ToInt32(rdr["Id"]);
                    procedure.name = rdr["name"].ToString();
                    procedure.cost = Convert.ToInt32(rdr["cost"]);
                    listProcedures.Add(procedure);
                }
                con.Close();
            }

            return listProcedures;
        }

        // Metoda pentru Delete
        public static void DeleteProcedure(int Id)
        {
            string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand
                    ("Delete from tblProcedures where Id = @Id", con);
                SqlParameter param = new SqlParameter("@Id", Id);
                cmd.Parameters.Add(param);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Metoda pentru Update
        public static int UpdateProcedure(int Id, string name, int cost)
        {
            string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Update tblProcedures SET Name = @name,  " +
                    "cost = @cost WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                SqlParameter paramProcedureId = new
                    SqlParameter("@Id", Id);
                cmd.Parameters.Add(paramProcedureId);
                SqlParameter paramName = new SqlParameter("@name", name);
                cmd.Parameters.Add(paramName);
                SqlParameter paramCost = new SqlParameter("@cost", cost);
                cmd.Parameters.Add(paramCost);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }

        // Metoda pentru insert
        public static int InsertProcedure(string name, int cost)
        {
            string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Insert into tblProcedures (name, cost)" +
                    " values (@name, @cost)";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                SqlParameter paramName = new SqlParameter("@name", name);
                cmd.Parameters.Add(paramName);
                SqlParameter paramCost = new SqlParameter("@cost", cost);
                cmd.Parameters.Add(paramCost);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }
    }
}