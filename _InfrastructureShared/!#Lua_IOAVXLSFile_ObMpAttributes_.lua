local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
L1_1 = #L0_0
if L1_1 < 5 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
if string.sub(L0_0, -5) == ".xlsb" then
  L1_1 = "XLSBFile"
elseif string.sub(L0_0, -5) == ".xltm" then
  L1_1 = "XLTMFile"
else
  return mp.CLEAN
end
if mp.get_mpattribute("RPF:TopLevelFile") then
  mp.set_mpattribute("Lua:IOAVTopLevel" .. L1_1)
  mp.set_mpattribute("//Lua:GIOAVTopLevel" .. L1_1)
elseif not mp.get_mpattribute("//Lua:GIOAVFirst" .. L1_1 .. "InContainer") then
  mp.set_mpattribute("Lua:IOAVFirst" .. L1_1 .. "InContainer")
  mp.set_mpattribute("//Lua:GIOAVFirst" .. L1_1 .. "InContainer")
end
return mp.CLEAN
