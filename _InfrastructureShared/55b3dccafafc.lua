local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\windows\\", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\program files", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\programdata\\", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\blender", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L1_1 = L1_1(L0_0, "\\glens", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L1_1 = L1_1(L0_0, "\\microsoft.azure.", 1, true)
          end
        end
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = MpCommon
L1_1 = L1_1.GetPersistContextCountNoPath
L1_1 = L1_1("Lua:Metload.A")
if L1_1 > 0 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetPersistContextNoPath
  L1_1 = L1_1("Lua:Metload.A")
  if L1_1 then
    for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
      if L0_0 == _FORV_6_ then
        bm.add_action("EmsScan", 3000)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
