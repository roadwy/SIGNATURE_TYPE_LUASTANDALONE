local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 11534336 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONOPEN
if L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L1_1 == L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = MpCommon
  L3_3 = L3_3.PathToWin32Path
  L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  L2_2 = L2_2(L3_3, L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)))
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
  if L3_3 == "mpc-hc.exe" or L3_3 == "skytel.exe" or L3_3 == "clownfish.exe" or L3_3 == "csrskype.exe" or L3_3 == "livesupport.exe" or L3_3 == "mpl.exe" or L3_3 == "pamela.exe" or L3_3 == "mpc-hc_nvo.exe" or L3_3 == "livesupport_setup.exe" or L3_3 == "ezgamexn.dll" or L3_3 == "skype4com.dll" or L3_3 == "livesupport_setup.exe" or string.sub(L3_3, -4) == ".wim" or string.sub(L3_3, -4) == ".iso" or string.sub(L3_3, -4) == ".cab" then
    return mp.CLEAN
  end
  if string.find(L2_2, "program files", 1, true) ~= nil or string.find(L2_2, "hp", 1, true) ~= nil or string.find(L2_2, "acer", 1, true) ~= nil or string.find(L2_2, "compaq", 1, true) ~= nil or string.find(L2_2, "broadcom", 1, true) ~= nil or string.find(L2_2, "isos", 1, true) ~= nil or string.find(L2_2, "realtek", 1, true) ~= nil or string.find(L2_2, "lenovo", 1, true) ~= nil or string.find(L2_2, "bluetooth", 1, true) ~= nil or string.find(L2_2, "driver", 1, true) ~= nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
