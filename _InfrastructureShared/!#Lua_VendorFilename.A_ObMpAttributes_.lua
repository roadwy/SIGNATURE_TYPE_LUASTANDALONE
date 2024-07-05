local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 <= 5 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["hiphandlers.dll"] = "mcafee"
L1_1["hiphandlers64.dll"] = "mcafee"
L1_1["kevlarsigs.dll"] = "mcafee"
L1_1["kevlarsigs64.dll"] = "mcafee"
L2_2 = L1_1[L0_0]
if L2_2 ~= nil then
  L2_2 = type
  L2_2 = L2_2(L1_1[L0_0])
  if L2_2 == "string" then
    L2_2 = "Lua:VendorFilename.A!"
    L2_2 = L2_2 .. L1_1[L0_0]
    mp.set_mpattribute(L2_2)
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
