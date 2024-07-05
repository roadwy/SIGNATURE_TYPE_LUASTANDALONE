local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_FILENAME)
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == nil or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "" then
  return mp.CLEAN
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "powershell.exe" then
  if string.lower(string.match(L1_1, "(%.[^%.]+)$")) ~= ".ps1" then
    return mp.CLEAN
  end
else
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "cscript.exe" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "wscript.exe" then
    return mp.CLEAN
  end
  if string.lower(string.match(L1_1, "(%.[^%.]+)$")) ~= ".js" and string.lower(string.match(L1_1, "(%.[^%.]+)$")) ~= ".vbs" then
    return mp.CLEAN
  end
end
if mp.get_mpattribute("ObfuscatedScriptA") then
  mp.ReportLowfi(mp.getfilename(), 322486843)
elseif mp.get_mpattribute("ObfuscatedScriptB") then
  mp.ReportLowfi(mp.getfilename(), 2318504833)
elseif mp.get_mpattribute("ObfuscatedScriptC") then
  mp.ReportLowfi(mp.getfilename(), 4248216343)
elseif mp.get_mpattribute("ObfuscatedScriptD") then
  mp.ReportLowfi(mp.getfilename(), 1666332340)
else
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
return mp.INFECTED
