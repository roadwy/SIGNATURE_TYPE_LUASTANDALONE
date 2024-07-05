local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
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
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
    L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if (string.sub(L2_2, -31) == "\\application data\\windowsupdate" or string.sub(L2_2, -30) == "\\appdata\\roaming\\windowsupdate") and L1_1 == "msupdate.exe" then
      mp.set_mpattribute("Lua:LethicFilename.A")
      return mp.INFECTED
    end
  end
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 == L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
    L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L1_1, -56, -44)
    if L2_2 == "recycler\\s-1-" then
      L2_2 = mp
      L2_2 = L2_2.set_mpattribute
      L2_2("Lua:LethicFilename.B")
      L2_2 = mp
      L2_2 = L2_2.INFECTED
      return L2_2
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
