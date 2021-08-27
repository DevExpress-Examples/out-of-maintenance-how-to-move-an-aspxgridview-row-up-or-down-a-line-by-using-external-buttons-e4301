<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128541776/12.1.7%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4301)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to move an ASPxGridView row up or down a line by using external buttons
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4301/)**
<!-- run online end -->


<p>This example shows how to move an ASPxGridView row by using the external “Up”/“Down” buttons.</p><p>When an end-user presses the “Up” or “Down” button, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_CustomCallbacktopic"><u>CustomCallback</u></a> event fires and the selected ASPxGridView row moves up or down a line respectively.</p><p>It can happen that an ASPxGridView callback is not finished but an end-user presses the “Up” or “Down” button again. In this case, you can use an array to store user actions. Then, when an ASPxGridView callback is finished, check this array and perform the next action.</p>

<br/>


