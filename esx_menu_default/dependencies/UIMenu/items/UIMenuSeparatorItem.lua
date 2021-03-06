UIMenuSeparatorItem = setmetatable({}, UIMenuSeparatorItem)
UIMenuSeparatorItem.__index = UIMenuSeparatorItem
UIMenuSeparatorItem.__call = function()
    return "UIMenuItem", "UIMenuSeparatorItem"
end

function UIMenuSeparatorItem.New()
    local _UIMenuSeparatorItem = {
        Base = UIMenuItem.New(Text or "N/A", Description or ""),

    }

    _UIMenuSeparatorItem.Base.Label.Text.Alignment = "Center"
    return setmetatable(_UIMenuSeparatorItem, UIMenuSeparatorItem)
end

---SetParentMenu
---@param Menu table
function UIMenuSeparatorItem:SetParentMenu(Menu)
    if Menu() == "UIMenu" then
        self.Base.ParentMenu = Menu
    else
        return self.Base.ParentMenu
    end
end

---Position
---@param Y number
function UIMenuSeparatorItem:Position(Y)
    if tonumber(Y) then
        self.Base:Position(Y)
    end
end

---Selected
---@param bool number
function UIMenuSeparatorItem:Selected(bool)
    if bool ~= nil then
        self.Base._Selected = tobool(bool)
    else
        return self.Base._Selected
    end
end

---Hovered
---@param bool boolean
function UIMenuSeparatorItem:Hovered(bool)
    if bool ~= nil then
        self.Base._Hovered = tobool(bool)
    else
        return self.Base._Hovered
    end
end

---Enabled
---@param bool boolean
function UIMenuSeparatorItem:Enabled(bool)
    if bool ~= nil then
        self.Base._Enabled = tobool(bool)
    else
        return self.Base._Enabled
    end
end

---Description
---@param str string
function UIMenuSeparatorItem:Description(str)
    if tostring(str) and str ~= nil then
        self.Base._Description = tostring(str)
    else
        return self.Base._Description
    end
end

---Offset
---@param X number
---@param Y number
function UIMenuSeparatorItem:Offset(X, Y)
    if tonumber(X) or tonumber(Y) then
        if tonumber(X) then
            self.Base._Offset.X = tonumber(X)
        end
        if tonumber(Y) then
            self.Base._Offset.Y = tonumber(Y)
        end
    else
        return self.Base._Offset
    end
end

---Text
---@param Text string
function UIMenuSeparatorItem:Text(Text)
    if tostring(Text) and Text ~= nil then
        self.Base.Text:Text(tostring(Text))
    else
        return self.Base.Text:Text()
    end
end

function UIMenuSeparatorItem:Draw()
    self.Base:Draw()

    if self.Base._Selected then
    else
    end

end