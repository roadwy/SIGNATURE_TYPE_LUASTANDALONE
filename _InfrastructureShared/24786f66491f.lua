local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.packed
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.no_exception
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.no_exports
      if L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.no_security
        if L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.x86_image
        end
      end
    end
  end
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 5242880 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.VA
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.VA
L3_3 = L2_2 - L1_1
if L3_3 < 48 then
  L3_3 = L1_1 - L0_0
  if L3_3 < 48 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.getfilename
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_FULL
L7_7 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5, L6_6))
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "\\windows\\"
L7_7 = 1
L4_4 = L4_4(L5_5, L6_6, L7_7, true)
if not L4_4 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L6_6 = "\\program files"
  L7_7 = 1
  L4_4 = L4_4(L5_5, L6_6, L7_7, true)
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L0_0 - 1536
L5_5 = pe
L5_5 = L5_5.mmap_va
L6_6 = L4_4
L7_7 = 1280
L5_5 = L5_5(L6_6, L7_7)
L6_6 = string
L6_6 = L6_6.find
L7_7 = L5_5
L6_6 = L6_6(L7_7, "`\156", 1, true)
if L6_6 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = L4_4 + L6_6
L6_6 = L7_7 - 1
L7_7 = pehdr
L7_7 = L7_7.AddressOfEntryPoint
L7_7 = L7_7 + pehdr.ImageBase
if L6_6 == L7_7 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.readprotection
L7_7(false)
L7_7 = mp
L7_7 = L7_7.readfile
L7_7 = L7_7(0, mp.getfilesize())
mp.writeu_u32(L7_7, mp.readu_u32(L7_7, 61) + 40 + 1, L6_6 - pehdr.ImageBase)
mp.vfo_add_buffer(L7_7, "[ShellterEP]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
