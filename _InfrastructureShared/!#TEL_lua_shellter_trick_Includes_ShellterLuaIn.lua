local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
          if L0_0 then
            L0_0 = peattributes
            L0_0 = L0_0.dt_error_heur_exit_criteria
          end
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
L0_0 = L0_0.get_mpattribute
L1_1 = "TEL:lua_codepatch_shellter_trick"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "TEL:lua_shellter_trick"
L0_0 = L0_0(L1_1)
if L0_0 then
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
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
L6_6 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1(L2_2, L3_3))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = false
L2_2 = 0
for L6_6 = 1, L4_4.logsize do
  if opclog[L6_6].value == 96 and opclog[L6_6 + 1].value == 156 then
    L1_1 = true
    L2_2 = opclog[L6_6].address
    break
  end
end
if L1_1 == false then
  return L3_3
end
if L2_2 == L3_3 then
  return L3_3
end
L6_6 = 196608
if L3_3 == nil then
  return L4_4
end
L6_6 = 384
if L4_4 == nil then
  return L5_5
end
L6_6 = L4_4 + 2
if L5_5 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.readprotection
L6_6(false)
L6_6 = mp
L6_6 = L6_6.readfile
L6_6 = L6_6(0, mp.getfilesize())
mp.writeu_u32(L6_6, mp.readu_u32(L6_6, 61) + 40 + 1, L2_2 - pehdr.ImageBase)
mp.vfo_add_buffer(L6_6, "[ShellterEP]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
