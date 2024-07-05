local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.MajorImageVersion
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.MinorImageVersion
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.headerchecksum0
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_resources
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_loadconfig
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasexports
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_relocs
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[6]
L0_0 = L0_0.Size
if L0_0 >= 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.is_delphi
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epinfirstsect
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pevars
L0_0 = L0_0.epsec
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
if L0_0 > L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readfile
L1_1 = pe
L1_1 = L1_1.foffset_rva
L1_1 = L1_1(pesecs[pevars.epsec].VirtualAddress)
L0_0 = L0_0(L1_1, 16)
L1_1 = L0_0.byte
L1_1 = L1_1(L0_0, 2)
if L1_1 ~= 232 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.byte
L1_1 = L1_1(L0_0, 8)
if L1_1 ~= 232 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.byte
L1_1 = L1_1(L0_0, 14)
if L1_1 ~= 232 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  {
    sig = "/\000a\000c\000l\000k\000%\000\000\000\000\000",
    xray_type = 4,
    bytes_to_decrypt = 0
  },
  {
    sig = "cmd.exe /c RD /S",
    xray_type = 4,
    bytes_to_decrypt = 0
  }
}
return pe.xray_block(L1_1, 2, 2, 0, 4096)
