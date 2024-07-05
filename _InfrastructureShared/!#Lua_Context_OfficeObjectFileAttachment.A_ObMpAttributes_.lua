local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 18 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "->", 1, true)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L0_0, "/embeddings/oleobject", 1, true)
if L2_2 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, ".bin->(ole stream", 1, true)
  if L2_2 ~= nil then
    L1_1 = "Lua:Context/OfficeObjectFileAttachment.A!"
  end
else
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, "->(ole stream ", 1, true)
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, ")->", 1, true)
    if L2_2 ~= nil then
      L1_1 = "Lua:Context/OfficeObjectFileAttachment.B!"
    end
  else
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "->(rtf0", 1, true)
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, ")->", 1, true)
      if L2_2 ~= nil then
        L1_1 = "Lua:Context/RtfFileAttachment.A!"
      end
    else
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L2_2 = L2_2(L0_0, #L0_0 - 3, #L0_0 - 3)
if L2_2 == "." then
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L0_0, -3)
  mp.set_mpattribute(L1_1 .. L2_2)
  return mp.INFECTED
else
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L0_0, #L0_0 - 2, #L0_0 - 2)
  if L2_2 == "." then
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L0_0, -2)
    mp.set_mpattribute(L1_1 .. L2_2)
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
