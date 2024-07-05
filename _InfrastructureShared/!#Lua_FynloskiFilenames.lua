local L0_0, L1_1, L2_2, L3_3
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
elseif L0_0 == L1_1 then
  L1_1 = {}
  L1_1["msdcsc.exe"] = true
  L1_1["mdcsc.exe"] = true
  L1_1["msdcs.exe"] = true
  L1_1["msdc.exe"] = true
  L1_1["IMDCSC.exe"] = true
  L1_1["IMJDC.exe"] = true
  L1_1["facecall.exe"] = true
  L1_1["svcost.exe"] = true
  L1_1["svhost.exe"] = true
  L1_1["sv_chost.exe"] = true
  L1_1["svhostss.exe"] = true
  L1_1["Profoma Invoice.exe"] = true
  L1_1["Profoma_Invoice.exe"] = true
  L1_1["monthlyreport.exe"] = true
  L1_1["ttpayment.scr"] = true
  L1_1["crypted server.exe"] = true
  L1_1["DCModule.exe"] = true
  L1_1["lssass.exe"] = true
  L1_1["DarkCommet.exe"] = true
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
  L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILENAME))
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if L1_1[L2_2] then
    if string.match(L3_3, "\\.-documents\\.+") or string.match(L3_3, "\\start menu\\.+") or string.match(L3_3, "\\programdata") or string.match(L3_3, "\\administrator\\application data") or string.match(L3_3, "\\appdata\\local") or string.match(L3_3, "\\appdata\\roaming") or string.match(L3_3, "\\desktop\\.+") or string.match(L3_3, "\\windows\\system32\\.+") or string.match(L3_3, "\\local settings\\application data") or string.match(L3_3, "\\local settings\\temp") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
