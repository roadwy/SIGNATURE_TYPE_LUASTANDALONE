local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "%->%(base64%)%->%(utf%-16le%)") then
  return mp.INFECTED
end
return mp.CLEAN
