using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace Proje_Ödevi
{
    public partial class ÇalışanGüncelle : Form

      
    {
        public string EmployeeId { get; set; }
        public ÇalışanGüncelle(string employeeId)
        {
            InitializeComponent();
            EmployeeId = employeeId;
        }

        private void btnGüncelle_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection bağlanti = new SqlConnection(@"Data Source=KILIC;Initial Catalog=Proje;Integrated Security=True"))
                {
                    bağlanti.Open();
                    SqlCommand komut = new SqlCommand("UPDATE Employees SET EmployeeName = @Name,EMail  = @Mail, Position = @Position WHERE EmployeeId = @ID", bağlanti);
                    komut.Parameters.AddWithValue("@ID", EmployeeId);
                    komut.Parameters.AddWithValue("@Name", txtYeniAd.Text);
                    komut.Parameters.AddWithValue("@Mail", txtYeniMail.Text);
                    komut.Parameters.AddWithValue("@Position", txtYeniPozisyon.Text);

                    komut.ExecuteNonQuery();
                }

                MessageBox.Show("Çalışan bilgileri başarıyla güncellendi.");
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Çalışan bilgileri güncellenirken bir hata oluştu: " + ex.Message);
            }
        }
    }
}
