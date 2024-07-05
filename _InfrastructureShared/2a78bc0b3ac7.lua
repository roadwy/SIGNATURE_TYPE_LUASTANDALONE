local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isvbpcode
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = "HSTR:VirTool:Win32/VBInject.gen!LM_ptr_"
  L1_1 = L1_1 .. string.format("%.08x", L0_0 + 62)
  mp.set_mpattribute(L1_1)
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
