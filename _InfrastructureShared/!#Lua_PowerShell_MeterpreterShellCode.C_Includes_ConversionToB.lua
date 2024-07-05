local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = 0
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PSDllImportKernel32"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PSImportVirtualAlloc"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PSImportCreateThread"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PSCallWindowsAPI"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PowerShell/InteropServicesCopy"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PowerShell/VirtualAlloc"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:PowerShell/CreateThread"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = L0_0 + 1
end
if L0_0 < 2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 > 1536000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "Lua:PowerShell/MeterpreterShellCode.C!st"
L2_2(L3_3)
L2_2 = nil
if L1_1 <= 4096 then
  L3_3 = tostring
  L4_4 = headerpage
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
else
  L3_3 = mp
  L3_3 = L3_3.readprotection
  L4_4 = false
  L3_3(L4_4)
  L3_3 = tostring
  L4_4 = mp
  L4_4 = L4_4.readfile
  L11_11 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L4_4(L5_5, L6_6))
  L2_2 = L3_3
end
if L2_2 ~= nil then
  L4_4 = L2_2
  L3_3 = L2_2.len
  L3_3 = L3_3(L4_4)
elseif L3_3 < 12 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.gmatch
L4_4 = L2_2
L3_3 = L3_3(L4_4, L5_5)
L4_4 = 0
for L8_8 in L3_3, nil, nil do
  if L8_8 ~= nil then
    L9_9 = string
    L9_9 = L9_9.len
    L10_10 = L8_8
    L9_9 = L9_9(L10_10)
    if L9_9 > 5 then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L8_8
      L11_11 = "0x"
      L9_9 = L9_9(L10_10, L11_11, 1, true)
      if L9_9 ~= nil then
        L9_9 = string
        L9_9 = L9_9.find
        L10_10 = L8_8
        L11_11 = ","
        L9_9 = L9_9(L10_10, L11_11, 1, true)
        if L9_9 ~= nil then
          L9_9 = L8_8
          L11_11 = L9_9
          L10_10 = L9_9.sub
          L10_10 = L10_10(L11_11, -1)
          if L10_10 == ")" then
            L11_11 = L9_9
            L10_10 = L9_9.sub
            L10_10 = L10_10(L11_11, 0, -3)
            L9_9 = L10_10
          end
          L11_11 = L9_9
          L10_10 = L9_9.gsub
          L11_11 = L10_10(L11_11, "[\r\n%s]", "")
          _ = L11_11
          L9_9 = L10_10
          L10_10 = L9_9
          L11_11 = ","
          L10_10 = L10_10 .. L11_11
          L11_11 = L10_10
          L10_10 = L10_10.gsub
          L10_10 = L10_10(L11_11, "0x([0-9A-Fa-f]+),", "0x0%1,")
          L9_9 = L10_10
          L10_10 = string
          L10_10 = L10_10.gsub
          L11_11 = L9_9
          L10_10 = L10_10(L11_11, "%s+", "")
          L9_9 = L10_10
          L10_10 = fastHex2Bin
          L11_11 = L9_9
          L10_10 = L10_10(L11_11, "0X[0-9A-Fa-f]-([0-9A-Fa-f][0-9A-Fa-f]),")
          L11_11 = mp
          L11_11 = L11_11.vfo_add_buffer
          L11_11(L10_10, string.format("[PSByteShellcode_%02X]", L4_4), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          L11_11 = L8_8.sub
          L11_11 = L11_11(L8_8, 0, 2)
          if L11_11 ~= "MZ" then
            L11_11 = #L10_10
            if L11_11 <= 8192 then
              L11_11 = "4D5A9000000000000000000050450000"
              L11_11 = L11_11 .. "4C010100000000000000000000000000" .. "78000F000B0100000000000000000000" .. "00000000D0000000000000000C000000" .. "00004000000100000001000004000000" .. "01000000040000000000000000300000" .. "C5000000000000000300000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "0000000000000000000000002E746578" .. "7400000000200000D000000000200000" .. "D0000000000000000000000000000000" .. "400030E0000000000000000000000000"
              mp.vfo_add_buffer(fastHex2Bin(L11_11, "[0-9A-Fa-f][0-9A-Fa-f]") .. L10_10, string.format("[PSByteShellcodeInPE_%02X]", L4_4), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
            end
          end
          L11_11 = "4D5ACEFA504500006486000000000000"
          L11_11 = L11_11 .. "000000000000000000002F000B02FAFA" .. "00000000000000000000000008010000" .. "00000000000000000100000004000000" .. "04000000CAFEBABECAFEBABE05000000" .. "00000000000400000801000000000000" .. "02000000CAFEBABE00000000CAFEBABE" .. "00000000CAFEBABE00000000CAFEBABE" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "0000000000000000"
          mp.vfo_add_buffer(fastHex2Bin(L11_11, "[0-9A-Fa-f][0-9A-Fa-f]") .. L10_10, string.format("[PSByteShellcodeInPE64_%02X]", L4_4), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          L4_4 = L4_4 + 1
        end
      end
    end
  end
end
if L4_4 > 0 then
  return L5_5
end
L5_5(L6_6)
return L5_5
