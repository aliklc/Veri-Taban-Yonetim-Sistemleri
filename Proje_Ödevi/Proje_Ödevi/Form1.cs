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
    public partial class form1 : Form
    {
        private Panel pnlCalisanlar;
        private DataGridView dgvEmployees;
        private Button btnCalisanEkle;
        private Button btnGeriDon;
        private Button btnGeriDon2;
        private Panel pnlCalisanDetaylar;
        private DataGridView dgvCalisanDetay;
        private Label lblTamamlanan;
        private Label lblTamamlanmayan;
        private Label lblBaslayacak;
        private Label lblDevamEden;

        SqlConnection bağlanti = new SqlConnection(@"Data Source=KILIC;Initial Catalog=Proje;Integrated Security=True");

        public form1()
        {
            InitializeCustomComponents();
            InitializeComponent();
        }

        private void InitializeCustomComponents()
        {
            // Çalışanlar panelini oluştur
            pnlCalisanlar = new Panel
            {
                Name = "pnlCalisanlar",
                Dock = DockStyle.Fill,
                Visible = false,
                BorderStyle = BorderStyle.FixedSingle,
                BackColor = Color.MintCream
            };

            pnlCalisanDetaylar = new Panel
            {
                Name = "pnlCalisanDetaylar",
                Dock = DockStyle.Fill,
                Visible = false,
                BorderStyle = BorderStyle.FixedSingle,
                BackColor = Color.MintCream
            };

            lblTamamlanan = new Label
            {
                Location = new Point(50, 430),
                Size = new Size(400,50),
               Font = new Font("Arial", 14, FontStyle.Bold) 

            };
            pnlCalisanDetaylar.Controls.Add(lblTamamlanan);

            lblTamamlanmayan = new Label
            {
                Location = new Point(50, 510),
                Size = new Size(400, 50),
                Font = new Font("Arial", 14, FontStyle.Bold) 
            };
            pnlCalisanDetaylar.Controls.Add(lblTamamlanmayan);

            lblBaslayacak = new Label
            {
                Location = new Point(50, 670),
                Size = new Size(400, 50),
                Font = new Font("Arial", 14, FontStyle.Bold) 
            };
            pnlCalisanDetaylar.Controls.Add(lblBaslayacak);

            lblDevamEden = new Label
            {
                Location = new Point(50,590),
                Size = new Size(400,50),
                Font = new Font("Arial",14,FontStyle.Bold)
            };
            pnlCalisanDetaylar.Controls.Add(lblDevamEden);

            dgvCalisanDetay = new DataGridView
            {
                Dock = DockStyle.Top,
                AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill,
                Size = new Size(900, 400), 
                Location = new Point(0, 0), 
                BackgroundColor = Color.White
            };
            dgvCalisanDetay.CellContentClick += new DataGridViewCellEventHandler(this.dgvEmployees_CellContentClick);
            pnlCalisanDetaylar.Controls.Add(dgvCalisanDetay);

            // DataGridView'i oluştur
            dgvEmployees = new DataGridView
            {
                Dock = DockStyle.Top,
                AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill,
                Size = new Size(900, 400), 
                Location = new Point(0, 0), 
                BackgroundColor = Color.White
            };
            dgvEmployees.CellContentClick += new DataGridViewCellEventHandler(this.dgvEmployees_CellContentClick);
            pnlCalisanlar.Controls.Add(dgvEmployees);

            // Çalışan ekle butonunu oluştur
            btnCalisanEkle = new Button
            {
                Text = "Çalışan Ekle",
                Location = new Point(50, 450),
                Size = new Size(300, 70), 
                BackColor = Color.PaleTurquoise,
                FlatStyle = FlatStyle.Flat
            };
            btnCalisanEkle.Click += new EventHandler(this.BtnCalisanEkle_Click);
            pnlCalisanlar.Controls.Add(btnCalisanEkle);

            // Geri dön butonunu oluştur
            btnGeriDon = new Button
            {
                Text = "Geri Dön",
                Location = new Point(50, 600),
                Size = new Size(300, 70),
                BackColor = Color.PaleTurquoise,
                FlatStyle = FlatStyle.Flat
                
            };
            btnGeriDon.Click += new EventHandler(this.BtnGeriDon_Click);
            pnlCalisanlar.Controls.Add(btnGeriDon);

            btnGeriDon2 = new Button
            {
                Text = "Geri Dön",
                Location = new Point(1100, 650),
                Size = new Size(300, 70),
                BackColor = Color.PaleTurquoise,
                FlatStyle = FlatStyle.Flat
            };
            btnGeriDon2.Click += new EventHandler(this.BtnGeriDon2_Click);
            pnlCalisanDetaylar.Controls.Add(btnGeriDon2);

            this.Controls.Add(pnlCalisanlar);
            this.Controls.Add(pnlCalisanDetaylar);
        }

        private void ButonSütunlarıEkle()
        {
            
            DataGridViewButtonColumn detaylarButton = new DataGridViewButtonColumn
            {
                HeaderText = "Detaylar",
                Text = "Detaylar",
                UseColumnTextForButtonValue = true,
                Name = "DetaylarButton"
            };
            dataGridViewProje.Columns.Add(detaylarButton);

            
            DataGridViewButtonColumn silButton = new DataGridViewButtonColumn
            {
                HeaderText = "Sil",
                Text = "Sil",
                UseColumnTextForButtonValue = true,
                Name = "SilButton"
            };
            dataGridViewProje.Columns.Add(silButton);

            DataGridViewButtonColumn silButton2 = new DataGridViewButtonColumn
            {
                HeaderText = "Sil",
                Text = "Sil",
                UseColumnTextForButtonValue = true,
                Name = "SilButton"
            };
            dataGridViewProjeGörev.Columns.Add(silButton2);

            DataGridViewButtonColumn tamamlaButton = new DataGridViewButtonColumn
            {
                HeaderText = "Tamamla",
                Text = "Tamamla",
                UseColumnTextForButtonValue = true,
                Name = "TamamlaButton"
            };
            dataGridViewProjeGörev.Columns.Add(tamamlaButton);

            DataGridViewButtonColumn silButton3 = new DataGridViewButtonColumn
            {
                HeaderText = "Sil",
                Text = "Sil",
                UseColumnTextForButtonValue = true,
                Name = "SilButton"
            };
            dgvEmployees.Columns.Add(silButton3);

            DataGridViewButtonColumn detaylarButton2 = new DataGridViewButtonColumn
            {
                HeaderText = "Detaylar",
                Text = "Detaylar",
                UseColumnTextForButtonValue = true,
                Name = "DetaylarButton"
            };
            dgvEmployees.Columns.Add(detaylarButton2);

            DataGridViewButtonColumn güncelleButton = new DataGridViewButtonColumn
            {
                HeaderText = "Güncelle",
                Text = "Güncelle",
                UseColumnTextForButtonValue = true,
                Name = "GüncelleButton"
            };
            dgvEmployees.Columns.Add(güncelleButton);
        }

        private void dataGridViewProje_CellContentClick(object sender, DataGridViewCellEventArgs e) // proje tablosundaki butonlara tıklayınca ne yapıldığı
        {
            
            if (e.RowIndex >= 0)
            {
               
                if (dataGridViewProje.Columns[e.ColumnIndex].Name == "DetaylarButton")
                {
                    string id = dataGridViewProje.Rows[e.RowIndex].Cells["Proje ID"].Value.ToString(); 
                    ProjeDetaylariniYukle(id); 
                    panel1.Visible = false;
                    pnlDetaylar.Visible = true; 
                }

                
                if (dataGridViewProje.Columns[e.ColumnIndex].Name == "SilButton")
                {
                    string id = dataGridViewProje.Rows[e.RowIndex].Cells["Proje ID"].Value.ToString(); 
                    SilKayit(id); 
                }
            }
        }

        private void dataGridViewProjeGörev_CellContentClick(object sender, DataGridViewCellEventArgs e)// görevler tablosundaki butonlar
        {
            
            if (dataGridViewProjeGörev.Columns[e.ColumnIndex].Name == "SilButton")
            {
                
                string görevId = dataGridViewProjeGörev.Rows[e.RowIndex].Cells["TaskId"].Value.ToString(); 

               
                SilGörev(görevId);
            }

            if (dataGridViewProjeGörev.Columns[e.ColumnIndex].Name == "TamamlaButton")
            {
                string görevId = dataGridViewProjeGörev.Rows[e.RowIndex].Cells["TaskId"].Value.ToString(); 
                TamamlaGörev(görevId);
            }


        }

        private void dgvEmployees_CellContentClick(object sender, DataGridViewCellEventArgs e)// çalışanlar tablosundaki butonlar
        {
            
            if (dgvEmployees.Columns[e.ColumnIndex].Name == "SilButton")
            {
         
                string calisanId = dgvEmployees.Rows[e.RowIndex].Cells["EmployeeId"].Value.ToString(); 

                
                SilCalisan(calisanId);
            }

            if (dgvEmployees.Columns[e.ColumnIndex].Name == "DetaylarButton")
            {
                string calisanId = dgvEmployees.Rows[e.RowIndex].Cells["EmployeeId"].Value.ToString(); 
                panel1.Visible = false;
                pnlDetaylar.Visible = false;
                pnlCalisanlar.Visible = false;
                pnlCalisanDetaylar.Visible = true; 
                CalisanDetaylariniYukle(calisanId); 
                GüncelleLabel(int.Parse(calisanId));

            }

            if (dgvEmployees.Columns[e.ColumnIndex].Name == "GüncelleButton")
            {
                string calisanId = dgvEmployees.Rows[e.RowIndex].Cells["EmployeeId"].Value.ToString();
                ÇalışanGüncelle güncelleForm = new ÇalışanGüncelle(calisanId);
                if (güncelleForm.ShowDialog() == DialogResult.OK)
                {
                    CalisanBilgisiYukle(); 
                }

            }

        }
        private void Form1_Load(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            ProjeDurumunuGüncelle();
            GörevDurumuGüncelle();
            TabloyuYukle();
            ButonSütunlarıEkle();
        }

        private void TabloyuYukle()
        {
            SqlCommand komut = new SqlCommand("exec Listele", bağlanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridViewProje.DataSource = dt;


            if (dataGridViewProje.Columns.Contains("Proje ID"))
            {
                dataGridViewProje.Columns["Proje ID"].Visible = false;
            }

            if (dt.Rows.Count > 0)
            {
                
                dataGridViewProje.DataSource = dt;
            }
            else
            {
              
                MessageBox.Show("Henüz herhangi bir proje bulunmamaktadır.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            ProjeDurumunuGüncelle();

            bağlanti.Close();
        }

        private void SilKayit(string id)
        {
            bağlanti.Open();
            SqlCommand komut = new SqlCommand("DELETE FROM Projects WHERE ProjectId = @ID", bağlanti);
            komut.Parameters.AddWithValue("@ID", id);
            komut.ExecuteNonQuery();
            bağlanti.Close();

            MessageBox.Show("Kayıt başarıyla silindi.");
            TabloyuYukle(); 
        }

        private void btnProjeEkle_Click(object sender, EventArgs e)
        {
            ProjeEkleme ekleForm = new ProjeEkleme();
            if (ekleForm.ShowDialog() == DialogResult.OK)
            {
               
                TabloyuYukle();
            }
        }

        private void ProjeDetaylariniYukle(string projeId) //detaylar sayfasındaki alttaki proje bilgileri
        {
            try
            {
                bağlanti.Open();
                SqlCommand komut = new SqlCommand("SELECT * FROM Projects WHERE ProjectId = @ID", bağlanti);
                komut.Parameters.AddWithValue("@ID", projeId);

                SqlDataReader reader = komut.ExecuteReader();
                if (reader.Read())
                {
                    
                    lblProjeAdi.Text = reader["ProjectName"].ToString();
                    lblProjeAdi.Tag = reader["ProjectId"];
                    txtBaslangicTarihi.Text = reader["StartDate"].ToString();
                    txtBitisTarihi.Text = reader["EndDate"].ToString();
                   
                }
                reader.Close();

                GörevleriYukle(projeId);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Detaylar yüklenirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void ProjeDurumunuGüncelle()
        {
            try
            {
                bağlanti.Open();
                SqlCommand komut = new SqlCommand("GüncelleProjeDurumu", bağlanti);
                komut.CommandType = CommandType.StoredProcedure;
                komut.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Proje durumu güncellenirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }


        private void btnTamam_Click(object sender, EventArgs e)
        {
            ProjeDurumunuGüncelle();
            TabloyuYukle();
            pnlDetaylar.Visible = false;
            panel1.Visible = true;
        }

        private void GörevleriYukle(string projeId) // proje ve görevlerin olduğu tablo
        {
            try
            {
                SqlCommand komut = new SqlCommand("proje_detay", bağlanti);
                komut.CommandType = CommandType.StoredProcedure;
                komut.Parameters.AddWithValue("@ProjectId", projeId);

                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);

                dataGridViewProjeGörev.DataSource = dt;

                if (dataGridViewProjeGörev.Columns.Contains("TaskId"))
                {
                    dataGridViewProjeGörev.Columns["TaskId"].Visible = false;
                }

                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show("Bu projeye ait görev bulunmamaktadır.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Görevler yüklenirken bir hata oluştu: " + ex.Message);
            }
        }

        private void btnGörevEkle_Click(object sender, EventArgs e)
        {
            
                
            if (dataGridViewProje.SelectedRows.Count > 0)
            {
                
                   string projeId = dataGridViewProje.SelectedRows[0].Cells["Proje ID"].Value.ToString();

                
                GörevEkleme ekleForm = new GörevEkleme(projeId);
                ekleForm.ShowDialog();
                GörevDurumuGüncelle();
                GörevleriYukle(projeId);
            }
            else
            {
                MessageBox.Show("Lütfen bir proje seçin.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void SilGörev(string görevId) // görev silme
        {
            try
            {
                
                bağlanti.Open();

            
                SqlCommand komut = new SqlCommand("DELETE FROM Tasks WHERE TaskId = @ID", bağlanti);
                komut.Parameters.AddWithValue("@ID", görevId);
                komut.ExecuteNonQuery();

                MessageBox.Show("Görev başarıyla silindi.");

                
                string projeId = lblProjeAdi.Tag.ToString(); 
                GörevleriYukle(projeId);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Görev silinirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void TamamlaGörev(string görevId) // tamamla butonuna basınca
        {
            try
            {
                bağlanti.Open();

                
                SqlCommand tarihKomut = new SqlCommand("SELECT TaskStartDate FROM Tasks WHERE TaskId = @ID", bağlanti);
                tarihKomut.Parameters.AddWithValue("@ID", görevId);

                DateTime başlangıçTarihi = (DateTime)tarihKomut.ExecuteScalar(); 
                DateTime şuAn = DateTime.Now;

            
                if (başlangıçTarihi > şuAn)
                {
                    MessageBox.Show("Görev Başlangıç Tarihinden Önce Tamamlanamaz!!");
                    return; 
                }
                
                SqlCommand komut = new SqlCommand("UPDATE Tasks SET Statuss = 'Tamamlandı',ManuelTamamlandi = 1 WHERE TaskId = @ID", bağlanti);
                komut.Parameters.AddWithValue("@ID", görevId);
                komut.ExecuteNonQuery();
                MessageBox.Show("Görev başarıyla tamamlandı.");
                
                string projeId = lblProjeAdi.Tag.ToString();
                GörevleriYukle(projeId);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Görev tamamlanırken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void GörevDurumuGüncelle() // görevlerin durumları
        {
            try
            {
                bağlanti.Open();
                SqlCommand komut = new SqlCommand("GüncelleGörevDurumu", bağlanti);
                komut.CommandType = CommandType.StoredProcedure;
                komut.ExecuteNonQuery();

                if (lblProjeAdi.Tag != null)
                {
                    string projeId = lblProjeAdi.Tag.ToString();
                    GörevleriYukle(projeId);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Görev durumu güncellenirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void btnCalisanlar_Click(object sender, EventArgs e)
        {
            panel1.Visible = false;
            pnlDetaylar.Visible = false;
            pnlCalisanlar.Visible = true;
            CalisanBilgisiYukle();
        }

        public void CalisanBilgisiYukle()
        {
            try
            {

                if (bağlanti.State != ConnectionState.Open)
                {
                    bağlanti.Open();
                }

                SqlCommand komut = new SqlCommand("SELECT EmployeeId,EmployeeName as 'Çalışanın Adı', Email as 'Çalışanın Maili',Position as 'Çalışanın Pozisyonu' FROM Employees", bağlanti);
                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);

                dgvEmployees.DataSource = null;
                dgvEmployees.DataSource = dt;

                if (dgvEmployees.Columns.Contains("EmployeeId"))
                {
                    dgvEmployees.Columns["EmployeeId"].Visible = false;
                }

                pnlCalisanlar.Visible = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata: " + ex.Message + "\nDetay: " + ex.StackTrace);

            }
            finally
            {
                bağlanti.Close();
            }
        }


        private void SilCalisan(string calisanId)
        {
            try
            {
                
                bağlanti.Open();

                
                SqlCommand komut = new SqlCommand("DELETE FROM Employees WHERE EmployeeId = @ID", bağlanti);
                komut.Parameters.AddWithValue("@ID", calisanId);
                komut.ExecuteNonQuery();

                MessageBox.Show("Çalışan başarıyla silindi.");

                
                CalisanBilgisiYukle();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Çalışan silinirken bir hata oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }
        }

        private void CalisanDetaylariniYukle(string calisanId)
        {
            try
            {
                bağlanti.Open();

                SqlCommand komut = new SqlCommand("calisan_detay", bağlanti);
                komut.CommandType = CommandType.StoredProcedure;
                komut.Parameters.AddWithValue("EmployeeId", calisanId);
                komut.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);

                dgvCalisanDetay.DataSource = null;
                dgvCalisanDetay.DataSource = dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Detaylar Yüklenirken Hata Oluştu: " + ex.Message);
            }
            finally
            {
                bağlanti.Close();
            }

        }

        private void GüncelleLabel(int employeeId)
        {
            string connectionString = @"Data Source=KILIC;Initial Catalog=Proje;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("calisangörevdetay", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EmployeeId", employeeId);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    lblTamamlanan.Text = $"Tamamlanan Görevler: {reader["TamamlananGorev"]}";
                    lblTamamlanmayan.Text = $"Tamamlanmayan Görevler: {reader["TamamlanmayanGorev"]}";
                    lblBaslayacak.Text = $"Tamamlanacak Görevler: {reader["BaslamayanGorev"]}";
                    lblDevamEden.Text = $"Devam Eden Görevler: {reader["DevamEdenGorev"]}";
                }

                conn.Close();
            }
        }


        private void BtnCalisanEkle_Click(object sender, EventArgs e)
        {
            CalisanEkle ekleForm = new CalisanEkle(this);
            if (ekleForm.ShowDialog() == DialogResult.OK)
            {
                CalisanBilgisiYukle();
            }
        }

        private void BtnGeriDon_Click(object sender, EventArgs e)
        {
            pnlCalisanlar.Visible = false;
            panel1.Visible = true;
            pnlDetaylar.Visible = false;
        }

        private void BtnGeriDon2_Click(object sender, EventArgs e)
        {
            pnlCalisanlar.Visible = true;
            pnlCalisanDetaylar.Visible = false;
            pnlDetaylar.Visible = false;
            panel1.Visible = false;
        }

    }
}

