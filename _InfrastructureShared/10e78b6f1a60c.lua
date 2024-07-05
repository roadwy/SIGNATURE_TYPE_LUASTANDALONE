local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  local L2_7
  L2_7 = pe
  L2_7 = L2_7.mmap_va_nofastfail
  L2_7 = L2_7(A0_5, A1_6)
  if L2_7 == "" then
    L2_7 = mp.readfile(pe.foffset_va(A0_5), A1_6)
  end
  return L2_7
end
map_read = L0_0
function L0_0(A0_8, A1_9, A2_10)
  local L3_11
  L3_11 = mp
  L3_11 = L3_11.readfile
  L3_11 = L3_11(pe.foffset_va(A0_8), A1_9)
  if string.find(L3_11, "\199E" .. string.char(A2_10), 1, true) ~= nil then
    return mp.readu_u32(L3_11, string.find(L3_11, "\199E" .. string.char(A2_10), 1, true) + 3)
  end
  return nil
end
search_const = L0_0
function L0_0(A0_12, A1_13, A2_14)
  local L3_15
  L3_15 = mp
  L3_15 = L3_15.readfile
  L3_15 = L3_15(pe.foffset_va(A0_12), A1_13)
  if string.find(L3_15, "\199\133" .. string.char(mp.bitand(A2_14, 255)) .. string.char(mp.bitand(mp.shr32(A2_14, 8), 255)), 1, true) ~= nil then
    return mp.readu_u32(L3_15, string.find(L3_15, "\199\133" .. string.char(mp.bitand(A2_14, 255)) .. string.char(mp.bitand(mp.shr32(A2_14, 8), 255)), 1, true) + 6)
  end
  return nil
end
search_const_32 = L0_0
function L0_0(A0_16, A1_17, A2_18)
  local L3_19, L4_20, L5_21
  L4_20 = map_read
  L5_21 = A0_16
  L4_20 = L4_20(L5_21, A1_17)
  L5_21 = string
  L5_21 = L5_21.find
  L5_21 = L5_21(L4_20, "\199\132$" .. string.char(mp.bitand(A2_18, 255)) .. string.char(mp.bitand(mp.shr32(A2_18, 8), 255)), 1, true)
  for _FORV_9_ = 1, 10 do
    if L5_21 ~= nil then
      L3_19 = mp.readu_u32(L4_20, L5_21 + 7)
      if 11 < A1_17 - L5_21 - 11 then
        L4_20 = map_read(A0_16 + L5_21 + 11, A1_17 - L5_21 - 11)
        L5_21 = string.find(L4_20, "\199\132$" .. string.char(mp.bitand(A2_18, 255)) .. string.char(mp.bitand(mp.shr32(A2_18, 8), 255)), 1, true)
        do break end
        break
      end
    else
      break
    end
  end
  return L3_19
end
search_const_32_esp = L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = string
  L1_1 = L1_1.byte
  L2_2 = mp
  L2_2 = L2_2.readfile
  L3_3 = pe
  L3_3 = L3_3.foffset_va
  L4_4 = L0_0 - 5
  L3_3 = L3_3(L4_4)
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = 1
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = string
  L2_2 = L2_2.byte
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = pe
  L4_4 = L4_4.foffset_va
  L4_4 = L4_4(L0_0 - 3)
  L3_3 = L3_3(L4_4, 1)
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = string
  L3_3 = L3_3.byte
  L4_4 = mp
  L4_4 = L4_4.readfile
  L4_4 = L4_4(pe.foffset_va(L0_0 - 1), 1)
  L3_3 = L3_3(L4_4, 1)
  L4_4 = search_const
  L4_4 = L4_4(L0_0 - 256, 256, L1_1)
  if L4_4 ~= nil then
    mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
    mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(L3_3 - mp.bitand(mp.bitxor(L2_2, L4_4), 255), 255)))
  end
else
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.VA
    L1_1 = string
    L1_1 = L1_1.byte
    L2_2 = mp
    L2_2 = L2_2.readfile
    L3_3 = pe
    L3_3 = L3_3.foffset_va
    L4_4 = L0_0 - 15
    L3_3 = L3_3(L4_4)
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = 1
    L1_1 = L1_1(L2_2, L3_3)
    L2_2 = string
    L2_2 = L2_2.byte
    L3_3 = mp
    L3_3 = L3_3.readfile
    L4_4 = pe
    L4_4 = L4_4.foffset_va
    L4_4 = L4_4(L0_0 - 13)
    L3_3 = L3_3(L4_4, 1)
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = string
    L3_3 = L3_3.byte
    L4_4 = mp
    L4_4 = L4_4.readfile
    L4_4 = L4_4(pe.foffset_va(L0_0 - 8), 1)
    L3_3 = L3_3(L4_4, 1)
    L4_4 = search_const
    L4_4 = L4_4(L0_0 - 256, 256, L1_1)
    if L4_4 ~= nil then
      mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
      mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(-(L3_3 + mp.bitand(mp.bitxor(L2_2, L4_4), 255)), 255)))
    end
  else
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.VA
      L1_1 = mp
      L1_1 = L1_1.readu_u32
      L2_2 = mp
      L2_2 = L2_2.readfile
      L3_3 = pe
      L3_3 = L3_3.foffset_va
      L4_4 = L0_0 - 20
      L3_3 = L3_3(L4_4)
      L4_4 = 4
      L2_2 = L2_2(L3_3, L4_4)
      L3_3 = 1
      L1_1 = L1_1(L2_2, L3_3)
      L2_2 = string
      L2_2 = L2_2.byte
      L3_3 = mp
      L3_3 = L3_3.readfile
      L4_4 = pe
      L4_4 = L4_4.foffset_va
      L4_4 = L4_4(L0_0 - 15)
      L3_3 = L3_3(L4_4, 1)
      L4_4 = 1
      L2_2 = L2_2(L3_3, L4_4)
      L3_3 = string
      L3_3 = L3_3.byte
      L4_4 = mp
      L4_4 = L4_4.readfile
      L4_4 = L4_4(pe.foffset_va(L0_0 - 10), 1)
      L3_3 = L3_3(L4_4, 1)
      L4_4 = search_const_32
      L4_4 = L4_4(L0_0 - 512, 512, L1_1)
      if L4_4 ~= nil then
        mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
        mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(-(L3_3 + mp.bitand(mp.bitxor(L2_2, L4_4), 255)), 255)))
      end
    else
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[4]
        L0_0 = L0_0.VA
        L1_1 = string
        L1_1 = L1_1.byte
        L2_2 = mp
        L2_2 = L2_2.readfile
        L3_3 = pe
        L3_3 = L3_3.foffset_va
        L4_4 = L0_0 - 6
        L3_3 = L3_3(L4_4)
        L4_4 = 1
        L2_2 = L2_2(L3_3, L4_4)
        L3_3 = 1
        L1_1 = L1_1(L2_2, L3_3)
        L2_2 = string
        L2_2 = L2_2.byte
        L3_3 = mp
        L3_3 = L3_3.readfile
        L4_4 = pe
        L4_4 = L4_4.foffset_va
        L4_4 = L4_4(L0_0 - 3)
        L3_3 = L3_3(L4_4, 1)
        L4_4 = 1
        L2_2 = L2_2(L3_3, L4_4)
        L3_3 = string
        L3_3 = L3_3.byte
        L4_4 = mp
        L4_4 = L4_4.readfile
        L4_4 = L4_4(pe.foffset_va(L0_0 - 1), 1)
        L3_3 = L3_3(L4_4, 1)
        L4_4 = search_const
        L4_4 = L4_4(L0_0 - 512, 512, L1_1)
        if L4_4 ~= nil then
          mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
          mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(L3_3 - mp.bitand(mp.bitxor(L2_2, L4_4), 255), 255)))
        end
      else
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[5]
          L0_0 = L0_0.VA
          L1_1 = string
          L1_1 = L1_1.byte
          L2_2 = mp
          L2_2 = L2_2.readfile
          L3_3 = pe
          L3_3 = L3_3.foffset_va
          L4_4 = L0_0 - 9
          L3_3 = L3_3(L4_4)
          L4_4 = 1
          L2_2 = L2_2(L3_3, L4_4)
          L3_3 = 1
          L1_1 = L1_1(L2_2, L3_3)
          L2_2 = string
          L2_2 = L2_2.byte
          L3_3 = mp
          L3_3 = L3_3.readfile
          L4_4 = pe
          L4_4 = L4_4.foffset_va
          L4_4 = L4_4(L0_0 - 3)
          L3_3 = L3_3(L4_4, 1)
          L4_4 = 1
          L2_2 = L2_2(L3_3, L4_4)
          L3_3 = string
          L3_3 = L3_3.byte
          L4_4 = mp
          L4_4 = L4_4.readfile
          L4_4 = L4_4(pe.foffset_va(L0_0 - 1), 1)
          L3_3 = L3_3(L4_4, 1)
          L4_4 = search_const
          L4_4 = L4_4(L0_0 - 768, 768, L1_1)
          if L4_4 ~= nil then
            mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
            mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(L3_3 - mp.bitand(mp.bitxor(L2_2, L4_4), 255), 255)))
          end
        else
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = hstrlog
            L0_0 = L0_0[6]
            L0_0 = L0_0.VA
            L1_1 = string
            L1_1 = L1_1.byte
            L2_2 = mp
            L2_2 = L2_2.readfile
            L3_3 = pe
            L3_3 = L3_3.foffset_va
            L4_4 = L0_0 - 5
            L3_3 = L3_3(L4_4)
            L4_4 = 1
            L2_2 = L2_2(L3_3, L4_4)
            L3_3 = 1
            L1_1 = L1_1(L2_2, L3_3)
            L2_2 = string
            L2_2 = L2_2.byte
            L3_3 = mp
            L3_3 = L3_3.readfile
            L4_4 = pe
            L4_4 = L4_4.foffset_va
            L4_4 = L4_4(L0_0 - 3)
            L3_3 = L3_3(L4_4, 1)
            L4_4 = 1
            L2_2 = L2_2(L3_3, L4_4)
            L3_3 = string
            L3_3 = L3_3.byte
            L4_4 = mp
            L4_4 = L4_4.readfile
            L4_4 = L4_4(pe.foffset_va(L0_0 - 1), 1)
            L3_3 = L3_3(L4_4, 1)
            L4_4 = search_const
            L4_4 = L4_4(L0_0 - 1024, 1024, L1_1)
            if L4_4 ~= nil then
              mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
              mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(L3_3 - mp.bitand(mp.bitxor(L2_2, L4_4), 255), 255)))
            end
          else
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = hstrlog
              L0_0 = L0_0[7]
              L0_0 = L0_0.VA
              L1_1 = mp
              L1_1 = L1_1.readu_u32
              L2_2 = map_read
              L3_3 = L0_0 - 16
              L4_4 = 4
              L2_2 = L2_2(L3_3, L4_4)
              L3_3 = 1
              L1_1 = L1_1(L2_2, L3_3)
              L2_2 = string
              L2_2 = L2_2.byte
              L3_3 = map_read
              L4_4 = L0_0 - 3
              L3_3 = L3_3(L4_4, 1)
              L4_4 = 1
              L2_2 = L2_2(L3_3, L4_4)
              L3_3 = string
              L3_3 = L3_3.byte
              L4_4 = map_read
              L4_4 = L4_4(L0_0 - 1, 1)
              L3_3 = L3_3(L4_4, 1)
              L4_4 = search_const_32_esp
              L4_4 = L4_4(L0_0 - 1024, 1024, L1_1)
              if L4_4 ~= nil then
                mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(L3_3 - mp.bitand(mp.bitxor(L2_2, L4_4), 255), 255)))
              end
            else
              L0_0 = hstrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
              if L0_0 then
                L0_0 = hstrlog
                L0_0 = L0_0[8]
                L0_0 = L0_0.VA
                L1_1 = mp
                L1_1 = L1_1.readu_u32
                L2_2 = map_read
                L3_3 = L0_0 - 13
                L4_4 = 4
                L2_2 = L2_2(L3_3, L4_4)
                L3_3 = 1
                L1_1 = L1_1(L2_2, L3_3)
                L2_2 = string
                L2_2 = L2_2.byte
                L3_3 = map_read
                L4_4 = L0_0 - 3
                L3_3 = L3_3(L4_4, 1)
                L4_4 = 1
                L2_2 = L2_2(L3_3, L4_4)
                L3_3 = string
                L3_3 = L3_3.byte
                L4_4 = map_read
                L4_4 = L4_4(L0_0 - 1, 1)
                L3_3 = L3_3(L4_4, 1)
                L4_4 = search_const_32_esp
                L4_4 = L4_4(L0_0 - 1024, 1024, L1_1)
                if L4_4 ~= nil then
                  mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                  mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, mp.bitand(L3_3 - mp.bitand(mp.bitxor(L2_2, L4_4), 255), 255)))
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
