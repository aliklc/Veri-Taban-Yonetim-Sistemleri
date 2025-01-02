namespace Proje_Ödevi
{
    partial class form1
    {
        /// <summary>
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(form1));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnCalisanlar = new System.Windows.Forms.Button();
            this.btnProjeEkle = new System.Windows.Forms.Button();
            this.dataGridViewProje = new System.Windows.Forms.DataGridView();
            this.pnlDetaylar = new System.Windows.Forms.Panel();
            this.pictureBox4 = new System.Windows.Forms.PictureBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnGörevEkle = new System.Windows.Forms.Button();
            this.btnTamam = new System.Windows.Forms.Button();
            this.txtBitisTarihi = new System.Windows.Forms.TextBox();
            this.txtBaslangicTarihi = new System.Windows.Forms.TextBox();
            this.lblProjeAdi = new System.Windows.Forms.Label();
            this.dataGridViewProjeGörev = new System.Windows.Forms.DataGridView();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProje)).BeginInit();
            this.pnlDetaylar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProjeGörev)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.AutoSize = true;
            this.panel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.panel1.BackColor = System.Drawing.Color.MintCream;
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.pictureBox3);
            this.panel1.Controls.Add(this.pictureBox2);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Controls.Add(this.btnCalisanlar);
            this.panel1.Controls.Add(this.btnProjeEkle);
            this.panel1.Controls.Add(this.dataGridViewProje);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1511, 768);
            this.panel1.TabIndex = 0;
            // 
            // label5
            // 
            this.label5.AutoEllipsis = true;
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label5.Font = new System.Drawing.Font("Yu Gothic", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(63, 313);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(226, 22);
            this.label5.TabIndex = 7;
            this.label5.Text = "PROJE YÖNETİM SİSTEMİ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Yu Gothic UI", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(127, 257);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(87, 38);
            this.label4.TabIndex = 6;
            this.label4.Text = "EBAA";
            // 
            // pictureBox3
            // 
            this.pictureBox3.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox3.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox3.Image")));
            this.pictureBox3.Location = new System.Drawing.Point(45, 12);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(254, 227);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox3.TabIndex = 5;
            this.pictureBox3.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(25, 385);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(62, 59);
            this.pictureBox2.TabIndex = 4;
            this.pictureBox2.TabStop = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.InitialImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.InitialImage")));
            this.pictureBox1.Location = new System.Drawing.Point(25, 492);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(62, 59);
            this.pictureBox1.TabIndex = 3;
            this.pictureBox1.TabStop = false;
            // 
            // btnCalisanlar
            // 
            this.btnCalisanlar.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btnCalisanlar.BackColor = System.Drawing.Color.PaleTurquoise;
            this.btnCalisanlar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCalisanlar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnCalisanlar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnCalisanlar.Location = new System.Drawing.Point(104, 492);
            this.btnCalisanlar.Name = "btnCalisanlar";
            this.btnCalisanlar.Size = new System.Drawing.Size(228, 59);
            this.btnCalisanlar.TabIndex = 2;
            this.btnCalisanlar.Text = "Çalışanlar";
            this.btnCalisanlar.UseVisualStyleBackColor = false;
            this.btnCalisanlar.Click += new System.EventHandler(this.btnCalisanlar_Click);
            // 
            // btnProjeEkle
            // 
            this.btnProjeEkle.AutoSize = true;
            this.btnProjeEkle.BackColor = System.Drawing.Color.PaleTurquoise;
            this.btnProjeEkle.Cursor = System.Windows.Forms.Cursors.Default;
            this.btnProjeEkle.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProjeEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnProjeEkle.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnProjeEkle.Location = new System.Drawing.Point(104, 385);
            this.btnProjeEkle.Name = "btnProjeEkle";
            this.btnProjeEkle.Size = new System.Drawing.Size(228, 59);
            this.btnProjeEkle.TabIndex = 0;
            this.btnProjeEkle.Text = "Proje Ekle";
            this.btnProjeEkle.UseVisualStyleBackColor = false;
            this.btnProjeEkle.Click += new System.EventHandler(this.btnProjeEkle_Click);
            // 
            // dataGridViewProje
            // 
            this.dataGridViewProje.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewProje.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewProje.BackgroundColor = System.Drawing.Color.White;
            this.dataGridViewProje.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewProje.Location = new System.Drawing.Point(342, 0);
            this.dataGridViewProje.Name = "dataGridViewProje";
            this.dataGridViewProje.RowHeadersWidth = 51;
            this.dataGridViewProje.RowTemplate.Height = 24;
            this.dataGridViewProje.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridViewProje.Size = new System.Drawing.Size(1169, 528);
            this.dataGridViewProje.TabIndex = 1;
            this.dataGridViewProje.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewProje_CellContentClick);
            // 
            // pnlDetaylar
            // 
            this.pnlDetaylar.AutoSize = true;
            this.pnlDetaylar.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.pnlDetaylar.BackColor = System.Drawing.Color.MintCream;
            this.pnlDetaylar.Controls.Add(this.pictureBox4);
            this.pnlDetaylar.Controls.Add(this.label3);
            this.pnlDetaylar.Controls.Add(this.label2);
            this.pnlDetaylar.Controls.Add(this.label1);
            this.pnlDetaylar.Controls.Add(this.btnGörevEkle);
            this.pnlDetaylar.Controls.Add(this.btnTamam);
            this.pnlDetaylar.Controls.Add(this.txtBitisTarihi);
            this.pnlDetaylar.Controls.Add(this.txtBaslangicTarihi);
            this.pnlDetaylar.Controls.Add(this.lblProjeAdi);
            this.pnlDetaylar.Controls.Add(this.dataGridViewProjeGörev);
            this.pnlDetaylar.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlDetaylar.Location = new System.Drawing.Point(0, 0);
            this.pnlDetaylar.Name = "pnlDetaylar";
            this.pnlDetaylar.Size = new System.Drawing.Size(1511, 768);
            this.pnlDetaylar.TabIndex = 2;
            this.pnlDetaylar.Visible = false;
            // 
            // pictureBox4
            // 
            this.pictureBox4.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.pictureBox4.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox4.Image")));
            this.pictureBox4.Location = new System.Drawing.Point(1202, 413);
            this.pictureBox4.Name = "pictureBox4";
            this.pictureBox4.Size = new System.Drawing.Size(83, 72);
            this.pictureBox4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox4.TabIndex = 9;
            this.pictureBox4.TabStop = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Gainsboro;
            this.label3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(40, 596);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(108, 25);
            this.label3.TabIndex = 8;
            this.label3.Text = "Bitiş Tarihi:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Gainsboro;
            this.label2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(40, 511);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(157, 25);
            this.label2.TabIndex = 7;
            this.label2.Text = "Başlangıç Tarihi:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Gainsboro;
            this.label1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(40, 433);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(123, 25);
            this.label1.TabIndex = 6;
            this.label1.Text = "Projenin Adı:";
            // 
            // btnGörevEkle
            // 
            this.btnGörevEkle.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnGörevEkle.AutoSize = true;
            this.btnGörevEkle.BackColor = System.Drawing.Color.PaleTurquoise;
            this.btnGörevEkle.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGörevEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnGörevEkle.Location = new System.Drawing.Point(1296, 413);
            this.btnGörevEkle.Name = "btnGörevEkle";
            this.btnGörevEkle.Size = new System.Drawing.Size(204, 72);
            this.btnGörevEkle.TabIndex = 5;
            this.btnGörevEkle.Text = "Görev Ekle";
            this.btnGörevEkle.UseVisualStyleBackColor = false;
            this.btnGörevEkle.UseWaitCursor = true;
            this.btnGörevEkle.Click += new System.EventHandler(this.btnGörevEkle_Click);
            // 
            // btnTamam
            // 
            this.btnTamam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnTamam.AutoSize = true;
            this.btnTamam.BackColor = System.Drawing.Color.PaleTurquoise;
            this.btnTamam.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTamam.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnTamam.Location = new System.Drawing.Point(1366, 700);
            this.btnTamam.Name = "btnTamam";
            this.btnTamam.Size = new System.Drawing.Size(121, 56);
            this.btnTamam.TabIndex = 3;
            this.btnTamam.Text = "Geri Dön";
            this.btnTamam.UseVisualStyleBackColor = false;
            this.btnTamam.UseWaitCursor = true;
            this.btnTamam.Click += new System.EventHandler(this.btnTamam_Click);
            // 
            // txtBitisTarihi
            // 
            this.txtBitisTarihi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtBitisTarihi.Location = new System.Drawing.Point(222, 591);
            this.txtBitisTarihi.Name = "txtBitisTarihi";
            this.txtBitisTarihi.Size = new System.Drawing.Size(224, 30);
            this.txtBitisTarihi.TabIndex = 2;
            // 
            // txtBaslangicTarihi
            // 
            this.txtBaslangicTarihi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtBaslangicTarihi.Location = new System.Drawing.Point(222, 506);
            this.txtBaslangicTarihi.Name = "txtBaslangicTarihi";
            this.txtBaslangicTarihi.Size = new System.Drawing.Size(224, 30);
            this.txtBaslangicTarihi.TabIndex = 1;
            // 
            // lblProjeAdi
            // 
            this.lblProjeAdi.AutoSize = true;
            this.lblProjeAdi.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblProjeAdi.Location = new System.Drawing.Point(217, 433);
            this.lblProjeAdi.Name = "lblProjeAdi";
            this.lblProjeAdi.Size = new System.Drawing.Size(144, 29);
            this.lblProjeAdi.TabIndex = 0;
            this.lblProjeAdi.Text = "Projenin Adı";
            // 
            // dataGridViewProjeGörev
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            this.dataGridViewProjeGörev.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridViewProjeGörev.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewProjeGörev.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewProjeGörev.BackgroundColor = System.Drawing.Color.White;
            this.dataGridViewProjeGörev.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewProjeGörev.Location = new System.Drawing.Point(3, 3);
            this.dataGridViewProjeGörev.Name = "dataGridViewProjeGörev";
            this.dataGridViewProjeGörev.RowHeadersWidth = 51;
            this.dataGridViewProjeGörev.RowTemplate.Height = 24;
            this.dataGridViewProjeGörev.Size = new System.Drawing.Size(1506, 376);
            this.dataGridViewProjeGörev.TabIndex = 4;
            this.dataGridViewProjeGörev.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewProjeGörev_CellContentClick);
            // 
            // form1
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.AutoSize = true;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ClientSize = new System.Drawing.Size(1511, 768);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pnlDetaylar);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "form1";
            this.Text = "EBAA";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProje)).EndInit();
            this.pnlDetaylar.ResumeLayout(false);
            this.pnlDetaylar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewProjeGörev)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dataGridViewProje;
        private System.Windows.Forms.Button btnProjeEkle;
        private System.Windows.Forms.Panel pnlDetaylar;
        private System.Windows.Forms.Label lblProjeAdi;
        private System.Windows.Forms.TextBox txtBitisTarihi;
        private System.Windows.Forms.TextBox txtBaslangicTarihi;
        private System.Windows.Forms.Button btnTamam;
        private System.Windows.Forms.DataGridView dataGridViewProjeGörev;
        private System.Windows.Forms.Button btnGörevEkle;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnCalisanlar;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.PictureBox pictureBox4;
    }
}

