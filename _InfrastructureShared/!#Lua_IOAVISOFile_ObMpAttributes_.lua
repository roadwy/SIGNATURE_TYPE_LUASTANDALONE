local L0_0, L1_1, L2_2, L3_3
L0_0 = true
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L2_2 = 201326592
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L3_3 = L3_3("RPF:TopLevelFile")
if not L3_3 then
  L0_0 = false
  L2_2 = 12582912
end
if L1_1 < 33792 or L1_1 > L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.bitand
L3_3 = L3_3(L1_1, 2047)
if L3_3 ~= 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(mp.getfilename())
if string.sub(L3_3, -4) ~= ".iso" and string.sub(L3_3, -4) ~= ".img" then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(32768, 16):find("\001CD001\001", 1, true) == 1 then
  if L0_0 then
    mp.set_mpattribute("Lua:IOAVTopLevelISOFile")
    mp.set_mpattribute("//Lua:GIOAVTopLevelISOFile")
  elseif not mp.get_mpattribute("//Lua:GIOAVFirstISOFileInContainer") then
    mp.set_mpattribute("Lua:IOAVFirstISOFileInContainer")
    mp.set_mpattribute("//Lua:GIOAVFirstISOFileInContainer")
  end
elseif mp.readfile(32768, 16):find("\000BEA01\001", 1, true) == 1 then
  if L0_0 then
    mp.set_mpattribute("Lua:IOAVTopLevelUDFFile")
    mp.set_mpattribute("//Lua:GIOAVTopLevelUDFFile")
  elseif not mp.get_mpattribute("//Lua:GIOAVFirstUDFFileInContainer") then
    mp.set_mpattribute("Lua:IOAVFirstUDFFileInContainer")
    mp.set_mpattribute("//Lua:GIOAVFirstUDFFileInContainer")
  end
end
return mp.CLEAN
