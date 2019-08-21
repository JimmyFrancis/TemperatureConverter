/**
 * Lab 1 ASP.NET
 * Temperature Converter Web Appliction
 * By James Francis
 * July 2019
 * */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemperatureConverter
{
    // Celsius to Kelvin : [K] = [°C] + 273.15
    // Kelvin to Celsius : [°C] = [K] − 273.15
    // Fahrenheit to Kelvin : [K] = ([°F] + 459.67) × 5⁄9
    // Kelvin to Fahrenheit : [°F] = [K] × 9⁄5 − 459.67
    public partial class Default : System.Web.UI.Page
    {
        const double KELVIN = 273.15;
        const double F_KELVIN = 459.67;
        const double FAHR = 32;
        protected void Page_Load(object sender, EventArgs e)
        {
            //turn off unobtrusive validation
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnClear_Click(object sender, EventArgs e) //clear controls
        {
            ddlFrom.SelectedIndex = 0;
            ddlTo.SelectedIndex = 0;
            txtTemp.Text = "";
            lblResult.Text = "";
          //  txtTemp.Focus();
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double inputTemp = Convert.ToDouble(txtTemp.Text);
            double resultTemp = 0;

            switch (ddlTo.SelectedItem.ToString())
            {
                case "Celsius": //convert to Celsius
                    switch (ddlFrom.SelectedItem.ToString())
                    {
                        case "Fahrenheit":
                            resultTemp = (inputTemp - FAHR) * 5 / 9;
                            break;

                        case "Celsius":
                            resultTemp = inputTemp; 
                            break;

                        case "Kelvin":
                            resultTemp = inputTemp - KELVIN;
                            break;
                    }
                    lblResult.Text = resultTemp.ToString("n2") + " " + (char)176 + "C";
                    break;
                    
                case "Fahrenheit": //convert to Fahrenheit
                    switch (ddlFrom.SelectedItem.ToString())
                    {
                        case "Fahrenheit":
                            resultTemp = inputTemp;
                            break;

                        case "Celsius":
                            resultTemp = inputTemp * 1.8 + 32;
                            break;

                        case "Kelvin":
                            resultTemp = (inputTemp * 9 / 5) - F_KELVIN;
                            break;
                    }
                    lblResult.Text = resultTemp.ToString("n2") + " " + (char)176 + "F";
                    break;

                case "Kelvin": //convert to Kelvin
                    switch (ddlFrom.SelectedItem.ToString())
                    {
                        case "Fahrenheit":
                            resultTemp = ((inputTemp - FAHR) * 5 / 9) + KELVIN;
                            resultTemp = (inputTemp + F_KELVIN) * 5 / 9;
                            break;

                        case "Celsius":
                            resultTemp = inputTemp + KELVIN;
                            break;

                        case "Kelvin":
                            resultTemp = inputTemp;
                            break;
                    }
                    lblResult.Text = resultTemp.ToString("n2") + " K";
                    break;
            }


        }

        
    }
}

