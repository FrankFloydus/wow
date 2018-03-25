
-- BASIC STRUCTURE TO CREATE A FRAME

-- Creating the fram
  local f = CreateFrame("Frame", nil, UIParent)
  f:SetSize(200, 50)
  f:SetPoint("CENTER")

-- Creating the texture
  local t = f:CreateTexture(nil, "BACKGROUND")
  t:SetAllPoints(f)
  t:SetColorTexture(0,0,0)

-- Creating the font
  local font = f:CreateFontString(nil,"ARTWORK","GameFontNormal")
  font:SetPoint("LEFT",16,0)
