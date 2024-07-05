local L0_0, L1_1
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FNAME))
L0_0 = L1_1
if L0_0 ~= nil then
  L1_1 = {}
  L1_1["archer.dll"] = ""
  L1_1["archer.dllex.dll"] = ""
  L1_1["gubedzl.dll"] = ""
  L1_1["kitty.dll"] = ""
  L1_1["kyubey.exe"] = ""
  L1_1["lancer.dll"] = ""
  L1_1["qqbrowserframe.dll"] = ""
  L1_1["ppva.dll"] = ""
  L1_1["yacqq.dll"] = ""
  L1_1["yacqq.exe"] = ""
  if L1_1[L0_0] ~= nil then
    mp.set_mpattribute("Lua:SasquorFileName.A")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
