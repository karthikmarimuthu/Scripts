$baseUri = "https://octopus.ticketek.com.au"           # the address of your octopus server

$apiKey = "API-QS6HLD1XZ10K58Y1BFWE346GMM"           # an api-key from an account with permissions to create
                                             # variables on the environment you specify

$projectName = "BarcodeBlockingCore_Test" # If you don't know your project Id add your project name here
                              # and the script will print out your project Id on the first run,
                              # then you can add it below

$projectId = ""               # set this if you know it, the script will run faster if it has
                              # a projectId, otherwise it will look up the project using its name

$environment = "PROD-B"   # the name of the environment you want to scope the variables to

$variablesToAdd = "AlternatePortNo", "Application:ApiName", "Application:DefaultAcceptLanguageHeader", "Application:ErrorConfigFile", "Application:MaxMetricType", "Application:TagFormat", "AppPoolName", "Authentication:AuthorisationCache:Provider", "Authentication:AuthorisationCache:TTL", "Authentication:OAuth:AuthenticateEndPoint", "Authentication:OAuth:AuthenticateURL", "Authentication:OAuth:AuthoriseEndPoint", "Authentication:OAuth:AuthoriseURL", "Authentication:OAuth:ClientId", "Authentication:OAuth:ClientSecret", "Authentication:OAuth:DefaultAcceptMediaType", "Authentication:OAuth:Organisation", "Authentication:OAuth:ResourceID", "Authentication:OAuth:SystemUserId", "CF_StackName", "ConnectionStrings:LotusDbConnectionString", "Hostname", "IAMRole", "InstallDirectory", "LoggingDir", "Redis:Port", "stdoutLogEnabled", "stdoutLogFile", "VPCSecurityGroupIDs", "VPCSubnetIDs", "WebsiteName"  #all the variables you want to createe

function Get-OctopusResource([string]$uri) {
    Write-Host "[GET]: $uri"
    return Invoke-RestMethod -Method Get -Uri "$baseUri/$uri" -Headers $headers
}

function Put-OctopusResource([string]$uri, [object]$resource) {
    Write-Host "[PUT]: $uri"
    Invoke-RestMethod -Method Put -Uri "$baseUri/$uri" -Body $($resource | ConvertTo-Json -Depth 10) -Headers $headers
}

$headers = @{"X-Octopus-ApiKey" = $apiKey}

If(!$projectId){
    # if we don't have a project Id find the project by name
    $projects = Get-OctopusResource "/api/Projects/all" 
    $project = $projects | Where { $_.Name -eq $projectName -or $_.Slug -eq $projectName } | Select -First 1
    $projectId = $project.Id
    Write-Host your project Id is $project.Id
} Else {
    # look up the project by its Id
    # can also get by project 'slug' which for "Project Name" would be "project-name"
    $project = Get-OctopusResource "/api/Projects/$projectId" 
}

$variableSet = Get-OctopusResource $project.Links.Variables
$environmentObj = $variableSet.ScopeValues.Environments | Where { $_.Name -eq $environment } | Select -First 1

$variablesToAdd | ForEach-Object {
    $variable = @{
        Name = $_
        Value = "#### to be entered ####"
        Type = 'String'
        Scope = @{ 
            Environment = @(
                $environmentObj.Id
            )
        }
    }
    $variableSet.Variables += $variable
}

Put-OctopusResource $variableSet.Links.Self $variableSet