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

namespace Proje_Ödevi
{
    public partial class CalisanEkle : Form
    {
        private form1 _parentForm;
        public CalisanEkle(form1 parentForm)
        {
            InitializeComponent();
            _parentForm = parentForm;
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            string isim = txtAd.Text;
            string mail = txtMail.Text;
            string pozisyon = txtPozisyon.Text;

            if (string.IsNullOrEmpty(isim) || string.IsNullOrEmpty(mail) || string.IsNullOrEmpty(pozisyon))
            {
                MessageBox.Show("Lütfen tüm alanları doldurun.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                using (SqlConnection bağlanti = new SqlConnection(@"Data Source=KILIC;Initial Catalog=Proje;Integrated Security=True"))
                {
                    bağlanti.Open();
                    SqlCommand komut = new SqlCommand("INSERT INTO Employees (EmployeeName, Email, Position) VALUES (@Name, @Email, @Position)", bağlanti);
                    komut.Parameters.AddWithValue("@Name", isim);
                    komut.Parameters.AddWithValue("@Email", mail);
                    komut.Parameters.AddWithValue("@Position", pozisyon);
                    komut.ExecuteNonQuery();
                }

                MessageBox.Show("Çalışan başarıyla eklendi.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.DialogResult = DialogResult.OK;
                _parentForm.CalisanBilgisiYukle();
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Çalışan eklenirken bir hata oluştu: " + ex.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
