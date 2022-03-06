function Get-AtlassianCloudId {
    param (
        [string]
        $JiraDomain
    )
    $response = Invoke-RestMethod -uri "https://$JiraDomain/_edge/tenant_info"
    Write-Output ("[JIRA CLOUD RESPONSE] " + $response)
    Write-Output ("[JIRA CLOUD ID] " + $response.cloudId)
    $response.cloudId
}
