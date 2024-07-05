local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L0_0 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L0_0 = L2_2.utf8p2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[4]
          L0_0 = L2_2.utf8p2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[5]
            L0_0 = L2_2.utf8p2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.utf8p2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[6]
              L0_0 = L2_2.utf8p2
            end
          end
        end
      end
    end
  end
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = {
  L3_3,
  L4_4,
  "support.csolve.net",
  "lt.tech-keys.com",
  "myusername_$env:username",
  "ndc support portal",
  "function run-server()"
}
L3_3 = "08f1b3ac-3ee3-4346-8c37-bd72a6093855"
L4_4 = "servicedesk.atera.com"
L3_3 = contains
L4_4 = L0_0
L3_3 = L3_3(L4_4, L2_2)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  L4_4,
  "hidden -encodedcommand",
  "export-registry",
  "compress-archive",
  "wget -uri",
  "curl -uri",
  "curl -sko",
  "ipconfig /all",
  "& start /b",
  "start msiexec /q /i",
  "whoami",
  "net user",
  "net group",
  "localgroup administrators",
  "dsquery",
  "samaccountname=",
  "query session",
  "adscredentials",
  "o365accountconfiguration",
  "-dumpmode",
  "-ssh",
  "usoprivate",
  "usoshared",
  "invoke-expression",
  "downloadstring",
  "downloadfile",
  "frombase64string",
  "system.io.compression",
  "system.io.memorystream",
  "iex ",
  "iex(",
  "invoke-webrequest",
  "iwr -uri",
  "set-mppreference",
  "add-mppreference",
  "certutil",
  "bitsadmin",
  "mshta",
  " -ssh ",
  "putty.exe",
  "ftp.exe",
  "e:jscript",
  "e:vbscript",
  "start msiexec /q /i",
  "nslookup"
}
L4_4 = "System.DirectoryServices.ActiveDirectory.Domain"
L4_4 = {
  "-command.*curl",
  "localgroup Administrators.*/add",
  "reg add.*disableantispyware.*\\microsoft\\windows defender\\",
  "reg add.*DisableRestrictedAdmin.*CurrentControlSet\\Control\\Lsa"
}
if contains(L1_1, {
  "powershell.exe",
  "pwsh.exe",
  "cmd.exe"
}) then
  if contains(L0_0, L3_3) then
    return mp.INFECTED
  end
  if contains(L0_0, L4_4, false) then
    return mp.INFECTED
  end
  if contains(L0_0, "nltest") and contains(L0_0, {
    "domain_trusts",
    "dclist",
    "all_trusts"
  }) then
    return mp.INFECTED
  end
  if contains(L0_0, "lsass") and contains(L0_0, {
    "procdump",
    "tasklist",
    "findstr"
  }) then
    return mp.INFECTED
  end
end
if contains(L1_1, {
  "mshta.exe",
  "wget.exe",
  "curl.exe"
}) and contains(L0_0, "http") then
  return mp.INFECTED
end
return mp.CLEAN
