# How to move an ASPxGridView row up or down a line by using external buttons


<p>This example shows how to move an ASPxGridView row by using the external “Up”/“Down” buttons.</p><p>When an end-user presses the “Up” or “Down” button, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_CustomCallbacktopic"><u>CustomCallback</u></a> event fires and the selected ASPxGridView row moves up or down a line respectively.</p><p>It can happen that an ASPxGridView callback is not finished but an end-user presses the “Up” or “Down” button again. In this case, you can use an array to store user actions. Then, when an ASPxGridView callback is finished, check this array and perform the next action.</p>

<br/>


