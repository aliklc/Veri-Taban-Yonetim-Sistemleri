namespace Proje_Ödevi
{
    partial class CalisanEkle
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblAd = new System.Windows.Forms.Label();
            this.lblMail = new System.Windows.Forms.Label();
            this.lblPozisyon = new System.Windows.Forms.Label();
            this.txtAd = new System.Windows.Forms.TextBox();
            this.txtMail = new System.Windows.Forms.TextBox();
            this.txtPozisyon = new System.Windows.Forms.TextBox();
            this.btnEkle = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblAd
            // 
            this.lblAd.AutoSize = true;
            this.lblAd.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblAd.Location = new System.Drawing.Point(111, 49);
            this.lblAd.Name = "lblAd";
            this.lblAd.Size = new System.Drawing.Size(167, 32);
            this.lblAd.TabIndex = 0;
            this.lblAd.Text = "Çalışan Adı:";
            // 
            // lblMail
            // 
            this.lblMail.AutoSize = true;
            this.lblMail.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblMail.Location = new System.Drawing.Point(111, 116);
            this.lblMail.Name = "lblMail";
            this.lblMail.Size = new System.Drawing.Size(185, 32);
            this.lblMail.TabIndex = 1;
            this.lblMail.Text = "Çalışan Maili:";
            // 
            // lblPozisyon
            // 
            this.lblPozisyon.AutoSize = true;
            this.lblPozisyon.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblPozisyon.Location = new System.Drawing.Point(111, 183);
            this.lblPozisyon.Name = "lblPozisyon";
            this.lblPozisyon.Size = new System.Drawing.Size(257, 32);
            this.lblPozisyon.TabIndex = 2;
            this.lblPozisyon.Text = "Çalışan Pozisyonu:";
            // 
            // txtAd
            // 
            this.txtAd.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtAd.Location = new System.Drawing.Point(385, 43);
            this.txtAd.Name = "txtAd";
            this.txtAd.Size = new System.Drawing.Size(284, 38);
            this.txtAd.TabIndex = 3;
            // 
            // txtMail
            // 
            this.txtMail.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtMail.Location = new System.Drawing.Point(385, 110);
            this.txtMail.Name = "txtMail";
            this.txtMail.Size = new System.Drawing.Size(284, 38);
            this.txtMail.TabIndex = 4;
            // 
            // txtPozisyon
            // 
            this.txtPozisyon.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtPozisyon.Location = new System.Drawing.Point(385, 177);
            this.txtPozisyon.Name = "txtPozisyon";
            this.txtPozisyon.Size = new System.Drawing.Size(284, 38);
            this.txtPozisyon.TabIndex = 5;
            // 
            // btnEkle
            // 
            this.btnEkle.BackColor = System.Drawing.Color.PaleTurquoise;
            this.btnEkle.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnEkle.Location = new System.Drawing.Point(477, 273);
            this.btnEkle.Name = "btnEkle";
            this.btnEkle.Size = new System.Drawing.Size(214, 64);
            this.btnEkle.TabIndex = 6;
            this.btnEkle.Text = "EKLE";
            this.btnEkle.UseVisualStyleBackColor = false;
            this.btnEkle.Click += new System.EventHandler(this.btnEkle_Click);
            // 
            // CalisanEkle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.MintCream;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnEkle);
            this.Controls.Add(this.txtPozisyon);
            this.Controls.Add(this.txtMail);
            this.Controls.Add(this.txtAd);
            this.Controls.Add(this.lblPozisyon);
            this.Controls.Add(this.lblMail);
            this.Controls.Add(this.lblAd);
            this.Name = "CalisanEkle";
            this.Text = "CalisanEkle";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblAd;
        private System.Windows.Forms.Label lblMail;
        private System.Windows.Forms.Label lblPozisyon;
        private System.Windows.Forms.TextBox txtAd;
        private System.Windows.Forms.TextBox txtMail;
        private System.Windows.Forms.TextBox txtPozisyon;
        private System.Windows.Forms.Button btnEkle;
    }
}