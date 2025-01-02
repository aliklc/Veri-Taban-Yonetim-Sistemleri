namespace Proje_Ödevi
{
    partial class ÇalışanGüncelle
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
            this.lblYeniAd = new System.Windows.Forms.Label();
            this.lblYeniMail = new System.Windows.Forms.Label();
            this.lblYeniPozisyon = new System.Windows.Forms.Label();
            this.txtYeniAd = new System.Windows.Forms.TextBox();
            this.txtYeniPozisyon = new System.Windows.Forms.TextBox();
            this.txtYeniMail = new System.Windows.Forms.TextBox();
            this.btnGüncelle = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblYeniAd
            // 
            this.lblYeniAd.AutoSize = true;
            this.lblYeniAd.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblYeniAd.Location = new System.Drawing.Point(80, 59);
            this.lblYeniAd.Name = "lblYeniAd";
            this.lblYeniAd.Size = new System.Drawing.Size(167, 32);
            this.lblYeniAd.TabIndex = 0;
            this.lblYeniAd.Text = "Çalışan Adı:";
            // 
            // lblYeniMail
            // 
            this.lblYeniMail.AutoSize = true;
            this.lblYeniMail.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblYeniMail.Location = new System.Drawing.Point(80, 135);
            this.lblYeniMail.Name = "lblYeniMail";
            this.lblYeniMail.Size = new System.Drawing.Size(185, 32);
            this.lblYeniMail.TabIndex = 1;
            this.lblYeniMail.Text = "Çalışan Maili:";
            // 
            // lblYeniPozisyon
            // 
            this.lblYeniPozisyon.AutoSize = true;
            this.lblYeniPozisyon.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblYeniPozisyon.Location = new System.Drawing.Point(80, 217);
            this.lblYeniPozisyon.Name = "lblYeniPozisyon";
            this.lblYeniPozisyon.Size = new System.Drawing.Size(257, 32);
            this.lblYeniPozisyon.TabIndex = 2;
            this.lblYeniPozisyon.Text = "Çalışan Pozisyonu:";
            // 
            // txtYeniAd
            // 
            this.txtYeniAd.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtYeniAd.Location = new System.Drawing.Point(353, 53);
            this.txtYeniAd.Name = "txtYeniAd";
            this.txtYeniAd.Size = new System.Drawing.Size(281, 38);
            this.txtYeniAd.TabIndex = 3;
            // 
            // txtYeniPozisyon
            // 
            this.txtYeniPozisyon.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtYeniPozisyon.Location = new System.Drawing.Point(353, 211);
            this.txtYeniPozisyon.Name = "txtYeniPozisyon";
            this.txtYeniPozisyon.Size = new System.Drawing.Size(281, 38);
            this.txtYeniPozisyon.TabIndex = 4;
            // 
            // txtYeniMail
            // 
            this.txtYeniMail.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtYeniMail.Location = new System.Drawing.Point(353, 129);
            this.txtYeniMail.Name = "txtYeniMail";
            this.txtYeniMail.Size = new System.Drawing.Size(281, 38);
            this.txtYeniMail.TabIndex = 5;
            // 
            // btnGüncelle
            // 
            this.btnGüncelle.BackColor = System.Drawing.Color.PaleTurquoise;
            this.btnGüncelle.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGüncelle.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnGüncelle.Location = new System.Drawing.Point(593, 341);
            this.btnGüncelle.Name = "btnGüncelle";
            this.btnGüncelle.Size = new System.Drawing.Size(179, 76);
            this.btnGüncelle.TabIndex = 6;
            this.btnGüncelle.Text = "Güncelle";
            this.btnGüncelle.UseVisualStyleBackColor = false;
            this.btnGüncelle.Click += new System.EventHandler(this.btnGüncelle_Click);
            // 
            // ÇalışanGüncelle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.MintCream;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnGüncelle);
            this.Controls.Add(this.txtYeniMail);
            this.Controls.Add(this.txtYeniPozisyon);
            this.Controls.Add(this.txtYeniAd);
            this.Controls.Add(this.lblYeniPozisyon);
            this.Controls.Add(this.lblYeniMail);
            this.Controls.Add(this.lblYeniAd);
            this.Name = "ÇalışanGüncelle";
            this.Text = "ÇalışanGüncelle";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblYeniAd;
        private System.Windows.Forms.Label lblYeniMail;
        private System.Windows.Forms.Label lblYeniPozisyon;
        private System.Windows.Forms.TextBox txtYeniAd;
        private System.Windows.Forms.TextBox txtYeniPozisyon;
        private System.Windows.Forms.TextBox txtYeniMail;
        private System.Windows.Forms.Button btnGüncelle;
    }
}