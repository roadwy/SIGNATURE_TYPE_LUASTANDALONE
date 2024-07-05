local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("MpInternal_imphash=104e3844f7d26941e527c62603133eee")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L0_0 = L0_0("HSTR:VirTool:Win32/Obfuscator.AQW")
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.SizeOfRawData
if L0_0 > 65536 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  {
    sig = "\232\r\000\000\000kernel32.dl",
    xray_type = 4,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L0_0, 1, pevars.epsec - 1, 0, -1)
