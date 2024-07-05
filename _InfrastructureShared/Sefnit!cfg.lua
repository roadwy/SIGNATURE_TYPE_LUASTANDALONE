if string.find(Remediation.Threat.Name, "Win32/Sefnit!cfg", 1, true) >= 0 and sysio.GetCommandLineFromService("tor") == "\"C:\\Program Files\\Tor\\tor.exe\" --nt-service \"-ControlPort\" \"9051\"" then
  sysio.DeleteService("tor")
end
