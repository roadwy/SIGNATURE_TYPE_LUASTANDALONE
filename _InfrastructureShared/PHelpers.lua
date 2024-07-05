local L0_0, L1_1
function L0_0(A0_2)
  if A0_2:find("\\microsoftedge\\cache\\", 1, true) or A0_2:find("\\microsoft\\windows\\inetcache\\", 1, true) or A0_2:find("\\google\\chrome\\user data\\default\\cache", 1, true) or A0_2:find("\\microsoft\\windows\\temporary internet files\\", 1, true) or A0_2:find("\\mozilla\\firefox\\profiles\\", 1, true) or A0_2:find("\\opera software\\opera stable\\cache\\", 1, true) or A0_2:find("\\opera autoupdate\\", 1, true) then
    return true
  end
  return false
end
IsInternetCache = L0_0
function L0_0(A0_3)
  if A0_3:find("microsoft\\office\\solutionpackages\\", 1, true) or A0_3:find("\\opera software\\opera stable\\cache\\", 1, true) or A0_3:find("\\microsoft monitoring agent\\agent\\health service state\\monitoring host\\", 1, true) or A0_3:find("\\grouppolicy\\datastore\\", 1, true) then
    return true
  end
  return false
end
IsLowConfNPath = L0_0
function L0_0(A0_4)
  if A0_4:find("\\github\\", 1, true) or A0_4:find("\\android\\", 1, true) or A0_4:find("\\android-platform-tools\\", 1, true) or A0_4:find("\\androidsdk\\", 1, true) or A0_4:find("\\scoop-master\\", 1, true) or A0_4:find("\\sql\\", 1, true) or A0_4:find("\\tutoris\\", 1, true) or A0_4:find("\\$windows.~bt\\", 1, true) then
    return true
  end
  return false
end
IsChainNPath = L0_0
