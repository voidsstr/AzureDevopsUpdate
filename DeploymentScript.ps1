Import-Module (Join-Path "." "EP.PowerShell.JiraDeployInfo") -Force
Update-AzureDeploymentInformation -State $Env:JIRA_STATE -EnvironmentType $Env:JIRA_ENVIRONMENT -JiraDomain $Env:JIRA_DOMAIN