local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:LastFolder1!programs"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:LastFolder2!start/x20menu"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Lua:LastFolder3!windows"
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Lua:LastFolder4!microsoft"
      L0_0 = L0_0(L1_1)
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattribute
        L1_1 = "Lua:LastFolder5!roaming"
        L0_0 = L0_0(L1_1)
        if L0_0 then
          L0_0 = mp
          L0_0 = L0_0.CLEAN
          return L0_0
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:LastFolder2!programs"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:LastFolder3!start/x20menu"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Lua:LastFolder4!windows"
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Lua:LastFolder5!microsoft"
      L0_0 = L0_0(L1_1)
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattribute
        L1_1 = "Lua:LastFolder6!roaming"
        L0_0 = L0_0(L1_1)
        if L0_0 then
          L0_0 = mp
          L0_0 = L0_0.CLEAN
          return L0_0
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:ShortcutClassifierA"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = {
    100,
    95,
    90,
    80,
    70,
    60
  }
  SetAttributeFromClassifierScoresEx(L0_0, L1_1, "Lua:ShortcutClassifierA:")
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
