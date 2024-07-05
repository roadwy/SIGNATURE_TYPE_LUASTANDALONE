local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
  L2_2 = L1_1.find
  L2_2 = L2_2(L1_1, "\\downloads", 1, true)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if L2_2:len() > 4 and string.sub(L2_2, -4) == ".hta" then
      if L1_1:find("\\downloads\\toolbox", 1, true) or L1_1:find("appdata", 1, true) or L1_1:find("programdata", 1, true) or L1_1:find("\\mf.+mfdriver") then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
