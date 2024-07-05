local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L18_18 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\steamapps\\common\\"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\microsoft\\teams\\"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "\\microsoft vs code\\"
      L4_4 = 1
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L3_3 = "\\steam\\"
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
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L3_3 = "t2gp launcher"
            L4_4 = 1
            L5_5 = true
            L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L3_3 = "paradox interactive"
              L4_4 = 1
              L5_5 = true
              L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L3_3 = "\\google\\chrome\\"
                L4_4 = 1
                L5_5 = true
                L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
              end
            end
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
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p1
  end
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L2_2 = L3_3.utf8p1
  end
end
L3_3 = nil
L4_4 = this_sigattrlog
L4_4 = L4_4[3]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[3]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L3_3 = L4_4.utf8p1
  end
end
if L1_1 ~= L2_2 or L1_1 ~= L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = bm
L4_4 = L4_4.get_process_relationships
L5_5 = L4_4()
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = mp
  L11_11 = L11_11.bitand
  L12_12 = L10_10.reason_ex
  L13_13 = bm
  L13_13 = L13_13.RELATIONSHIP_CREATED
  L11_11 = L11_11(L12_12, L13_13)
  L12_12 = bm
  L12_12 = L12_12.RELATIONSHIP_CREATED
  if L11_11 == L12_12 then
    L12_12 = string
    L12_12 = L12_12.find
    L13_13 = string
    L13_13 = L13_13.lower
    L14_14 = L10_10.image_path
    L13_13 = L13_13(L14_14)
    L14_14 = string
    L14_14 = L14_14.lower
    L15_15 = L1_1
    L14_14 = L14_14(L15_15)
    L15_15 = 1
    L16_16 = true
    L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
    if L12_12 then
      L12_12 = MpCommon
      L12_12 = L12_12.TurnNriOnProcess
      L13_13 = L10_10.ppid
      L12_12(L13_13)
      L12_12 = bm
      L12_12 = L12_12.request_SMS
      L13_13 = L10_10.ppid
      L14_14 = "M"
      L12_12(L13_13, L14_14)
      L12_12 = string
      L12_12 = L12_12.match
      L13_13 = L10_10.ppid
      L14_14 = "^pid:(%w+),ProcessStart:(%w+)$"
      L13_13 = L12_12(L13_13, L14_14)
      L14_14 = tonumber
      L15_15 = L12_12
      L14_14 = L14_14(L15_15)
      L15_15 = tonumber
      L16_16 = L13_13
      L15_15 = L15_15(L16_16)
      L16_16 = mp
      L16_16 = L16_16.bsplit
      L17_17 = L15_15
      L18_18 = 32
      L17_17 = L16_16(L17_17, L18_18)
      L18_18 = string
      L18_18 = L18_18.format
      L18_18 = L18_18("ppids:{{%d,%d,%d}}\000", L14_14, L16_16, L17_17)
      mp.TriggerScanResource("ems", L18_18, mp.SCANSOURCE_RTSIG, 5000)
      return mp.INFECTED
    end
  end
end
return L6_6
