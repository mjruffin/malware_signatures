rule Dyre1 
{
	meta:
		author = "Marcus Ruffin"
		yaraexchange = "Do Not Distribute"
		date = "2015-01"
		filetype = "PE"
		imphash = "e5bfaf9d9288ef8adda65c1ed5dff60e" 
		reference = "VirusTotal"
		
	strings:
	 
     		$mz = "MZ"
		$str1 = "RhDuse" nocase
            	$str2 = "JetAddColumn" nocase
            	$str3 = "CACloseCertType" nocase
            	$str4 = "certcli.dll" nocase
           
			
	condition:
	
		$mz at 0 and 3 of ($str1,$str2,$str3,$str4)
            	}
            
rule Dyre2
{
	meta:
    
    		author = "Marcus Ruffin"
		yaraexchange = "Do Not Distribute"
		date = "2015-01"
		filetype = "PE"
		imphash = "33e2107d589315886e239f043e91b418" 
		reference = "VirusTotal"
            
    strings:
    
    		$mz = "MZ"
    		$str1 = "BOLTY progect" wide nocase
            	$str2 = "Riched32.dll"nocase
            	$str3 = "Mivissini romi" nocase
            
    condition:
    		
            	all of them 
            	}
            
rule Dyre3
{
	meta:
    
    		author = "Marcus Ruffin"
		yaraexchange = "Do Not Distribute"
		date = "2015-01"
		filetype = "PE"
		mutex = "zx5fwtw4ep" 
		reference = "VirusTotal"
            
    strings:
    
    		$mz = "MZ"
            	$mutex_1 = "zx5fwtw4ep"
            
    condition:
    		
            	$mz at 0 and $mutex_1
            	}
