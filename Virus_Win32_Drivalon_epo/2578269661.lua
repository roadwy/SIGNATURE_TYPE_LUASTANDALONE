local L0_0
L0_0 = doshdr
L0_0 = L0_0.e_csum
if L0_0 ~= 22614 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_falign
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\137\208Jf\129:MZu\248\137\209\139I<\001",
    xray_type = 0,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, -1, -2048, -1024)
