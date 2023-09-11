using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Concessionaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedItem.Value;
            Image1.ImageUrl = $"~/Content/assets/{selectedValue}";

            switch (selectedValue)
            {
                case "bmw.png":
                    Label1.Text = "40000 Euro";
                    break;

                case "mercedes.png":
                    Label1.Text = "25000 Euro";
                    break;
                case "porsche.png":
                    Label1.Text = "10 Euro";
                    break;
                case "lamborghini.png":
                    Label1.Text = "100000 Euro";
                    break;
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double carPrice = 0;
            double optionalPrice = 0;
            double garanzia = 0;
            double totalPrice = 0;

            string selectedCar = DropDownList1.SelectedItem.Value;
            switch (selectedCar)
            {
                case "bmw.png":
                    carPrice = 40000;
                    break;

                case "mercedes.png":
                    carPrice = 25000;
                    break;
                case "porsche.png":
                    carPrice = 10;
                    break;
                case "lamborghini.png":
                    carPrice = 100000;
                    break;
            }

            for (int i = 0; i < CheckBoxList1.Items.Count; i++) {
                if (CheckBoxList1.Items[i].Selected)
                {
                    optionalPrice += Convert.ToDouble(CheckBoxList1.Items[i].Value);
                }
            }

            garanzia = Convert.ToDouble(DropDownList2.SelectedItem.Value) * 120;

            totalPrice = carPrice + optionalPrice + garanzia;
            preventivo.Text = $" ${totalPrice}";
            costoAuto.Text = $" ${carPrice}";
            costoOptional.Text = $" ${optionalPrice}";
            costoGaranzia.Text = $" ${garanzia}";

        }
    }
}