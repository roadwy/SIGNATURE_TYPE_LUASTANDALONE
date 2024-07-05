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
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if L1_1:sub(-42, -8) == "\\local settings\\application data\\kb" or L1_1:sub(-24, -8) == "\\appdata\\local\\kb" then
    L1_1 = L1_1:sub(-9)
    if L1_1 == string.lower(string.sub(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME), 0, -5)) then
      mp.set_mpattribute("Lua:Kovter.A")
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
