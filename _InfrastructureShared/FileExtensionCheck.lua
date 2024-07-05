local L1_0
function L1_0(A0_1, A1_2)
  if A0_1 ~= nil and A0_1:len() > 5 and A0_1:sub(-5):match("(%.%w+)$") ~= nil and true == A1_2[A0_1:sub(-5):match("(%.%w+)$")] then
    return true
  end
  return false
end
FileExtensionCheck = L1_0
