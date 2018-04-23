# How to implement Sorting by Summary in OLAP mode


<p>The following example demonstrates how to implement <a href="https://documentation.devexpress.com/#AspNet/CustomDocument8456">Sorting by Summary</a> in OLAP mode.</p>
<p>In this example, values of the <strong>Semester</strong> field are sorted by the <strong>Australia | Bendigo</strong> column summary values. To do this, two sort conditions represented by <a href="https://documentation.devexpress.com/#CoreLibraries/clsDevExpressXtraPivotGridPivotGridFieldSortConditiontopic">PivotGridFieldSortCondition</a> instances are created. One of them represents an OLAP member that corresponds to the 'Australia' value, while another corresponds to the 'Bendigo' value. These sort conditions are added to the <strong>Semester</strong> field's <a href="https://documentation.devexpress.com/#CoreLibraries/DevExpressXtraPivotGridPivotGridFieldSortBySummaryInfo_Conditionstopic">PivotGridFieldBase.SortBySummaryInfo.Conditions</a> collection to specify the column by which <strong>Semester</strong> values should be sorted. A data field that identifies the column is specified via the <a href="https://documentation.devexpress.com/#CoreLibraries/DevExpressXtraPivotGridPivotGridFieldSortBySummaryInfo_Fieldtopic">PivotGridFieldBase.SortBySummaryInfo.Field</a> property.</p>
<p>OLAP members corresponding to the <strong>Australia</strong> and <strong>Bendigo</strong> values are obtained using the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_GetFieldValueOLAPMembertopic">ASPxPivotGrid.GetFieldValueOLAPMember</a> method. Note that OLAP members can be obtained only for visible field values. For this reason, the <strong>Australia</strong> field value is expanded before initializing OLAP members in order to obtain the <strong>Bendigo</strong> OLAP member.</p>
<p>This sample uses the <strong>Adventure Works</strong> cube.</p>

<br/>


