using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace WebApplication1
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Puedes realizar acciones adicionales al cargar la página.
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            if (IsValidUser(email, password))
            {
                // Autenticación exitosa, puedes redirigir a la página principal
                Response.Redirect("index.html");
            }
            else
            {
                // Autenticación fallida, muestra un mensaje de error
                lblErrorMessage.Text = "Correo electrónico o contraseña incorrectos";
            }
        }

        private bool IsValidUser(string email, string password)
        {
            string connectionString = "Data Source=CAMILO\\KLO;Initial Catalog=master;Integrated Security=True;"; // Reemplaza con tu cadena de conexión SQL Server

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM Usuarios WHERE CorreoElectronico = @Email AND Contraseña = @Password";
                
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    
                    int count = (int)cmd.ExecuteScalar();

                    return count > 0;
                }
            }
        }
    }
}