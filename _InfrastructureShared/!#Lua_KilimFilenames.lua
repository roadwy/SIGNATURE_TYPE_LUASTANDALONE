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
  L1_1["arsiv.exe"] = true
  L1_1["chromenet.exe"] = true
  L1_1["chromium.exe"] = true
  L1_1["app.exe"] = true
  L1_1["winsnrnr.exe"] = true
  L1_1["denemeisim.exe"] = true
  L2_2 = {}
  L2_2["asdfghjklmn.exe"] = true
  L2_2["dwmvs.exe"] = true
  L2_2["tplmk.exe"] = true
  L2_2["goup.exe"] = true
  L2_2["per.zip"] = true
  L2_2["nod32.exe"] = true
  L2_2["google.exe"] = true
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if L1_1[string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))] then
    if string.sub(L3_3, -16) == "\\appdata\\roaming" or string.sub(L3_3, -17) == "\\application data" then
      return mp.INFECTED
    end
  elseif L2_2[string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))] and L3_3 == "c:\\windows" then
    return mp.INFECTED
  end
  if L3_3 == "c:" and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "debgr.txt" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "chrome1.exe") then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
