# Minecraft `.mcfunction` 功能資料包(1.21.1)

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

# 📘 專案

- aa_gun(防空炮系統)
- anti_aircraft_missile(陸基遠程防空導彈系統)
- arrow(箭矢)
- ciws(近迫方陣系統)
- howitzer(榴彈砲系統)
- math(數學)
- mercenary(僱傭兵系統)
- minecraft(原版)
- mini_turret(小型機槍塔系統)
- missile(導彈系統)
- mobile_entity(移動實體)
- mortar(迫擊砲系統)
- public(修改原版參數)
- realm(傅立葉應用_粒子特效)
- superb_warfare(superb_warfare模組聯動)
- thadd(終端高空防禦導彈系統)