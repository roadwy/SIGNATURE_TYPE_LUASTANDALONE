local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = safeJsonDeserialize
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.appended_ext
L2_2 = L2_2 or nil
if not L2_2 then
  return mp.CLEAN
end
bm.trigger_sig("GenericRansomware:Extension", L2_2)
bm.add_related_string("GenericRansomware_Extension", L2_2, bm.RelatedStringBMReport)
if ({
  ["._locked"] = true,
  [".akira"] = true,
  [".avos"] = true,
  [".avos2"] = true,
  [".babuk2"] = true,
  [".basta"] = true,
  [".blackbyte"] = true,
  [".blacksuit"] = true,
  [".cerber"] = true,
  [".cerber2"] = true,
  [".cerber3"] = true,
  [".ciop"] = true,
  [".cryptolocker"] = true,
  [".coaq"] = true,
  [".cosakos"] = true,
  [".cuba"] = true,
  [".cymcrypt"] = true,
  [".dark_power"] = true,
  [".devil"] = true,
  [".dharma"] = true,
  [".eight"] = true,
  [".encryptedyourfiles"] = true,
  [".enigma"] = true,
  [".everest"] = true,
  [".fargo"] = true,
  [".foty"] = true,
  [".fs0ciety"] = true,
  [".gatz"] = true,
  [".gazprom"] = true,
  [".hack0"] = true,
  [".itlock3"] = true,
  [".itlock4"] = true,
  [".jyos"] = true,
  [".karma"] = true,
  [".kigatsu"] = true,
  [".kitz"] = true,
  [".l0cked"] = true,
  [".lockbit"] = true,
  [".locky"] = true,
  [".mallox"] = true,
  [".malox"] = true,
  [".medusa"] = true,
  [".met@n"] = true,
  [".neqp"] = true,
  [".niwm"] = true,
  [".nokonoko"] = true,
  [".nokoyawa"] = true,
  [".pandora"] = true,
  [".play"] = true,
  [".proton"] = true,
  [".qotr"] = true,
  [".quantum"] = true,
  [".ranzylocked"] = true,
  [".rook"] = true,
  [".royal"] = true,
  [".royal_w"] = true,
  [".rsnslocked"] = true,
  [".shino"] = true,
  [".thor"] = true,
  [".tury"] = true,
  [".venus"] = true,
  [".v-society"] = true,
  [".weon"] = true,
  [".wikon"] = true,
  [".wncry"] = true,
  [".wncryt"] = true,
  [".zatp"] = true,
  [".zepto"] = true,
  [".rhysida"] = true,
  [".nukrypt"] = true,
  [".__nist_k571__"] = true
})[L2_2] == true then
  return mp.INFECTED
end
return mp.CLEAN
