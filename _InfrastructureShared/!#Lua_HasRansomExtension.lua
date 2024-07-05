local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if not L0_0 or L0_0 == "" then
  return mp.CLEAN
end
L0_0 = L0_0:lower()
L0_0 = L0_0:match("([^%\\]+)$")
if not L0_0 or L0_0 == "" then
  return mp.CLEAN
end
if L0_0:match("%.[^%.]+(%.[^%.]+)$") == nil then
end
if ("" or L0_0:match("%.[^%.]+(%.[^%.]+)$")) ~= "" then
  if ({
    ["._locked"] = true,
    [".akira"] = true,
    [".basta"] = true,
    [".blackbyte"] = true,
    [".blacksuit"] = true,
    [".cerber"] = true,
    [".cerber2"] = true,
    [".cerber3"] = true,
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
    [".zepto"] = true
  })["" or L0_0:match("%.[^%.]+(%.[^%.]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
