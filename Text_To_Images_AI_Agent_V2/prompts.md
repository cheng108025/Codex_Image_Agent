# Text_To_Images_AI_Agent｜20 種跨類型角色風格提示詞

> 狀態：已於 2026-07-21 使用本文件提示詞重新生成 01–20，共 20 張 PNG。圖片與提示詞使用相同編號及檔名。

## 生成方式

本套件使用純文字生成，不傳入原圖或其他參考圖片。每張圖片實際送入生成器的完整提示詞格式如下：

```text
{共同角色描述}

Selected style:
{對應編號的風格提示詞}

Avoid: {共同負向約束}
```

## 20 種風格總覽

| 編號 | 風格 | 主要差異 |
| :--- | :--- | :--- |
| 01 | 真實攝影 | 真人、鏡頭、真實皮膚與布料 |
| 02 | 寫實數位插畫 | 寫實人體、電影光影、數位筆觸 |
| 03 | Q版人物 | 2 頭身、巨大頭部、迷你四肢 |
| 04 | 現代日系動漫 | 精緻線稿、柔和漸層、通透眼睛 |
| 05 | 歐美卡通 | 彈性形體、粗輪廓、圖形化表情 |
| 06 | 復古賽璐璐動畫 | 平塗色塊、二段硬陰影、膠片顆粒 |
| 07 | 古典油畫 | 畫布、油彩罩染、明暗對照 |
| 08 | 水彩插畫 | 透明暈染、水痕、水彩紙 |
| 09 | 鉛筆素描 | 石墨、炭筆、排線與擦拭 |
| 10 | 東方水墨 | 墨色濃淡、毛筆、宣紙留白 |
| 11 | 3D 動畫電影 | 光滑立體模型、柔和材質、電影級燈光 |
| 12 | 3D 黏土定格 | 指紋、凹痕、手工模型與微縮場景 |
| 13 | 像素藝術 | 16-bit 方格、有限色盤、無反鋸齒 |
| 14 | 普普藝術 | 粗黑線、原色色塊、Ben-Day 網點 |
| 15 | 彩繪玻璃 | 透光玻璃、粗鉛條、寶石色 |
| 16 | 剪紙藝術 | 多層紙片、剪裁邊緣、層間投影 |
| 17 | 摺紙藝術 | 山谷摺線、立體紙面、銳利折角 |
| 18 | 賽博龐克霓虹 | 洋紅青藍霓虹、雨夜、科技光效 |
| 19 | 黑暗奇幻史詩 | 寫實奇幻、古老遺跡、暴風雪與史詩光影 |
| 20 | 童話繪本水粉 | 不透明水粉、圓潤造型、手繪故事場景 |

## 共同角色描述

```text
Create exactly one original youthful adult fantasy cat-eared woman solely from this text description. She has long soft wavy silver-white hair with one curled cowlick, two large white furry cat ears with pale pink interiors, vivid sapphire-blue eyes, light blush and a gentle closed-mouth smile. On the viewer's left side of her hair is an oversized black ribbon bow decorated with an ice-blue crystalline snowflake, a central faceted gold diamond ornament and a short hanging chain of blue teardrop gems. At her neck is a second black bow with a small gold four-point star and one blue teardrop pendant. She wears an elegant white and ice-blue off-shoulder fantasy dress with ruffled white trim, gold buckles and fittings, and small snowflake patterns.

Composition: square 1:1 image, one centered front-facing bust portrait from head to mid-torso, both cat ears and all hair ornaments fully inside the frame, character dominant and clearly readable.

Identity invariants: always retain the silver-white hair, sapphire-blue eyes, two cat ears, two black bows, ice-blue snowflake hair ornament, gold-and-blue jewelry, white-and-ice-blue dress and gentle expression. Adapt anatomy, facial proportions, shape language, linework, materials, lighting and background completely to the selected style; realistic styles must use believable human proportions, while cartoon styles may exaggerate them.
```

## 共同負向約束

```text
extra character, duplicated body, missing cat ear, extra cat ear, missing hair bow, missing neck bow, missing snowflake ornament, missing jewelry, invented weapon, invented wings, cropped ears, cropped chin, malformed anatomy, unreadable silhouette, identity drift, default anime face when another style is selected, superficial texture filter over unchanged anime art, identical proportions across every style, text, logo, signature, watermark
```

---

## 01｜真實攝影（Photorealistic Photography）

預定輸出：`01-photorealistic-photography.png`

```text
Use case: photorealistic-natural. Render the character as a real adult woman photographed in an elaborate fantasy costume, with naturally proportioned sapphire eyes, authentic skin pores and peach fuzz, individual silver-white hair fibers, physically believable furry cat ears, real satin bows, faceted crystal jewelry, embroidered fabric, tiny garment seams and natural material imperfections. Camera: premium 85 mm portrait lens, eye-level, shallow depth of field, precise focus on the eyes. Lighting: soft window key light with subtle cool snow reflection and realistic shadow falloff. Background: a refined pale-blue winter studio set with distant snow bokeh. Avoid anime anatomy, oversized cartoon eyes, illustration, painterly surfaces, porcelain skin, wax figure, CGI, plastic costume and beauty-filter smoothing.
```

## 02｜寫實數位插畫（Realistic Digital Painting）

預定輸出：`02-realistic-digital-painting.png`

```text
Render the character as a cinematic realistic fantasy digital painting, clearly painted rather than photographed. Use believable adult anatomy, naturally sized expressive eyes, carefully modeled facial planes, layered digital brushwork, realistic silver hair masses, convincing velvet, silk, gold and crystal materials, controlled edge variation, atmospheric perspective and dramatic cool-warm movie lighting. Background: a snow-covered fantasy palace terrace at blue hour with mist and distant architecture. Avoid camera-photo realism, anime lineart, chibi proportions, glossy 3D rendering, flat cel shading, visible canvas weave and exaggerated fantasy armor.
```

## 03｜Q版人物（Chibi Character）

預定輸出：`03-chibi-character.png`

```text
Rebuild the character as an unmistakable super-deformed chibi: approximately two heads tall, enormous round head, huge sparkling blue eyes, tiny torso, miniature simplified hands and shoulders, short rounded hair clumps, soft cheeks and an extra-cute gentle smile. Simplify the dress and jewelry into large readable icons while preserving every identity marker. Use bright clean colors, rounded outlines and small glossy highlights. Background: a playful pastel sticker-like snow globe with bubbles, snowflakes and confetti. Avoid realistic anatomy, normal head-to-body ratio, long elegant limbs, detailed skin rendering, dark gritty lighting and semi-realistic anime proportions.
```

## 04｜現代日系動漫（Modern Japanese Anime）

預定輸出：`04-modern-anime.png`

```text
Render the character as a polished contemporary Japanese anime key visual. Use delicate clean lineart, graceful anime proportions, large luminous layered blue irises, soft skin gradients, detailed flowing hair strands, translucent fabric highlights, gentle rim light, atmospheric bloom and a refined cool pastel palette. Background: a softly focused snowy fantasy courtyard with floating light particles. Avoid photoreal skin, western-cartoon shapes, two-head-tall chibi anatomy, strict two-tone retro cel shadows, thick comic ink and 3D-rendered materials.
```

## 05｜歐美卡通（Western Cartoon）

預定輸出：`05-western-cartoon.png`

```text
Reinterpret the character as an energetic Western animated-cartoon design. Use bold tapered outlines, strong squash-and-stretch shape language, simplified bean-shaped torso, large expressive eyebrows, graphic hair clumps, playful asymmetry and flat saturated colors with minimal soft shading. Translate bows and jewelry into chunky readable shapes. Background: a whimsical graphic winter stage built from curved snowbanks and simplified trees. Avoid Japanese anime eyes and hair rendering, chibi two-head proportions, realistic lighting, painterly texture, 3D volume and retro cel film grain.
```

## 06｜復古賽璐璐動畫（Retro Cel Animation）

預定輸出：`06-retro-cel-animation.png`

```text
Render the character as a hand-painted late-20th-century 2D animation cel. Use clean inked contours, flat opaque paint fills, one strict hard-edged shadow tone, small solid highlight shapes, slight paint-edge irregularity, dust specks and subtle analog film grain. Keep the design elegant rather than chibi. Background: a simple hand-painted winter castle establishing plate with flatter detail and mild cel-to-background separation. Avoid soft gradient shading, modern anime glow, photorealism, 3D rendering, watercolor blooms, thick Western-cartoon outlines and glossy digital polish.
```

## 07｜古典油畫（Classical Oil Painting）

預定輸出：`07-classical-oil-painting.png`

```text
Reinterpret the character as a classical European oil portrait on linen canvas. Use realistic adult proportions, layered translucent oil glazes, rich pigment depth, visible canvas weave, soft scumbling, selective impasto highlights, luminous flesh and dramatic chiaroscuro. Render the icy costume as luxurious period fabric while keeping all identity markers. Background: deep warm darkness with a heavy blue velvet curtain and faint gilded architecture. Avoid anime proportions, camera-photo detail, watercolor transparency, flat vector color, digital airbrushing, plastic texture and uniform thick paint.
```

## 08｜水彩插畫（Watercolor Illustration）

預定輸出：`08-watercolor-illustration.png`

```text
Render the character as a genuine transparent watercolor painting on cold-pressed cotton paper. Use layered luminous washes, wet-on-wet blue blooms, pigment granulation, tide marks, soft lost-and-found contours, dry-brush hair accents and reserved paper-white highlights. Let some edges dissolve naturally without losing the face or ornaments. Background: a loose winter wash of pale sky, snowy branches and drifting splatter fading into untouched paper. Avoid opaque gouache, oil impasto, digital watercolor filters, hard cel shadows, glossy anime rendering, vector edges and muddy pigment.
```

## 09｜鉛筆素描（Pencil Sketch）

預定輸出：`09-pencil-sketch.png`

```text
Render the character as a monochrome graphite-and-charcoal drawing on textured sketch paper. Use varied pencil pressure, delicate contour searching, visible construction marks, dense cross-hatching, soft charcoal smudges, kneaded-eraser highlights and fine hair strokes. Translate the blue and gold identity details through distinct grayscale values and material marks. Background: an open sketchbook sheet with light study lines and subtle margin doodles. Avoid colored pigment, polished digital lineart, ink-only contours, engraved mechanical hatching, photoreal photography and smooth airbrush shading.
```

## 10｜東方水墨（Ink Wash Painting）

預定輸出：`10-ink-wash-painting.png`

```text
Reinterpret the character as a traditional East Asian ink-wash figure painting on xuan paper. Use expressive calligraphic brush contours, wet black-ink diffusion, layered gray washes, concentrated dark accents, dry-brush texture and flying-white gaps; simplify the costume into elegant brush rhythms while retaining the bows, snowflake and pendants. Background: expansive paper-white negative space with distant misty winter mountains and a few sparse plum branches. Avoid graphite cross-hatching, colored anime rendering, oil texture, smooth vector lines, uniform gray fill and a busy fully rendered background.
```

## 11｜3D 動畫電影（Stylized 3D Animation）

預定輸出：`11-stylized-3d-animation.png`

```text
Create the character as a polished stylized 3D animated-film model. Use appealing large but dimensional eyes, sculpted flowing hair locks, clean rounded facial forms, subtle skin subsurface scattering, soft fabric fibers, realistic crystal refraction, brushed gold, carefully modeled costume seams and cinematic three-point lighting. Background: a charming dimensional ice-palace set with soft depth of field and floating snow. Avoid photoreal human pores, flat 2D lineart, clay fingerprints, low-poly facets, doll-joint seams, stiff posing and metallic plastic skin.
```

## 12｜3D 黏土定格（Claymation）

預定輸出：`12-claymation.png`

```text
Recreate the character as a handcrafted stop-motion clay puppet. Model every form from colored clay with visible fingerprints, small dents, hand-shaped seams, slightly uneven edges, warm waxy reflections and tiny practical costume pieces; hair should be sculpted clay ribbons and jewelry should look handmade. Background: a miniature felt-and-clay winter set under warm tabletop studio lights. Avoid smooth CGI perfection, porcelain dolls, realistic human skin, flat illustration, invisible fingerprints, sharp low-poly facets and glossy plastic toys.
```

## 13｜像素藝術（Pixel Art）

預定輸出：`13-pixel-art.png`

```text
Rebuild the character as authentic 16-bit pixel art. Use a deliberately low-resolution bust sprite, clearly visible square pixels, crisp pixel clusters, a strict limited white-blue-black-gold palette, selective dithering, one-pixel highlights and zero antialiasing. Simplify hair, ears, bows and jewelry into readable blocky icons without losing identity. Background: a tiled retro ice-castle game scene using the same pixel grid. Avoid smooth curves, blurry pixels, high-resolution anatomy, random noise, vector graphics, painterly texture and glossy 3D rendering.
```

## 14｜普普藝術（Pop Art）

預定輸出：`14-pop-art.png`

```text
Reinterpret the character as bold mid-century Pop Art. Use very thick clean black comic contours, large flat cobalt-blue, white, pink, black and golden-yellow color blocks, dense regular Ben-Day halftone dots in shadows, simplified graphic highlights and crisp screen-print registration. Background: a saturated primary-color field with oversized dots and a strong radiating starburst. Avoid painterly gradients, realistic materials, watercolor bleeding, subtle pastel-only color, vintage dirty paper, CMYK misregistration, speech balloons and typography.
```

## 15｜彩繪玻璃（Stained Glass）

預定輸出：`15-stained-glass.png`

```text
Rebuild the entire character as a cathedral stained-glass window. Construct the face, hair, ears, bows, jewelry and dress from separate translucent jewel-colored glass pieces divided by thick continuous black lead cames; use saturated transmitted light, bubbles, ripples, glass scratches and simplified geometric facial features. Background: a radiant rose window of blue-white snow-crystal geometry. Avoid painted anime skin, thin normal outlines, ceramic mosaic grout, opaque tiles, smooth gradients and ordinary digital illustration.
```

## 16｜剪紙藝術（Paper Cutout）

預定輸出：`16-paper-cutout.png`

```text
Recreate the character as a layered handmade paper-cut relief. Build hair, skin, ears, bows, gems and costume from many individually cut pieces of textured cardstock with visible fibers, slightly imperfect scissor edges, stacked thickness and soft shadows between every layer. Background: a multi-plane paper winter diorama with receding snowbanks and trees. Avoid flat vector art, folded origami creases, painted brushstrokes, seamless digital edges, plastic sheets and missing layer shadows.
```

## 17｜摺紙藝術（Origami）

預定輸出：`17-origami.png`

```text
Recreate the character as an intricate three-dimensional origami sculpture. Form every feature from folded white, ice-blue, black, pink and gold paper planes with sharp mountain and valley creases, realistic paper thickness, visible tension and crisp angular volume; keep the face friendly and recognizable. Background: folded-paper winter mountains and waves lit from the side to reveal the geometry. Avoid layered flat paper cutouts, rounded clay, smooth plastic, fabric texture, painted illustration and invisible folds.
```

## 18｜賽博龐克霓虹（Cyberpunk Neon）

預定輸出：`18-cyberpunk-neon.png`

```text
Render the character as a cyberpunk neon heroine. Preserve the icy fantasy identity while adding restrained futuristic tailoring, holographic snowflake accents, cyan and magenta rim lighting, luminous blue jewelry, RGB edge separation, wet reflective materials and deep high-contrast digital shadows. Background: a dark rainy megacity alley reduced to neon-sign bokeh, reflective pavement and glowing haze. Avoid bright daylight, retro space rockets, traditional-media texture, flat cel shading, generic military armor and a detailed skyline competing with the character.
```

## 19｜黑暗奇幻史詩（Dark Fantasy Epic）

預定輸出：`19-dark-fantasy-epic.png`

```text
Reinterpret the character as the central heroine of a dark high-fantasy epic. Use realistic but painterly anatomy, wind-swept silver hair, weathered layered white-and-ice-blue ceremonial fabric, tarnished gold fittings, crystalline magic, dramatic storm lighting, volumetric snow and monumental scale; preserve both bows and all core jewelry rather than replacing them with armor. Background: ancient frozen cathedral ruins beneath a violent blue-black sky with distant mountains and shafts of cold light. Avoid cute chibi shapes, bright cheerful anime, cyberpunk neon city, modern technology, clean studio lighting and gratuitous horror or gore.
```

## 20｜童話繪本水粉（Storybook Gouache）

預定輸出：`20-storybook-gouache.png`

```text
Render the character as a warmly hand-painted children's storybook illustration in opaque gouache. Use gently simplified natural proportions, rounded friendly shapes, matte layered color, visible bristle edges, dry-brush texture, coarse paper grain and charming hand-painted irregularities. Background: a whimsical winter story spread with rolling snowy hills, oversized blue plants, a crooked cottage path and softly patterned clouds. Avoid transparent watercolor blooms, glossy anime effects, photorealism, hard vector edges, dark horror lighting and 3D plastic materials.
```
