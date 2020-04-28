#Have to Install the ComputerManagementDsc module first!
Configuration SampleConfig
{
    Import-DscResource -ModuleName ComputerManagementDsc

    Node localhost

	{

	File InvokeDownload{
	  DestinationPath = "C:\Users\vm01-01\Desktop\hello.ps1"
	  Ensure = "Present"
	  Contents = "writing text to this file"
	}
	
	}


}
