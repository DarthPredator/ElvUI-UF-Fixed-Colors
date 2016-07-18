--Файл локализации для ruRU
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("ElvUI", "ruRU")
if not L then return; end

L["Fixed Health Colors"] = "Фиксированные цвета здоровья"
L["Upper breakpoint"] = "Верхний переход"
L["Lower breakpoint"] = "Нижний переход"
L["Only Lower"] = "Только нижний"
L["Use only lower breakpoint and use bad color when health is below it."] = "Использовать только точку нижнего перехода и окрашивать полосу в плохой цвет, если здоровье ниже этого значения."