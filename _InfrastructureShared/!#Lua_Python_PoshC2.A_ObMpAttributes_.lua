local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 122880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = mp
L2_2 = L2_2.HEADERPAGE_SZ
if L0_0 <= L2_2 then
  L2_2 = tostring
  L2_2 = L2_2(headerpage)
  L1_1 = L2_2
else
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L2_2(false)
  L2_2 = tostring
  L2_2 = L2_2(mp.readfile(0, L0_0))
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "base64.b64decode%('([%w%+/]+=-)'%)")
if L2_2 == nil or string.len(L2_2) < 128 then
  return mp.CLEAN
end
mp.vfo_add_buffer(L2_2, "[PythonBase64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
