local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L1_1 = "TEL:fopex_shellter_trick"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PEPCODE:HasDigitalSignature"
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
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L5_5 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2, L3_3))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\windows\\"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\program files"
  L4_4 = 1
  L5_5 = true
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
L3_3 = "->[ShellterEP]"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattributevalue
L2_2 = "Lua:fopex_shellter_trick"
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pehdr
L2_2 = L2_2.AddressOfEntryPoint
L3_3 = pehdr
L3_3 = L3_3.ImageBase
L2_2 = L2_2 + L3_3
if L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = check_expensive_loop
L3_3 = L1_1
L4_4 = 384
L5_5 = 196608
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = check_expensive_loop
L4_4 = L2_2 + 2
L5_5 = 384
L3_3 = L3_3(L4_4, L5_5, 196608)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = check_expensive_loop
L5_5 = L3_3 + 2
L4_4 = L4_4(L5_5, 384, 196608)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readprotection
L5_5(false)
L5_5 = mp
L5_5 = L5_5.readfile
L5_5 = L5_5(0, mp.getfilesize())
mp.writeu_u32(L5_5, mp.readu_u32(L5_5, 61) + 40 + 1, L1_1 - pehdr.ImageBase)
mp.vfo_add_buffer(L5_5, "[ShellterEP]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
