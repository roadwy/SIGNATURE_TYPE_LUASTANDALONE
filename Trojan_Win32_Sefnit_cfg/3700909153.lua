local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if 35 > L0_0:len() then
  return mp.CLEAN
end
if mp.getfilesize() < 177 or mp.getfilesize() > 2048 then
  return mp.CLEAN
end
if ".ct" ~= string.sub(L0_0, -3) then
  return mp.CLEAN
end
if nil ~= L0_0:find("[\\]") then
  L0_0 = L0_0:match("([^\\]+)$")
end
if 35 ~= L0_0:len() then
  return mp.CLEAN
end
if 3649324682 == mp.crc32(0, headerpage, 2, 16) then
  return mp.INFECTED
end
if 2453981930 == mp.crc32(0, headerpage, 2, 16) then
  return mp.INFECTED
end
if nil ~= mp.getfilename():find("\\049e7fb749be2cdf169e28bb0a27254f\\7d0b14cec8baf661c8a240560c5b7c32.ct") then
  return mp.INFECTED
end
if nil ~= mp.getfilename():find("\\049e7fb749be2cdf169e28bb0a27254f\\74338f611481d85755401412c5513fb5.ct") then
  return mp.INFECTED
end
if nil ~= mp.getfilename():find("\\049e7fb749be2cdf169e28bb0a27254f\\181084e525a65ef540c63d60ce07f836.ct") then
  return mp.INFECTED
end
mp.set_mpattribute("Lua:Sefnit_Config_CT")
return mp.CLEAN
