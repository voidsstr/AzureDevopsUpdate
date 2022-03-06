function Find-JiraIDs {
    param (
        $message
    )
    $pattern = '\w{2,10}-\d{1,4}'
    $values = [regex]::Matches($message, $pattern) | Select-Object value 
    Write-Output ("[JIRA IDs] " + $values)
    $values
}
