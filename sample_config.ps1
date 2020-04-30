#Have to Install the ComputerManagementDsc module first!
Configuration SampleConfig
{
    Import-DscResource -ModuleName ComputerManagementDsc

    Node localhost
    	{
	  File InvokeDownload{
	  # Replace with your own path
	  DestinationPath = "C:\hello.ps1"
	  Ensure = "Present"
	  Contents = "writing text to this file"
	}
	
    }

}
