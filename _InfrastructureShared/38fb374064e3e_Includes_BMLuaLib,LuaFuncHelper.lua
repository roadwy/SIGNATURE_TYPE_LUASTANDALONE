local L0_0, L2_1, L3_2, L4_3
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
for _FORV_4_ = L0_0, 1, -1 do
  if sigattr_tail[_FORV_4_].attribute == 16491 and sigattr_tail[_FORV_4_].utf8p1 == "GenericRansomware:Type2" then
    if not isnull(safeJsonDeserialize(sigattr_tail[_FORV_4_].utf8p2).appended_ext) then
      bm.set_detection_string(safeJsonDeserialize(sigattr_tail[_FORV_4_].utf8p2).appended_ext)
    end
    return mp.INFECTED
  end
end
return L2_1
