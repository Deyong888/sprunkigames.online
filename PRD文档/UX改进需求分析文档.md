PRD文档：Sprunki Games 网站体验与视觉重构 (v2.0)
项目名称： Sprunki Games UI/UX Overhaul 当前版本问题诊断：

信息过载 (Information Overload)： 游戏列表过长，缺乏分页或“加载更多”机制，导致视觉疲劳。

视觉层级单一 (Flat Hierarchy)： 从上到下都是同样的黑色背景，缺乏板块区分，用户浏览时容易迷失。

交互性弱 (Low Interaction)： 核心区域（如分享、特色功能）视觉冲击力不足，无法引导用户点击。

🛠️ 第一部分：核心功能与布局需求 (Core Layout & UX)
1. 游戏列表重构 (Game Grid Transformation) [优先级：最高]
目前的列表像一个“数据库转储”，需要将其转变为“精选展示橱窗”。

分页/加载机制 (Pagination / Load More):

初始显示： 仅显示前 12-16 个 最热门的游戏。

交互： 在列表底部增加一个醒目的 "View More Games" (查看更多) 按钮。点击后展开更多，或者跳转到独立的游戏列表页。

目的： 缩短页面长度，让用户能更快看到底部的特色内容。

网格密度 (Grid Density):

PC端： 改为 每行 5 个 卡片（当前看起来像7-8个，太拥挤）。

卡片尺寸： 放大封面图，确保用户能看清封面上的角色细节。

分类标签 (Tabs/Filters):

在网格上方增加分类标签：ALL | HOT | NEW | TRENDING。允许用户筛选，而不是一次性展示所有内容。

2. 视觉节奏与分层 (Visual Rhythm)
不要让整个网站都是纯黑背景。通过深浅交替来区分板块。

Hero区域 (顶部游戏窗): 维持深色，突出沉浸感。

游戏列表区: 背景色 #0F0F12 (深黑)。

中间横幅 (Share/Promo): 背景色 #16161E (略浅的蓝灰) 或带有微弱的渐变，作为视觉阻断点，缓解眼睛疲劳。

底部内容区 (How to play): 恢复深黑色，但卡片使用毛玻璃效果 (Glassmorphism)。

3. 卡片样式升级 (Card UI Polish)
封面图: 统一圆角 12px。

悬停效果 (Hover):

鼠标移入时，封面图放大 1.05 倍。

出现播放图标 ▶️ 悬浮在图片中央。

边框高亮颜色：#8B5CF6 (紫色)。

信息展示: 游戏标题字体加粗，字号加大（16px），副标题（如播放量/作者）使用浅灰色。

4. 底部信息区优化 (Footer & Info)
排版优化: 当前底部的 "Discover the Magic" 文字排版过于密集。

解决方案: 增加行高 (line-height: 1.8)，将大段文字拆分成带图标的短句。

🎨 第二部分：视觉风格指南 (Visual Style Guide)
配色方案 (Color Palette):

背景: 深空黑 (#0B0B0F) + 局部紫色光晕。

主色 (Primary): 赛博紫 (#7F5AF0) —— 用于按钮、链接、高亮。

强调色 (Accent): 霓虹青 (#2CB67D) —— 用于 "New" 标签或特殊提示。

文字: 标题纯白 (#FFFFFE)，正文蓝灰 (#94A1B2)。

光影效果 (Lighting):

在 "Share Your Music" 和 "Features" 板块后面添加微弱的 CSS 径向渐变 (Radial Gradient)，营造“舞台灯光”的感觉。