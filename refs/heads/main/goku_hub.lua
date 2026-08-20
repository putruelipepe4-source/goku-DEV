-- ========================================================
-- GOKU HUB v1.0 - ¡CONEXIÓN EXITOSA!
-- ========================================================

print("--------------------------------------------------")
print("🔥 ¡Goku Hub se ha conectado y funciona al 100%! 🔥")
print("--------------------------------------------------")

-- Un pequeño mensaje flotante dentro del juego para avisarte que cargó
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "⚡ GOKU HUB ⚡",
    Text = "¡Tu script de GitHub cargó con éxito y de forma segura!",
    Duration = 5
})
