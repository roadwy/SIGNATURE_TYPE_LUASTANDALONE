local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 500 and L0_0 < 5242880 then
  L1_1 = tostring
  L2_2 = footerpage
  L1_1 = L1_1(L2_2)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L3_3 = mp
  L3_3 = L3_3.bitor
  L4_4 = mp
  L4_4 = L4_4.bitor
  L4_4 = L4_4(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
  L4_4 = L3_3(L4_4, mp.FILEPATH_QUERY_LOWERCASE)
  L3_3 = L2_2(L3_3, L4_4, L3_3(L4_4, mp.FILEPATH_QUERY_LOWERCASE))
  L4_4 = L2_2.find
  L4_4 = L4_4(L2_2, "\\cache\\", 1, true)
  if L4_4 then
    L4_4 = StringStartsWith
    L4_4 = L4_4(L3_3, "f_")
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  function L4_4(A0_5, A1_6)
    return ((string.byte(A0_5, A1_6, A1_6 + 3) * 256 + string.byte(A0_5, A1_6, A1_6 + 3)) * 256 + string.byte(A0_5, A1_6, A1_6 + 3)) * 256 + string.byte(A0_5, A1_6, A1_6 + 3)
  end
  msb_unpack = L4_4
  function L4_4(A0_7, A1_8, A2_9)
    local L3_10, L4_11, L5_12, L6_13
    if A0_7 ~= nil then
      L3_10 = A1_8 + 12
      if A2_9 >= L3_10 then
        L3_10 = {}
        L4_11 = msb_unpack
        L5_12 = A0_7
        L6_13 = A1_8
        L4_11 = L4_11(L5_12, L6_13)
        L5_12 = msb_unpack
        L6_13 = A0_7
        L5_12 = L5_12(L6_13, A1_8 + 4)
        L6_13 = nil
        if A2_9 - (A1_8 + 4 + L4_11) > 0 then
          L6_13 = msb_unpack(A0_7, A1_8 + L4_11 + 8)
          if L4_11 > 0 then
            L3_10.databegin = A1_8 + 5
            L3_10.dataend = L3_10.databegin + L4_11
          end
          L3_10.next = A1_8 + L4_11 + 12
        end
        L3_10.length = L4_11
        L3_10.type = L5_12
        L3_10.crc = L6_13
        return L3_10
      end
    end
    L3_10 = nil
    return L3_10
  end
  process_chunk = L4_4
  L4_4 = nil
  if string.find(L1_1, "IEND", 1, true) and string.find(L1_1, "IEND", 1, true) then
    L4_4 = process_chunk(L1_1, string.find(L1_1, "IEND", 1, true) - 4, L0_0)
  end
  if string.find(L1_1, "IEND", 1, true) == nil or L4_4 == nil then
    mp.set_mpattribute("Lua:PngWithoutIENDFooter")
  else
    if L4_4.length > 0 then
      mp.set_mpattribute("Lua:PngWithAbnormalIENDLength")
    end
    if L0_0 < string.find(L1_1, "IEND", 1, true) + 4 then
      mp.set_mpattribute("Lua:PngWithDataAfterIEND")
    end
    if L4_4.crc ~= 2923585666 then
      mp.set_mpattribute("Lua:PngWithAbnormalIENDCrc")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
