# SKILL：20 種風格模組（含專屬背景 + 差異化機制）

供 AI_AGENT 讀取。每個風格 = 一次完整的視覺再詮釋（造型、比例、線條、上色、光線、材質、
**專屬背景**），不是對同一張動漫臉套材質濾鏡。20 種彼此一眼可分。

## 佔位符

- `{CHARACTER_DESCRIPTION}`：由 AI_AGENT 從中文翻成英文的角色描述。
- `{FRAMING}`：構圖，預設 `full body, centered`。
- `{POSE}`：姿勢，預設 `natural standing pose`。

## 共通正向提示詞

> Use case: stylized-character illustration. Create exactly one original character solely from this text description: "{CHARACTER_DESCRIPTION}". Composition: {FRAMING}. Pose: {POSE}. Follow every stated identity trait, age, body type, hairstyle, facial feature, clothing, accessory, color and expression precisely; do not invent major elements. Keep the full character clearly inside the frame with readable anatomy as the dominant subject. Apply the selected style module as a complete visual reinterpretation of shape language, proportion, linework, color handling, lighting and material — NOT a superficial texture filter laid over a default anime drawing. Render the character together with the style's own signature background described in the module so the style is instantly recognizable; the background must belong to this style and must never be a generic snowflake ring or repeated vignette. No text, logo, signature or watermark.

## 共通負向提示詞

> extra character, duplicated body, cropped head, cropped feet, missing limbs, extra limbs, malformed hands, unreadable silhouette, identity drift, invented major costume elements, default anime face ignoring the chosen style, superficial texture filter over unchanged anime art, same proportions across every style, generic snowflake ring background, repeated identical vignette across styles, blank background when a signature background is required, text, logo, signature, watermark

---

## 01｜新藝術風格（Art Nouveau）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as an Art Nouveau poster illustration. Reshape the figure with graceful elongated proportions, flowing hair and clothing rhythms, elegant whiplash curves, clean ornamental contours, flat jewel-toned color areas and subtle vintage lithograph texture; weave the character's existing costume details into organic botanical geometry without inventing new identity traits. Signature background: an asymmetrical frame of curling lilies, irises, vines and arched decorative panels that flows around the silhouette as one unified turn-of-the-century composition.

**風格負向模組**

> Art Deco stepped geometry, Bauhaus functional grid, Pop Art halftone dots, thick stained-glass lead lines, generic anime face, photoreal rendering, glossy 3D materials, rigid symmetry, pixel art, hard cel shading

## 02｜巴洛克肖像（Baroque Portrait）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a grand Baroque court portrait with realistic, classically modeled anatomy and a commanding diagonal pose. Use deep layered oil glazes, rich velvet and brocade texture, glowing flesh tones, gilded accents and theatrical tenebrism: one warm directional beam cutting through profound shadow. Preserve the stated clothing and accessories while rendering their materials with ceremonial weight. Signature background: a dim palatial interior with a heavy crimson curtain, a partially lit stone column and distant candle glow emerging from darkness.

**風格負向模組**

> flat graphic poster, Impressionist broken dabs, soft even lighting, hard cel shading, modern anime proportions, neon cyberpunk glow, matte gouache, watercolor blooms, minimalist background, casual contemporary photography

## 03｜印象派（Impressionism）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as an Impressionist plein-air figure study. Keep natural human proportions but dissolve rigid contours into lively broken brushstrokes, adjacent dabs of unmixed color, vibrating warm-and-cool shadows and fleeting sunlight; let optical color mixing and atmosphere describe form rather than black outlines or polished detail. Signature background: a sun-dappled riverside garden with shimmering water, loose foliage and moving patches of colored light painted at the same spontaneous scale as the character.

**風格負向模組**

> Baroque tenebrism, sharp ink contours, smooth digital gradients, hard cel shadows, photoreal detail, flat vector geometry, thick palette-knife impasto, watercolor transparency, neon night lighting, polished anime facial rendering

## 04｜超現實主義（Surrealism）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a meticulously rendered Surrealist dream image. Preserve every recognizable identity trait while transforming the figure's silhouette through one coherent impossible idea — floating fabric becoming clouds, hair flowing into architecture or body planes opening onto a distant landscape — with calm realistic lighting, precise edges and an uncanny scale relationship rather than random fantasy clutter. Signature background: a vast silent dreamscape with an endless horizon, suspended doors and stairs, elongated shadows and a few impossible floating objects under a clear, otherworldly sky.

**風格負向模組**

> ordinary fantasy illustration, cyberpunk neon city, cute anime backdrop, abstract texture filter, chaotic unrelated objects, gore, body horror, flat Pop Art, loose Impressionist brushwork, simple photomontage, generic space scene

## 05｜包浩斯（Bauhaus）

**風格正向模組**

> Rebuild "{CHARACTER_DESCRIPTION}" as a rigorous Bauhaus figure composition. Reduce anatomy and costume into functional circles, rectangles, straight bars and clean arcs while preserving the character's identifying colors and silhouette; use an asymmetric grid, disciplined negative space and a restricted palette of red, yellow, blue, black and warm cream. Keep every edge crisp and mechanically flat, with no decorative texture. Signature background: an offset architectural grid of primary-color planes, black rules and balanced circles that locks the character into a functional modernist poster layout, with no lettering.

**風格負向模組**

> Art Nouveau botanical curves, Art Deco luxury ornament, Op Art vibrating stripes, Pop Art halftone dots, painterly texture, realistic anatomy, 3D volume, gradients, decorative floral border, typography, random geometric clutter

## 06｜中世紀泥金手抄本（Illuminated Manuscript）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a medieval illuminated-manuscript figure on aged parchment. Use flattened hierarchical proportions, elegant dark ink contours, egg-tempera-like mineral pigments, patterned fabric fields, burnished gold-leaf halos and architectural accents, tiny punched-gold details and visibly hand-painted irregularities; preserve the character's identity in the simplified courtly pose. Signature background: a full parchment folio with a gilded Gothic arch, dense vine-and-flower marginalia, small heraldic creatures and luminous gold corners, but no readable text.

**風格負向模組**

> realistic perspective, Renaissance oil depth, stained-glass lead cames, modern anime shading, glossy 3D gold, photoreal materials, minimalist blank page, watercolor wash, printed vector precision, readable letters or calligraphy

## 07｜彩繪玻璃（Stained Glass）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a stained-glass figure built from separate translucent colored-glass pieces divided by thick black lead cames, with a continuous lead outline around the body; saturated jewel colors, visible bubbles, ripples and transmitted light; facial features simplified into readable glass geometry. Signature background: a leaded glass rose-window field with cathedral light rays streaming through the panels behind the figure.

**風格負向模組**

> painted anime skin, thin ordinary outlines, opaque flat surfaces, smooth digital gradients, watercolor paper, photoreal portrait, missing lead lines, mosaic grout lines, opaque ceramic tiles

## 08｜黑色電影（Film Noir）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a classic 1940s film-noir character in stark black-and-white. Use a realistic period-cinema silhouette, sharp tailored shape language adapted from the stated outfit, hard low-key lighting, crushed blacks, silver-gelatin grain, smoky highlights and dramatic venetian-blind shadows cutting across the face and body; keep color entirely absent. Signature background: a rain-streaked detective-office window opening onto a dim alley, with one desk-lamp pool, drifting cigarette-like haze and wet reflections rendered only in grayscale.

**風格負向模組**

> color image, cyan-magenta neon, cyberpunk technology, soft beauty lighting, cheerful high-key scene, anime cel shading, painterly color, sepia-only vintage photo, flat graphic poster, visible modern city billboards

## 09｜普普藝術（Pop Art）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as bold mid-century pop-art design: thick clean black comic contours, large FLAT primary-color blocks, dense even Ben-Day halftone dots in shadows, simplified graphic highlights and crisp screen-print registration; an iconic graphic pose and simplified graphic shape language. Signature background: a flat saturated primary color-block field with big regular Ben-Day dots and a bold radiating starburst behind the figure.

**風格負向模組**

> painterly gradients, photorealism, subtle pastel-only palette, watercolor bleeding, 3D materials, thin delicate outlines, worn pulp-paper texture, CMYK misregistration, speech bubbles, typography

## 10｜賽璐璐動畫（Cel Shading）

**風格正向模組**

> Render "{CHARACTER_DESCRIPTION}" as an early hand-painted 2D cel-animation character: clean inked outlines, smooth FLAT color fills, a strict TWO-TONE hard-edged shadow system, small solid highlight shapes and subtle analog film grain; no soft gradient shading anywhere. Signature background: a simple flat hand-painted animation backdrop — a plain gradient sky or muted flat-color set piece, clearly cel-painted.

**風格負向模組**

> soft gradient shadows, atmospheric bokeh, glow bloom, painterly brushwork, photorealism, 3D rendering, subsurface scattering, watercolor texture, semi-realistic modern anime rendering

## 11｜工筆重彩（Gongbi Painting）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a traditional gongbi heavy-color painting on fine silk. Use precise controlled ink outlines of even delicacy, graceful elongated proportions, meticulously layered mineral pigments, restrained shading, intricate textile patterns and fine individual strands of hair; every contour should feel patiently drawn rather than loosely brushed. Signature background: an elegant silk garden arrangement of flowering peonies, decorative rocks, a small bird and stylized cloud bands, balanced with intentional open space and painted at the same exacting level.

**風格負向模組**

> spontaneous ink wash, splashed ink, wet diffusion, loose calligraphic strokes, Japanese woodblock print, modern anime face, photorealistic depth, oil impasto, watercolor blooms, black-and-white-only painting, careless background detail

## 12｜表現主義油氈版畫（Expressionist Linocut）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as an Expressionist linocut print. Distort the proportions into a tense, angular yet recognizable silhouette; carve the image from forceful black masses, jagged white gouges, rough knife chatter and intentionally uneven ink transfer on fibrous paper, using black and off-white with at most one harsh accent color. Signature background: radiating carved slashes, warped urban walls and compressed diagonal shadows that amplify the character's emotion without becoming a literal detailed scene.

**風格負向模組**

> delicate copperplate cross-hatching, smooth vector lines, polished comic inking, soft pencil shading, full-spectrum color, photoreal anatomy, glossy digital painting, regular halftone dots, stained-glass panels, clean laser-cut edges

## 13｜摺紙藝術（Origami）

**風格正向模組**

> Recreate "{CHARACTER_DESCRIPTION}" as an intricate three-dimensional origami paper character: every feature from folded paper planes with sharp geometric creases, visible valley and mountain folds, controlled paper tension and realistic paper thickness, in colored or foil papers matching the description. Signature background: folded paper landscape planes — geometric mountains or waves made of the same creased paper, softly lit to reveal folds.

**風格負向模組**

> flat paper cutout, layered flat cardstock, painted illustration, soft clay, rounded plastic forms, fabric texture, invisible fold lines, melted geometry, photoreal skin

## 14｜裝飾藝術（Art Deco）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a glamorous Art Deco fashion figure. Use statuesque streamlined proportions, sharp symmetrical contours, stepped geometric costume rhythms adapted from the stated outfit, polished black, ivory, emerald and gold color blocking, lacquer-like surfaces and restrained metallic highlights. Signature background: a perfectly symmetrical 1920s grand-lobby composition of stepped arches, vertical gold rays, fan motifs and a dark marble floor, framing the character like a luxury poster with no lettering.

**風格負向模組**

> Art Nouveau vines and whiplash curves, Bauhaus primary-color grid, Pop Art halftone dots, ancient Egyptian costume invention, soft painterly edges, casual asymmetry, origami folds, medieval ornament, photoreal modern lobby, typography

## 15｜立體主義（Cubism）

**風格正向模組**

> Reconstruct "{CHARACTER_DESCRIPTION}" as a Cubist figure assembled from intersecting angular planes and simultaneous viewpoints. Keep the hairstyle, facial markers, costume colors and accessories identifiable while showing the face and body from multiple angles at once; use fractured contours, compressed space, faceted ochre / umber / slate-blue color planes and selective newspaper-like collage texture without readable text. Signature background: a shallow fragmented studio of tilted tabletop, chair and architectural planes that interlock with the figure into one analytical composition.

**風格負向模組**

> three-dimensional origami object, low-poly CGI, realistic single-point perspective, smooth anatomy, cel-shaded anime, glossy facets, stained glass, random kaleidoscope symmetry, fully abstract unrecognizable character, readable newspaper text

## 16｜復古未來主義（Retro-Futurism）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as an optimistic 1950s retro-futurist magazine illustration. Preserve the stated identity and outfit while streamlining their shapes into space-age curves, chrome piping and atomic-era design accents; use hand-airbrushed gouache, clean painted edges, warm cream, rocket red and turquoise, bright studio highlights and slightly idealized mid-century proportions. Signature background: a cheerful moon-base panorama with a ringed planet, sweeping orbital arcs, bubble architecture and one elegant silver rocket beneath a star-speckled gradient sky.

**風格負向模組**

> dark cyberpunk alley, magenta-cyan neon, dystopian grime, modern hard-surface military sci-fi, photoreal spaceship, Pop Art halftone dots, 1980s synthwave grid, medieval fantasy, gloomy noir lighting, excessive mechanical costume invention

## 17｜賽博龐克霓虹（Cyberpunk Neon）

**風格正向模組**

> Render "{CHARACTER_DESCRIPTION}" as a cyberpunk neon character: self-illuminated neon rim lighting in magenta / cyan / electric blue, glowing accents and holographic trim, RGB chromatic-aberration edges, wet reflective highlights and deep shadowed forms; a moody high-contrast digital paint finish. Signature background: a dark rainy alley reduced to soft neon-sign bokeh and glowing haze — atmospheric and out of focus so the glowing figure stays dominant.

**風格負向模組**

> flat daylight, pastel soft palette, vaporwave grid horizon, roman statue, photoreal mundane clothing, matte lighting, sharp detailed city skyline competing with the figure, traditional media texture

## 18｜童話繪本水粉（Storybook Gouache）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as a warmly hand-painted storybook gouache character. Use gently simplified natural proportions, expressive rounded shapes, opaque matte color layers, visible bristle edges, dry-brush texture, subtle paper grain and small hand-painted irregularities; retain all stated identity traits while making the figure feel approachable and timeless rather than anime-like. Signature background: a whimsical painted storybook landscape of rolling hills, oversized plants, a crooked cottage path and softly patterned clouds, arranged like a full-page children's-book spread.

**風格負向模組**

> transparent watercolor washes, wet-on-wet blooms, hard cel shading, glossy digital anime, photoreal rendering, 3D plastic, dark horror mood, neon cyberpunk light, razor-clean vector edges, blank studio background

## 19｜樸素民間藝術（Naive Folk Art）

**風格正向模組**

> Reinterpret "{CHARACTER_DESCRIPTION}" as naive folk art painted by hand on a matte wood or coarse paper ground. Use a frontal flattened pose, deliberately simple anatomy, imperfect symmetry, bold solid colors, charming uneven contours and repeated regional-style flowers, leaves, birds and small geometric marks; preserve the character's key traits through clear symbolic shapes rather than realistic modeling. Signature background: a densely decorated folk village and garden border with tiny houses, trees, suns, animals and repeating floral bands surrounding the central figure.

**風格負向模組**

> polished academic realism, accurate linear perspective, glossy vector precision, Art Nouveau elegant curves, medieval gold leaf, anime eyes, cute chibi proportions, photoreal textures, smooth gradients, minimalist empty background

## 20｜歐普藝術（Op Art）

**風格正向模組**

> Rebuild "{CHARACTER_DESCRIPTION}" as a high-impact Op Art composition. Define the recognizable silhouette, face, hair and costume through mathematically repeated black-and-white bands, warped checker fields, concentric curves and precise figure-ground reversals that create controlled optical vibration; use no modeled volume and, at most, one tiny accent color tied to an identity detail. Signature background: a seamless but carefully separated optical tunnel of expanding waves and alternating geometric bands that bends around the figure without swallowing its outline.

**風格負向模組**

> Pop Art Ben-Day dots, comic contours, Bauhaus primary-color blocks, colorful psychedelic illustration, random moire artifacts, 3D shading, realistic anatomy modeling, painterly brush texture, cyberpunk glow, unreadable merged silhouette

---

## 擴充風格

在末尾 append，套四欄結構（編號｜名稱｜正向模組｜負向模組）。每個新風格務必寫足三件事：
①造型/比例重塑句（不只換材質）②專屬且不與他人重複的簽名背景 ③鄰居互斥負向詞
（列出它最容易被誤畫成的既有風格，寫進負向擋掉）。
