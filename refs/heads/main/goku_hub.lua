-- ========================================================
-- GOKU HUB v1.0 - ¡CONEXIÓN SEGURA Y COMPLETA!
-- ========================================================

-- 1. AVISO EN PANTALLA (Primer código)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "⚡ GOKU HUB ⚡",
    Text = "¡Tu script de GitHub cargó con éxito y de forma segura!",
    Duration = 5
})
print("🔥 ¡Goku Hub se ha conectado y funciona al 100%! 🔥")

-- 2. INTERFAZ Y SUPERPODERES (Segundo código)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Name = "GokuHubFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.4, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 250, 0, 180)
Frame.Active = true
Frame.Draggable = true

Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(240, 100, 20)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "⚡ GOKU HUB v1.0 ⚡"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

ToggleButton.Parent = Frame
ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleButton.Position = UDim2.new(0.1, 0, 0.4, 0)
ToggleButton.Size = UDim2.new(0.8, 0, 0, 45)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = "Activar Súper Velocidad"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 16

local activado = false
ToggleButton.MouseButton1Click:Connect(function()
    local personaje = game.Players.LocalPlayer.Character
    local humanoide = personaje and personaje:FindFirstChildOfClass("Humanoid")
    
    if humanoide then
        if not activado then
            activado = true
            humanoide.WalkSpeed = 100 -- ¡Velocidad de Goku aumentada!
            ToggleButton.Text = "Velocidad: ACTIVADA"
            ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        else
            activado = false
            humanoide.WalkSpeed = 16
            ToggleButton.Text = "Activar Súper Velocidad"
            ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        end
    end
end)
