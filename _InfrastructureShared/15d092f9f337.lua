local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("BM_OLE_FILE")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L0_0("SCRIPT:PDFinOLE")
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L0_0 = L0_0("InEmail")
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilesize
    L0_0 = L0_0()
    if L0_0 == nil or L0_0 > 1000000 or L0_0 < 1000 then
      return mp.CLEAN
    end
    if 0 < mp.BMSearchFile(0, L0_0, ".Document.DC\144\001@\144\002@h\000t\000t\000p\000:\000/\000/\144\000") then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
