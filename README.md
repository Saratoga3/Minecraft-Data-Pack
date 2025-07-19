# Minecraft `.mcfunction` 功能資料包(1.21.)

這是一個使用 Minecraft 原生 `.mcfunction` 檔案語言撰寫的資料包（Data Pack）專案，透過指令自動化遊戲機制、添加新功能或擴展原有的玩法。

# 📘 什麼是 `.mcfunction`？

`.mcfunction` 是 Minecraft Java Edition 中功能資料包（Data Pack）的一種腳本格式，每一行即為一條 Minecraft 指令。  
透過這些指令檔案，你可以：

- 設計演算法(目標前置量)
- 設計系統(防空導彈、迫擊砲..)
- 建立進階紅石替代方案
- 實現伺服器或冒險地圖中的複雜邏輯

# 📁 專案結構

datapack/
├── pack.mcmeta
└── data/
    └── namespace/
        └── function/
            ├── load.mcfunction
            ├── tick.mcfunction
            └── ...
