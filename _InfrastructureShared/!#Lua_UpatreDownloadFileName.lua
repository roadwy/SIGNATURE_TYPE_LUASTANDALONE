local L0_0, L1_1, L2_2
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
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
  if L2_2 == "realupdater.exe" and string.sub(L1_1, -5) == "\\temp" then
    mp.set_mpattribute("Lua:UpatreDownloadFileName.C")
  elseif L2_2 == "opera_autoupdater.exe" and string.sub(L1_1, -5) == "\\temp" then
    mp.set_mpattribute("Lua:UpatreDownloadFileName.D")
  elseif (string.sub(L2_2, -4) == ".txt" or string.sub(L2_2, -4) == ".tip" or string.sub(L2_2, -4) == ".pdd" or string.sub(L2_2, -4) == ".exe" or string.sub(L2_2, -4) == ".but" or string.sub(L2_2, -4) == ".pic" or string.sub(L2_2, -4) == ".enc" or string.sub(L2_2, -4) == ".dat" or string.sub(L2_2, -4) == ".z12" or string.sub(L2_2, -4) == ".mp3" or string.sub(L2_2, -4) == ".big" or string.sub(L2_2, -4) == ".din" or string.sub(L2_2, -4) == ".in1" or string.sub(L2_2, -4) == ".fla" or string.sub(L2_2, -4) == ".gik" or string.sub(L2_2, -4) == ".pin" or string.sub(L2_2, -4) == ".fb2" or string.sub(L2_2, -4) == ".ssa" or string.sub(L2_2, -4) == ".elf" or string.sub(L2_2, -4) == ".wix" or string.sub(L2_2, -4, -2) == ".bf") and headerpage[1] == 90 and headerpage[2] == 90 and headerpage[3] == 80 and headerpage[4] == 0 then
    mp.set_mpattribute("Lua:UpatreDownloadFileName!enc")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
