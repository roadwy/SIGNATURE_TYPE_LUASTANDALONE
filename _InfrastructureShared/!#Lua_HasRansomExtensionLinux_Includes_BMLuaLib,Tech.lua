local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_FULL
L0_0 = L0_0(L1_1)
if L0_0 ~= nil and L0_0 ~= "" then
  L1_1 = #L0_0
elseif L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "([^/]+)$"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "(%.[^%.%s]+)%s*$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = ""
  L2_2 = L3_3 or L2_2
end
if L2_2 ~= "" then
  L3_3 = {}
  L3_3["._locked"] = true
  L3_3[".akira"] = true
  L3_3[".avos"] = true
  L3_3[".avos2"] = true
  L3_3[".avoslinux"] = true
  L3_3[".avos2j"] = true
  L3_3[".ifire"] = true
  L3_3[".kitty"] = true
  L3_3[".basta"] = true
  L3_3[".blackbyte"] = true
  L3_3[".blacksuit"] = true
  L3_3[".cerber"] = true
  L3_3[".cerber2"] = true
  L3_3[".cerber3"] = true
  L3_3[".conti"] = true
  L3_3[".cryptolocker"] = true
  L3_3[".coaq"] = true
  L3_3[".cosakos"] = true
  L3_3[".cuba"] = true
  L3_3[".cymcrypt"] = true
  L3_3[".dark_power"] = true
  L3_3[".devil"] = true
  L3_3[".dharma"] = true
  L3_3[".eight"] = true
  L3_3[".encryptedyourfiles"] = true
  L3_3[".enigma"] = true
  L3_3[".everest"] = true
  L3_3[".fargo"] = true
  L3_3[".foty"] = true
  L3_3[".fs0ciety"] = true
  L3_3[".gatz"] = true
  L3_3[".gazprom"] = true
  L3_3[".hack0"] = true
  L3_3[".itlock3"] = true
  L3_3[".itlock4"] = true
  L3_3[".jyos"] = true
  L3_3[".karma"] = true
  L3_3[".kigatsu"] = true
  L3_3[".kitz"] = true
  L3_3[".l0cked"] = true
  L3_3[".lockbit"] = true
  L3_3[".locky"] = true
  L3_3[".mallox"] = true
  L3_3[".malox"] = true
  L3_3[".medusa"] = true
  L3_3[".met@n"] = true
  L3_3[".neqp"] = true
  L3_3[".niwm"] = true
  L3_3[".nokonoko"] = true
  L3_3[".nokoyawa"] = true
  L3_3[".pandora"] = true
  L3_3[".play"] = true
  L3_3[".proton"] = true
  L3_3[".qotr"] = true
  L3_3[".quantum"] = true
  L3_3[".ranzylocked"] = true
  L3_3[".rook"] = true
  L3_3[".royal"] = true
  L3_3[".royal_w"] = true
  L3_3[".royal_u"] = true
  L3_3[".rsnslocked"] = true
  L3_3[".shino"] = true
  L3_3[".thor"] = true
  L3_3[".tury"] = true
  L3_3[".venus"] = true
  L3_3[".v-society"] = true
  L3_3[".weon"] = true
  L3_3[".wikon"] = true
  L3_3[".wncry"] = true
  L3_3[".wncryt"] = true
  L3_3[".zatp"] = true
  L3_3[".zepto"] = true
  L4_4 = L2_2.lower
  L4_4 = L4_4(L2_2)
  L2_2 = L4_4
  L4_4 = L3_3[L2_2]
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L4_4 = L4_4(mp.CONTEXT_DATA_PROCESS_PPID)
    if L4_4 then
      MpCommon.BmTriggerSig(L4_4, "BM_HasRansomExtensionLinux", L0_0)
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
