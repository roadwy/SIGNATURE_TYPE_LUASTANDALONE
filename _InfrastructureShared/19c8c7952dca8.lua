local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.hitcount
  if L0_0 >= 3 then
    L0_0 = mp
    L0_0 = L0_0.getfilesize
    L0_0 = L0_0()
    if L0_0 <= 131072 then
      L0_0 = mp
      L0_0 = L0_0.getfilesize
      L0_0 = L0_0()
      if L0_0 >= 4096 then
        L0_0 = mp
        L0_0 = L0_0.readheader
        L1_1 = 0
        L0_0 = L0_0(L1_1, 1024)
        L1_1 = mp
        L1_1 = L1_1.readfooter
        L1_1 = L1_1(mp.FOOTERPAGE_SZ - 1024, 1024)
        if string.find(L0_0, "MAD!", 1, true) ~= nil and string.find(L1_1, "MAD!", 1, true) ~= nil then
          return mp.INFECTED
        end
      end
    end
  end
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
