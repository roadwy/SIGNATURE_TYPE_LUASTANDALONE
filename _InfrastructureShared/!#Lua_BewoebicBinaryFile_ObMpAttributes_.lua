local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_FILEPATH)
L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_FILEPATH))
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\appdata\\roaming\\bbwc\\", 1, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L1_1 = L1_1()
    if ".txt" ~= string.sub(L1_1, -4) then
      mp.set_mpattribute("Lua:BewoebicBinaryFile.A")
    else
      mp.set_mpattribute("Lua:BewoebicBinaryFile.B")
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
