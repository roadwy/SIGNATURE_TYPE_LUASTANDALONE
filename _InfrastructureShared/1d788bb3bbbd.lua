local L0_0
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readprotection
  L0_0(false)
  L0_0 = mp
  L0_0 = L0_0.readfile
  L0_0 = L0_0(0, mp.getfilesize())
  mp.writeu_u32(L0_0, pe.foffset_va(hstrlog[1].VA) + 1, hstrlog[1].VA + 4)
  mp.vfo_add_buffer(L0_0, "locale_patched", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
