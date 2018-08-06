using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace neoMed
{
    public class ClientsDataAccesss
    {
        public class Clients
        {
            public int Id { get; set; }
            public string name { get; set; }
            public int age { get; set; }
            public long ssn { get; set; }
            public string email { get; set; }
        }

        public class ClientsDataAccessLayer
        {
            //Metoda pentru populat grid-ul
            public static List<Clients> GetAllClients()
            {
                List<Clients> listClients = new List<Clients>();

                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("Select * from tblClients", con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        Clients client = new Clients();
                        client.Id = Convert.ToInt32(rdr["Id"]);
                        client.name = rdr["name"].ToString();
                        client.age = Convert.ToInt32(rdr["age"]);
                        client.ssn = Convert.ToInt64(rdr["ssn"]);
                        client.email = rdr["email"].ToString();
                        listClients.Add(client);
                    }
                    con.Close();
                }

                return listClients;
            }

            // Metoda pentru Delete
            public static void DeleteProcedure(int Id)
            {
                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand
                        ("Delete from tblClients where Id = @Id", con);
                    SqlParameter param = new SqlParameter("@Id", Id);
                    cmd.Parameters.Add(param);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Metoda pentru Update
            public static int UpdateProcedure(int Id, string name, int age, long ssn, string email)
            {
                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    string updateQuery = "Update tblClients SET name= @name," +
                        "age = @age, " + "ssn = @ssn, " + "email = @email WHERE Id = @Id";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    SqlParameter paramProcedureId = new
                        SqlParameter("@Id", Id);
                    cmd.Parameters.Add(paramProcedureId);
                    SqlParameter paramClientId = new SqlParameter("@name", name);
                    cmd.Parameters.Add(paramClientId);
                    SqlParameter paramDate = new SqlParameter("@age", age);
                    cmd.Parameters.Add(paramDate);
                    SqlParameter paramMailSent = new SqlParameter("@ssn", ssn);
                    cmd.Parameters.Add(paramMailSent);
                    SqlParameter paramHonored = new SqlParameter("@email", email);
                    cmd.Parameters.Add(paramHonored);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }

            // Metoda pentru insert
            public static int InsertProcedure(string name, int age, long ssn, string email)
            {
                string CS = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    string updateQuery = "Insert into tblClients (name, age, ssn, email)" +
                        " values (@name, @age, @ssn, @email)";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    SqlParameter paramClientId = new SqlParameter("@name", name);
                    cmd.Parameters.Add(paramClientId);
                    SqlParameter paramDate = new SqlParameter("@age", age);
                    cmd.Parameters.Add(paramDate);
                    SqlParameter paramMailSent = new SqlParameter("@ssn", ssn);
                    cmd.Parameters.Add(paramMailSent);
                    SqlParameter paramHonored = new SqlParameter("@email", email);
                    cmd.Parameters.Add(paramHonored);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }
    }
}