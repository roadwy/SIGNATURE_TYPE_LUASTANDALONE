local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if StringEndsWith(L0_0, "microsoft office (x86)\\templates") or StringEndsWith(L0_0, "microsoft office\\templates") or StringEndsWith(L0_0, "microsoft office\\root\\templates") then
  mp.set_mpattribute("Lua:Context/NewExcelInTemplates")
end
return mp.CLEAN
