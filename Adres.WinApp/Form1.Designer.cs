namespace Adres.WinApp
{
    partial class Form1
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
            this.drp_Sehir = new System.Windows.Forms.ComboBox();
            this.drp_Ilce = new System.Windows.Forms.ComboBox();
            this.lst_Kisi = new System.Windows.Forms.ListBox();
            this.lbl_Adi = new System.Windows.Forms.Label();
            this.lbl_Soyadi = new System.Windows.Forms.Label();
            this.lbl_Adres = new System.Windows.Forms.Label();
            this.lbl_Konum = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // drp_Sehir
            // 
            this.drp_Sehir.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.drp_Sehir.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.drp_Sehir.FormattingEnabled = true;
            this.drp_Sehir.Location = new System.Drawing.Point(36, 389);
            this.drp_Sehir.Name = "drp_Sehir";
            this.drp_Sehir.Size = new System.Drawing.Size(237, 32);
            this.drp_Sehir.Sorted = true;
            this.drp_Sehir.TabIndex = 0;
            this.drp_Sehir.SelectedIndexChanged += new System.EventHandler(this.drp_Sehir_SelectedIndexChanged);
            // 
            // drp_Ilce
            // 
            this.drp_Ilce.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.drp_Ilce.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.drp_Ilce.FormattingEnabled = true;
            this.drp_Ilce.Location = new System.Drawing.Point(279, 389);
            this.drp_Ilce.Name = "drp_Ilce";
            this.drp_Ilce.Size = new System.Drawing.Size(237, 32);
            this.drp_Ilce.TabIndex = 1;
            // 
            // lst_Kisi
            // 
            this.lst_Kisi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lst_Kisi.FormattingEnabled = true;
            this.lst_Kisi.ItemHeight = 20;
            this.lst_Kisi.Location = new System.Drawing.Point(36, 56);
            this.lst_Kisi.Name = "lst_Kisi";
            this.lst_Kisi.Size = new System.Drawing.Size(237, 284);
            this.lst_Kisi.TabIndex = 2;
            this.lst_Kisi.SelectedIndexChanged += new System.EventHandler(this.lst_Kisi_SelectedIndexChanged);
            // 
            // lbl_Adi
            // 
            this.lbl_Adi.AutoSize = true;
            this.lbl_Adi.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lbl_Adi.Location = new System.Drawing.Point(293, 66);
            this.lbl_Adi.Name = "lbl_Adi";
            this.lbl_Adi.Size = new System.Drawing.Size(70, 25);
            this.lbl_Adi.TabIndex = 3;
            this.lbl_Adi.Text = "label1";
            // 
            // lbl_Soyadi
            // 
            this.lbl_Soyadi.AutoSize = true;
            this.lbl_Soyadi.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lbl_Soyadi.Location = new System.Drawing.Point(293, 121);
            this.lbl_Soyadi.Name = "lbl_Soyadi";
            this.lbl_Soyadi.Size = new System.Drawing.Size(70, 25);
            this.lbl_Soyadi.TabIndex = 4;
            this.lbl_Soyadi.Text = "label2";
            // 
            // lbl_Adres
            // 
            this.lbl_Adres.AutoSize = true;
            this.lbl_Adres.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lbl_Adres.Location = new System.Drawing.Point(294, 168);
            this.lbl_Adres.Name = "lbl_Adres";
            this.lbl_Adres.Size = new System.Drawing.Size(70, 25);
            this.lbl_Adres.TabIndex = 5;
            this.lbl_Adres.Text = "label3";
            // 
            // lbl_Konum
            // 
            this.lbl_Konum.AutoSize = true;
            this.lbl_Konum.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lbl_Konum.Location = new System.Drawing.Point(296, 221);
            this.lbl_Konum.Name = "lbl_Konum";
            this.lbl_Konum.Size = new System.Drawing.Size(70, 25);
            this.lbl_Konum.TabIndex = 6;
            this.lbl_Konum.Text = "label4";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.lbl_Konum);
            this.Controls.Add(this.lbl_Adres);
            this.Controls.Add(this.lbl_Soyadi);
            this.Controls.Add(this.lbl_Adi);
            this.Controls.Add(this.lst_Kisi);
            this.Controls.Add(this.drp_Ilce);
            this.Controls.Add(this.drp_Sehir);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox drp_Sehir;
        private System.Windows.Forms.ComboBox drp_Ilce;
        private System.Windows.Forms.ListBox lst_Kisi;
        private System.Windows.Forms.Label lbl_Adi;
        private System.Windows.Forms.Label lbl_Soyadi;
        private System.Windows.Forms.Label lbl_Adres;
        private System.Windows.Forms.Label lbl_Konum;
    }
}

