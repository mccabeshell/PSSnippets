#Put this at the start of your script & give the variable a meaningful name
#$StringBuilder is an example name, use something specific and meaningful e.g. $ErrorListString
$StringBuilder = New-Object System.Text.StringBuilder
$Computer = 'localhost'
$ErrorMessage = 'Unknown Error'

#End line by piping to Out-Null, try this example to see why
$StringBuilder.Append("$Computer - $ErrorMessage<br>")

#If using HTML, for example in an email
$StringBuilder.Append("$Computer - $ErrorMessage<br>") | Out-Null

#If not using html, for instance writing out to a text file
$StringBuilder.AppendLine("$Computer - $ErrorMessage") | Out-Null

#When you want to use the string, use the ToString() method
$EmailBody = "This email tells you about errors, here they are:<br>"
$EmailBody += $StringBuilder.ToString() # don't use out-null here, you want it to output into your variable
$EmailBody

# Its a good idea to clear and set to null if you are testing a script
$StringBuilder.Clear() | Out-Null
$StringBuilder = $null