local L0_0
if this_sigattrlog[11].matched then
  L0_0 = string.lower(this_sigattrlog[11].utf8p2)
end
if L0_0 ~= nil and string.len(L0_0) > 3 then
  if string.find(L0_0, "googleupdate", 1, true) then
    return mp.CLEAN
  end
  if string.find(L0_0, " whoami", 1, true) or string.find(L0_0, " quser", 1, true) or string.find(L0_0, " nltest", 1, true) or (string.find(L0_0, "net user", 1, true) or string.find(L0_0, "net1 user", 1, true) or string.find(L0_0, "net.exe user", 1, true) or string.find(L0_0, "net1.exe user", 1, true)) and (string.find(L0_0, "2>&1", 1, true) or string.find(L0_0, "/add", 1, true)) or string.find(L0_0, "netlogon", 1, true) or string.find(L0_0, "attackiq wmi", 1, true) or string.find(L0_0, " vssadmin", 1, true) or string.find(L0_0, "schtasks", 1, true) or string.find(L0_0, "certutil", 1, true) or string.find(L0_0, "cacls", 1, true) or string.find(L0_0, "wevtutil", 1, true) or string.find(L0_0, "bitsadmin", 1, true) or string.find(L0_0, "taskmgr", 1, true) or string.find(L0_0, "robocopy", 1, true) or string.find(L0_0, "regsvr32", 1, true) or string.find(L0_0, "wget", 1, true) or string.find(L0_0, "accesschk", 1, true) or string.find(L0_0, "mshta", 1, true) or string.find(L0_0, "rundll32", 1, true) or string.find(L0_0, "cscript", 1, true) or string.find(L0_0, "wscript", 1, true) or string.find(L0_0, "xcopy", 1, true) or string.find(L0_0, "dsquery", 1, true) or string.find(L0_0, "makecab", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
