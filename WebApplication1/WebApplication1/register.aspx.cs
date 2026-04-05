using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;




namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        // Reemplaza "TuCadenaDeConexion" con la cadena de conexión correcta a tu base de datos
        private string connectionString = "Data Source=CAMILO\\KLO;Initial Catalog=master;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Puedes agregar lógica adicional aquí si es necesario
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string nombre = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (password == confirmPassword)
            {
                // Intenta registrar al usuario
                if (RegistrarUsuario(nombre, email, password))
                {
                    // Si el registro es exitoso, puedes redirigir al usuario a otra página.
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    lblErrorMessage.Text = "Error al registrar el usuario";
                }
            }
            else
            {
                lblErrorMessage.Text = "Las contraseñas no coinciden";
            }
        }

        private bool RegistrarUsuario(string nombre, string email, string password)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Verifica si el correo electrónico ya está registrado
                    string query = "SELECT COUNT(*) FROM Register WHERE CorreoElectronico = @Email";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        int existingUsers = (int)cmd.ExecuteScalar();

                        if (existingUsers > 0)
                        {
                            lblErrorMessage.Text = "El correo electrónico ya está registrado";
                            return false;
                        }
                    }

                    // Si el correo no está registrado, procede con la inserción
                    query = "INSERT INTO Register (Nombre, CorreoElectronico, Contraseña) VALUES (@Nombre, @Email, @Password)";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Nombre", nombre);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.ExecuteNonQuery();
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                // Maneja cualquier excepción aquí
                lblErrorMessage.Text = "Error al registrar el usuario: " + ex.Message;
                return false;
            }
        }
    }
}