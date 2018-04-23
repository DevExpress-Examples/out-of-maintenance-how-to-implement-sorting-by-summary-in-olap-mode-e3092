using System;
using System.Web.UI;
using DevExpress.XtraPivotGrid;

namespace ASPxPivotGrid_OLAPSortBySummary {
    public partial class _Default : Page {
        protected override void OnInit(EventArgs e) {
            base.OnInit(e);
            ASPxPivotGrid1.OLAPConnectionString = "provider=MSOLAP;" + 
                "data source=http://demos.devexpress.com/Services/OLAP/msmdpump.dll;" + 
                "initial catalog='Adventure Works DW Standard Edition';cube name='Adventure Works'";
        }
        protected void ASPxPivotGrid1_Load(object sender, EventArgs e) {
            if (IsCallback || IsPostBack) return;

            // Expands the Australia column to be able to retrieve OLAP members 
            // that correspond to the nested columns.
            ASPxPivotGrid1.ExpandValue(true, new object[] { "Australia" });

            // Obtains OLAP members corresponding to the Australia and Bendigo values.
            IOLAPMember countryMember = ASPxPivotGrid1.GetFieldValueOLAPMember(fieldCountry, 0);
            IOLAPMember cityMember = ASPxPivotGrid1.GetFieldValueOLAPMember(fieldCity, 0);

            // Exits if the OLAP members were not obtained successfully.
            if (countryMember == null || cityMember == null)
                return;

            // Specifies a data field whose summary values should be used to sort values
            // of the Month field.
            fieldMonth.SortBySummaryInfo.Field = fieldSales;

            // Specifies a column by which the Month field values should be sorted.
            fieldMonth.SortBySummaryInfo.Conditions.Clear();
            fieldMonth.SortBySummaryInfo.Conditions.Add(
                new PivotGridFieldSortCondition(fieldCountry, "Australia", countryMember.UniqueName));
            fieldMonth.SortBySummaryInfo.Conditions.Add(
                new PivotGridFieldSortCondition(fieldCity, "Bendigo", cityMember.UniqueName));
        }
    }
}
