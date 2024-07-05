local L0_0, L1_1
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FNAME))
L0_0 = L1_1
if L0_0 ~= nil then
  L1_1 = {}
  L1_1["flashplayer_setup.exe"] = ""
  if L1_1[L0_0] ~= nil then
    mp.set_mpattribute("Lua:FlashPlayerSetupFilename.A")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
