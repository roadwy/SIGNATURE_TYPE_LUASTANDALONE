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
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L1_1 = L1_1(mp.CONTEXT_DATA_FILENAME)
    if string.find(L1_1, "%w+[:]%w+%.%w+$") ~= nil then
      if ({
        [".cpl"] = "",
        [".exe"] = "",
        [".dll"] = "",
        [".scr"] = "",
        [".pif"] = "",
        [".jse"] = "",
        [".vbs"] = "",
        [".vbe"] = "",
        [".ps1"] = ""
      })[string.lower(string.sub(L1_1, -4))] then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
