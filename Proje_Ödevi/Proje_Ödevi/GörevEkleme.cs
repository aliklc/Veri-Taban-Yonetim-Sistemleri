using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Proje_Ödevi
{
    public partial class GörevEkleme : Form
    {
        // Proje ID'si, form oluşturulurken parametre olarak alınacak
        public string projeId { get; set; }

        public GörevEkleme(string projeId)
        {
            InitializeComponent();
            this.projeId = projeId;  // Proje ID'si alınıp, formdaki değişkene atanıyor
            ÇalışanlarıYükle(); // Çalışanları yüklemek için metodu çağırıyoruz
        }

        SqlConnection bağlanti = new SqlConnection(@"Data Source=KILIC;Initial Catalog=Proje;Integrated Security=True");

        private void ÇalışanlarıYükle()
        {
            try
            {
                bağlanti.Open();
                SqlCommand komut = new SqlCommand("SELECT EmployeeId, EmployeeName FROM Employees", bağlanti);
                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // ComboBox'a çalışanları yükle
                cmbÇalışan.DataSource = dt;
                cmbÇalışan.DisplayMember = "EmployeeName"; // Çalışan adlarını göster
                cmbÇalışan.ValueMember = "EmployeeId";    // Çalışan ID'sini değere al
            }
            catch (Exception ex)
            {
                MessageBox.Show("Çalışanlar yüklenirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void GörevEkle(string görevAdı, string çalışanId,DateTime baslangicTarihi,DateTime bitisTarihi,float adamGün)
        {
            try
            {
                bağlanti.Open();
                SqlCommand komut = new SqlCommand("GörevEkle", bağlanti); 
                komut.CommandType = CommandType.StoredProcedure;

                
                komut.Parameters.AddWithValue("@ProjeId", projeId); 
                komut.Parameters.AddWithValue("@GörevAdı", görevAdı); 
                komut.Parameters.AddWithValue("@ÇalışanId", çalışanId); 
                komut.Parameters.AddWithValue("@BaslangicTarihi", baslangicTarihi);
                komut.Parameters.AddWithValue("@BitisTarihi",bitisTarihi);
                komut.Parameters.AddWithValue("@AdamGün",adamGün); 

                komut.ExecuteNonQuery();
                MessageBox.Show("Görev başarıyla eklendi.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Görev eklenirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void btnGörevEkle_Click(object sender, EventArgs e)
        {
            string görevAdı = txtGörevAdı.Text; // TextBox üzerinden görev adı alınır
            string çalışanId = cmbÇalışan.SelectedValue.ToString(); // ComboBox üzerinden seçilen çalışan alınır
            DateTime baslangicTarihi = dtpBaslangicTarihi.Value;
            DateTime bitisTarihi = dtpBitisTarihi.Value;
            float adamGün;

            // Adam gün değerini float'a dönüştür
            if (!float.TryParse(txtAdamGün.Text, out adamGün))
            {
                MessageBox.Show("Lütfen geçerli bir adam gün değeri girin.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // Görev adı ve çalışan seçimi kontrol ediliyor
            if (!string.IsNullOrEmpty(görevAdı) && !string.IsNullOrEmpty(çalışanId))
            {
                GörevEkle(görevAdı, çalışanId, baslangicTarihi, bitisTarihi,adamGün); // Görev ekleme metodu çağrılır
            }
            else
            {
                MessageBox.Show("Lütfen tüm alanları doldurun.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}
