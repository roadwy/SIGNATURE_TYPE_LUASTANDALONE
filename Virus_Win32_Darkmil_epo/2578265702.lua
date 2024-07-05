local L0_0
L0_0 = peattributes
L0_0 = L0_0.epcallnext
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epscn_islast
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "dg\161\000\000\137\1334\"@\000\137\1338\"@\000\141\133$",
    xray_type = 1,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -2, 0, 2048)
